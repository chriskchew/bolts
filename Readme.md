Introduction
============

Bolts has the lofty goal of creating a nice OTP application that envelops the complexity of creating Erlang OTP applications which not only need to cluster to scale horizontally, but also require the capability of withstanding online, rolling upgrades where both the code and the Mnesia schemas change.

Bolts will:

* Make clustering as simple as providing a module with pre-defined callbacks
* Allow new nodes to be introduced to an existing cluster
* Help remove a node from an mnesia cluster so it can be upgraded as a "pioneer"
* Sync existing data from the old cluster to the new cluster's "pioneer" during the upgrade process
* Help migrate all remaining nodes from the old cluster to the new
* All the while managing mnesia schema replication and versioned intra-cluster messages.

Getting Started
===============

Helping
=======
