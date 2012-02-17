# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_cybersource_gateway'
  s.version     = '0.70.2'
  s.summary     = 'This is implementation of CyberSource Payment gateway into Spree'
  s.description = 'This is implementation of CyberSource Payment gateway into Spree'
  s.required_ruby_version = '>= 1.8.7'
  s.author            = 'Jay @ Rortechie'
  s.email             = 'dev@rortechie.com'
  s.homepage          = 'http://www.rortechie.com'
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 0.70.2'
  s.add_development_dependency 'rspec-rails'
end

