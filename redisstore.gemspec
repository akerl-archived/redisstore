Gem::Specification.new do |s|
  s.name        = 'redisstore'
  s.version     = '1.0.0'
  s.date        = Time.now.strftime("%Y-%m-%d")

  s.summary     = 'Redis Store for BasicCache'
  s.description = "Stores cached values in Redis"
  s.authors     = ['Les Aker']
  s.email       = 'me@lesaker.org'
  s.homepage    = 'https://github.com/akerl/redisstore'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split
  s.test_files  = `git ls-files spec/*`.split

  s.add_dependency 'basiccache', '~> 1.0.0'
  s.add_dependency 'redis', '~> 3.2.0'

  s.add_development_dependency 'rubocop', '~> 0.35.0'
  s.add_development_dependency 'rake', '~> 10.4.0'
  s.add_development_dependency 'codecov', '~> 0.1.1'
  s.add_development_dependency 'rspec', '~> 3.3.0'
  s.add_development_dependency 'fuubar', '~> 2.0.0'
end
