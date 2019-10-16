# Why do we need these components?

TODO: It might be worthwhile to document the insights gathered while migrating to Java 11 with JCT. 

[Java 11 migration efforts in the code base can be tracked here](https://github.com/simlei/core/compare/simlei:29ef5f9333da72cb27598f3475440c60ff01c3e7...simlei:java11-migration)

# Bookmark list of this process

## Documenting the JAXB issue best (why 2.2 on Eclipse Orbit doesn't suffice)

- Corpus delicti: https://github.com/javaee/jaxb-spec/blob/b25f7217b22d0ff17e6f160f28b1521399fc42f6/jaxb-api/src/main/java/javax/xml/bind/ContextFinder.java#L85
- https://github.com/eclipse-ee4j/jaxb-api/issues/78
- https://github.com/eclipse-ee4j/jaxb-api/blob/master/jaxb-api/src/main/java/javax/xml/bind/ContextFinder.java
- https://github.com/eclipse-ee4j/jaxb-api/commit/0d1f39de245ccf7fd72a8643b3db869a60ff7d5b#diff-8de9574f0a7d4a295a6474463344dd56

## Tycho & Maven related

- https://wiki.eclipse.org/Tycho/Target_Platform
- https://github.com/eclipse-ee4j/jaxb-api/issues/78
- https://maven.apache.org/plugins/maven-dependency-plugin/examples/using-dependencies-sources.html
- https://www.vogella.com/tutorials/EclipseTycho/article.html
- https://www.vogella.com/tutorials/EclipseJarToPlugin/article.html
- https://felix.apache.org/components/bundle-plugin/instructions-mojo.html#createDependencyReducedPom
