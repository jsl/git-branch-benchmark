GitBranchBenchmark
==================

GitBranchBenchmark is used for testing the performance of code in two different
branches.  Currently it is only able to be used to compare the execution time
of different branches by requesting a URL on each.

Project Status
--------------

This is really just quick prototype code to be expanded later, though it may
be useful in its current state.  Libraries and command-line options may change
in the near future.

Installation
------------

sudo gem install git-branch-benchmark

Usage Examples
--------------


1. gbb -b test2 -u http://localhost:3000/test -u http://localhost:3000/test2

   tests the current branch against branch 'test2' and outputs average times for
   both tests.

2. gbb -b test1 -b test2 -u http://localhost:3000/test

   tests the url given in branch 'test1' and 'test2', outputting the average times
   for execution in both branches

Notes
-----

If one branch is given on the command line, gbb assumes that is the 'other' branch,
and that the current branch should also be tested.  If two branch options are given,
the current branch isn't added to the list of branches to test.

Todo
----

1. The GitBranchBenchmark library should be a thin wrapper over the stdlib 'benchmark'
   suite, enabling it to compare the execution of blocks of code in different git
   branches.

2. Add specs

