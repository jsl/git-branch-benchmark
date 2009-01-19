require 'rubygems'
require 'curb'
require 'git'
require 'benchmark'

class GitBranchBenchmark
  VERSION = 0.1

  attr_accessor :urls, :branches, :verbosity

  def initialize
    @branches = []
    @urls = []
    @verbosity = 0
    
    @git = Git.open('.')
    @original_branch = @git.branch.name
  end

  # When called with a block, runs the block code in each branch given.  If
  # we were only initialized with one branch, adds the current branch to the
  # list of branches to test against.  Restores state by checking out original
  # branch after execution, and returns hash of time results on each branch.
  def branch_realtime_measure
    times = {}

    @branches.each do |branch|
      @git.checkout(branch)
      times[branch] = Benchmark.realtime { yield }
      puts "Operation on #{branch} took #{times[branch]} seconds." if @verbosity >= 1
    end

    @git.checkout(@original_branch)

    times
  end

  def run!
    @branches << @original_branch unless @branches.size >= 2

    results = @branches.inject({}) {|result, element| result.merge({ element => [] })}
    
    @urls.each do |url|
      
      branch_realtime_measure { Curl::Easy.perform(url) }.each_pair do |k, v|
        results[k] << v
      end
    end

    print_stats(results)
  end

  def avg(ary)
    sum = eval ary.join('+')
    sum.to_f / ary.size
  end

  # Prints stats from results in input hash
  def print_stats(times)
    puts "Results are for test with #{@urls.size} urls.\n\n"
    
    @branches.each do |b|
      puts "Avg execution time for branch #{b}: #{avg(times[b])}"
    end
  end
end