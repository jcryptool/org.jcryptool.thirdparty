# JCrypTool third party libraries target platform components

## License notice

This project is for packaging third-party libraries. However, these dependencies are only present as group/artifact/version tuples in the pom.xml files. They get eventually resolved, and repackaged by JCrypTool CI and made available through Eclipse P2 update sites so the [core repository](https://github.com/jcryptool/core) can link them via the Eclipse RCP "Target platform" feature. Please refer to that repository for how we license JCT code. In this repository, we specifically express no notion of ownership or copyright to the libraries referenced by and eventually repackaged through the Maven pom.xml files. All rights when in doubt are with the authors of these libraries.

## Purpose

This project serves the [JCrypTool (JCT) project](https://github.com/jcryptool/core). JCT is an Eclipse Rich Client Platform application. It requires Java artifacts (JARs) to be provided as OSGi bundles. Often, these can be found on the [Eclipse Orbit](https://www.eclipse.org/orbit/) update sites. However, some times this is not enough. Examples for which this project was initially conceived are:

- [Migration from Java 8 to Java 11](bundles/org.jcryptool.thirdparty.m2bundle.jaxb/README-why.md): We missed javax.xml functionality which was removed from the JDK between those versions. The Orbit bundles were outdated (javax.xml 2.2), however, we required an API from 2.3 upward.
- Bugfixes of Eclipse platform libraries (as incubation before they ideally end up upstream and we don't need them anymore)

Another use case is the delivery of jlink-generated JRE features to not carry their raw binaries around in our source repositories.

To that end, two solutions are possible: 

1) build and package those JARs and features "by hand" and keep those manually-generated artifacts in our core repository
2) depend on Maven to do all this work for us with mechanical repeatability.

Now, 1) is a manual and laborious process for each new artifact or update thereof and prone to errors. 2) is of course desirable, but requires a LOT of pom.xml files.

For 2), many ways seem possible with what the Eclipse PDE with its Maven project natures seems to suggest. For multiple reasons, all but one are unsatisfactory if one wants to use a CI server and the Eclipse PDE build to produce near-identical output. This is best explained [here](https://web.archive.org/web/20181018213714/http://www.bernd-adamowicz.de:80/105/automated-build-of-rcp-artifacts-with-maven-tycho-a-field-report-part-1/) in an analysis of five approaches and [here](https://github.com/reficio/p2-maven-plugin). In a nutshell: 

- we need Maven Tycho to build our product, pom.xml based
- there are built-in solutions to work with Maven artifacts in an Eclipse product Tycho build
- ... **but** these "solutions" are merely tacked on hastily to enable local workflows and are not suitable for deploying a product in a sane way and fall apart when leaving either the workspace PDE build or the Maven reactor build.

In the linked analysis articles, a solution emerges via multiple Maven plugins. As a result, this project implements this approach in what I think is the best, most sane and principled way to go about it.

## Basic structure of how it works

Just a very rough overview, because it might still be subject to change:

- The directory **projects** hosts the *definitions* of what we want to deliver in p2 update site
- The directory **releng** hosts the definitions of the p2 update sites
- The root **pom.xml** serves as parent to all other pom.xml -- except for releng/org.jcryptool.thirdparty.configuration/pom.xml, which is the uber-top pom.xml with the central configuration values which go everywhere.
- We build currently two p2 update sites: 
    - m2bundle -- this resolves and repackages m2 `<dependencies>` fully automated as fat jars, complete with all `META-INF` metadata  into `releng/o.j.t.m2bundle.p2/target/repository`. This p2 site gets built and published currently through the scripts `bin/build-all` and `bin/publish-p2-m2bundle`; please refer to these bash scripts for the details. The build and packaging is achieved using the *Apache Felix* plug-in and the the excellent [**p2-maven-plugin**](https://github.com/reficio/p2-maven-plugin) by @reficio.
    - jre -- this builds three JRE features and publishes them as update site. For this task, the tools that come with Tycho were completely sufficient, as opposed to m2bundle. This p2 site gets built and published currently through the scripts `bin/build-all` and `bin/publish-p2-jre`. Please refer to these bash scripts for the details.

# Used software

- [**Apache Maven**](https://maven.apache.org/) - no introduction needed
- [**Apache Felix Maven plugin**](https://felix.apache.org/) - packages a Maven project *including its dependencies* as a bundle and additionally [shades](https://maven.apache.org/plugins/maven-shade-plugin/) the packaged dependencies.
- [**p2-maven-plugin**](https://github.com/reficio/p2-maven-plugin) - resolves Maven artifacts (as generated by the Felix plugin) and packages them as an Eclipse P2 update site
- [**Eclipse Jetty Maven plugin**](https://www.eclipse.org/jetty/) - Hosts the p2 update site locally (e.g. https://localhost:8080/site)

# Related Tutorials

- [Tutorial on Eclipse OSGi mechanisms and Tycho](https://www.vogella.com/tutorials/EclipseTycho/article.html)
- [The excellent writeup in the p2-maven-plugin README]()
- [Tutorial on deploying with p2-maven-plugin, including a few advanced Maven configuration tricks](https://www.vogella.com/tutorials/EclipseJarToPlugin/article.html#convert-jar-files-to-osgi-bundles-with-the-p2-maven-plugin)
