Gem::Specification.new do |s|
  s.name        = 'redisstore'
  s.version     = '0.1.1'
  s.date        = Time.now.strftime("%Y-%m-%d")

  s.summary     = 'Redis Store for BasicCache'
  s.description = "Stores cached values in Redis"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/redisstore'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split

  s.add_dependency 'basiccache'
  s.add_dependency 'redis'

  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'travis-lint'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'fuubar'
  s.add_development_dependency 'parser', '~> 2.1.0.pre1'
end
