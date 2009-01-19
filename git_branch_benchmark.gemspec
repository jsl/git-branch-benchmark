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
		"README",
		"bin/gbb",
		"git_branch_benchmark.gemspec"]
  s.test_files = [ ]
  s.rdoc_options = ["--main", "README"]
  s.executables = 'gbb'
  s.extra_rdoc_files = ["README"]
  s.add_dependency("ruby-git", ["> 0.0.0"])
  s.add_dependency("curb", ["> 0.0.0"])
end
