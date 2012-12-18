Gem::Specification.new do |s|
  s.name = "ruby-html5"
  s.version = "0.1.0"
  #s.date = Time.now.to_s
 

  s.summary = "HTML5 desktop framework for ruby"

  s.authors = ["Matt Mesanko"]
  s.email = ["tulnor@linuxwaves.com"]
  s.homepage = "http://www.github.com/ppibburr/ruby-html5"
  s.has_rdoc = 'yard'
  s.rdoc_options = ["--main", "README.rdoc"]

  s.files = Dir['{lib,test,tasks,samples}/**/**/*', "*.rdoc", "Rakefile"] & `git ls-files -z`.split("\0")
  p s.files
  #s.extra_rdoc_files = ["README.rdoc", "TODO.rdoc"]
  s.test_files = `git ls-files -z -- test`.split("\0")

  s.add_runtime_dependency(%q<ffi-webkit-js>, ["~> 0.0.1"])
  s.add_runtime_dependency(%q<ffi-webkit-dom>, ["~> 0.0.1"])
  
  s.require_paths = ["lib"]
end
