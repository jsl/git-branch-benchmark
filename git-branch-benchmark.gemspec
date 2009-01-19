Gem::Specification.new do |s|
  s.name     = "git_branch_benchmark"
  s.version  = "0.1"
  s.date     = "2009-01-19"
  s.summary  = "Tool for git branch benchmarking"
  s.email    = "justin@phq.org"
  s.homepage = "http://github.com/jsl/git_branch_benchmark"
  s.description = "GitBrachBenchMark is a tool for testing performance of code in different git branches."
  s.has_rdoc = true
  s.authors  = ["Justin Leitgeb"]
  s.files    = ["Rakefile",
		"lib/git_branch_benchmark.rb",
		"README.markdown",
		"bin/gbb",
		"git_branch_benchmark.gemspec"]
  s.test_files = [ ]
  s.rdoc_options = ["--main", "README.markdown"]
  s.executables = 'gbb'
  s.extra_rdoc_files = ["README.markdown"]
  s.add_dependency("git", ["> 0.0.0"])
  s.add_dependency("curb", ["> 0.0.0"])
end
