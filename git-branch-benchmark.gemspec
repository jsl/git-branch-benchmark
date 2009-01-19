Gem::Specification.new do |s|
  s.name     = "git-branch-benchmark"
  s.version  = "0.2"
  s.date     = "2009-01-19"
  s.summary  = "Tool for git branch benchmarking"
  s.email    = "justin@phq.org"
  s.homepage = "http://github.com/jsl/git-branch-benchmark"
  s.description = "GitBrachBenchMark is a tool for testing performance of code in different git branches."
  s.has_rdoc = true
  s.authors  = ["Justin Leitgeb"]
  s.files    = ["Rakefile",
		"lib/git_branch_benchmark.rb",
		"README.markdown",
		"bin/gbb",
		"git-branch-benchmark.gemspec"]
  s.test_files = [ ]
  s.rdoc_options = ["--main"]
  s.executables = 'gbb'
  s.add_dependency("git", ["> 0.0.0"])
  s.add_dependency("curb", ["> 0.0.0"])
end
