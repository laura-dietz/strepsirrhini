strepsirrhini
=============

Strepsirrhini, a modular composable toolkit in scala for retrieval, reranking, and expansion with and without entity annotations.

The main contribution of this project is a set of independent modules that are easy to string together in an information retrieval application to your liking. Different components are in different github-repositories to minimize clutter of dependencies if only a subset of the components is required (check out components from the respective repository). If you want the whole package, checkout this project and compile with maven, it will automatically compile all components into one jar.

Components
----------

- strepsi-tools: basic utilities for sequence and map processing, used by all other strepsirrhini components.
- strepsimur: scala integration with Galago from Lemur project
- strepsirank: discriminative learning-to-rank component (useful for feature-based re-ranking of galago output). Forked from RankLib project.
- strepsipand: several query expansion models or base classes to implement your own relevance model variant.
- strepsent: parsing of different entity linking annotations, including Google's FACC1 annptations and output of KB-Bridge.


Installation
------------

compile with maven:
    mvn compile assembly:single

This produces one uber-jar .../target/strepsirrhine-s2.10.2-g3.5-1.2-with-dependencies.jar containing all dependencies required

To produce individual jars, follow the instructions in the respective component repositories.
