Gem::Specification.new do |s|
  s.name        = 'ss_generator'
  s.version     = '0.1.0'
  s.licenses    = ['MIT']
  s.summary     = "Generate your standard folders and files sytem"
  s.description = "Much longer explanation of the example!"
  # s.homepage    = 'https://rubygems.org/gems/example'
  s.authors     = ["Sofia Sousa"]
  s.email       = 'csofiamsousa@gmail.com'
  
  s.files       = Dir["{bin,lib,packages}/**/**/*"] + %w{LICENSE README.md}
  s.executables = ['ss_generator']
end