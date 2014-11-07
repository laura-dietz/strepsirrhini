

strepsirrhini
=============

Strepsirrhini, a modular composable toolkit in scala for retrieval, reranking, and expansion with and without entity annotations.

The main contribution of this project is a set of independent modules that are easy to string together in an information retrieval application to your liking. Different components are in different github-repositories to minimize clutter of dependencies if only a subset of the components is required (check out components from the respective repository). If you want the whole package, checkout this project and compile with maven, it will automatically compile all components into one jar.

Components
----------

- [strepsi-tools](http://github.com/laura-dietz/strepsi-tools): basic utilities for sequence and map processing, used by all other strepsirrhini components.
- [strepsimur](http://github.com/laura-dietz/strepsimur): scala integration with [Galago](lemur.org/galago) from Lemur project
- [strepsirank](https://github.com/laura-dietz/strepsirank): discriminative learning-to-rank component (useful for feature-based re-ranking of galago output). Forked from RankLib project.
- [strepsipand](https://github.com/laura-dietz/strepsipand): several query expansion models or base classes to implement your own relevance model variant.
- [strepsent](https://github.com/laura-dietz/strepsent): parsing of different entity linking annotations, including Google's FACC1 annotations and output of [KB-Bridge](http://ciir.cs.umass.edu/~jdalton/kbbridge/).


All these sub-projects can stand on their own (they only need a dependency on strepsitools). 
They are available individually and together.




Maven dependency through Nexus
-----------------------------------------
All sub-projects are available through our Nexus server

        <repository>
            <id>edu.umass.ciir.releases</id>
            <name>CIIR Nexus Releases</name>
            <url>http://scm-ciir.cs.umass.edu:8080/nexus/content/repositories/releases/</url>
        </repository>

Dependency: 

      <properties>
        <scala.version>2.10.2</scala.version>
        <javaVersion>1.6</javaVersion>
        <lemur.version>3.7-SNAPSHOT</lemur.version>
        <strepsi.version>1.4</strepsi.version>
      </properties>
      
      <dependency>
          <groupId>edu.umass.ciir</groupId>
          <artifactId>strepsirrhine</artifactId>
          <version>s${scala.version}-g${lemur.version}-${strepsi.version}</version>
      </dependency>



Building from source
------------

compile with maven:
    mvn compile assembly:single

This produces one uber-jar .../target/strepsirrhine-*-with-dependencies.jar containing all dependencies required

To produce individual jars, follow the instructions in the respective component repositories.



Download
--------------
You can download the Jars directly from my web page
  [strepsirrhini](http://ciir.cs.umass.edu/~dietz/strepsirrhine/strepsirrhine-s2.10.2-g3.7-SNAPSHOT-1.4-jar-with-dependencies.jar)

  [sources](http://ciir.cs.umass.edu/~dietz/strepsirrhine/sources.zip)


Ethymology
===========
strepsirrhine
    n.
    Any member of the clade Strepsirrhini, one of the two suborders of primates.

More at Wordnik from Wiktionary, Creative Commons Attribution/Share-Alike License

