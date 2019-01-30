load './lib/too_stable.rb'

Gem::Specification.new do |s|
  s.name        = 'too_stable'
  s.version     = TooStable.version
  s.licenses    = ['MIT']
  s.summary     = "Sometimes your stuff works a bit too well"
  s.description = "Seriously why make things that always work?"
  s.authors     = ["swarley"]
  s.email       = 'matt@swarley.xyz'
  s.files       = ["lib/too_stable.rb"]
  s.homepage    = 'https://github.com/swarley/too_stable'
  s.metadata    = { "source_code_uri" => "https://github.com/swarley/too_stable" }
end