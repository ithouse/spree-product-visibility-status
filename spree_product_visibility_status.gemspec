Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_visibility_status'
  s.version     = '1.0.0'
  s.summary     = 'Add gem summary here'
  s.required_ruby_version = '>= 1.8.7'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.40.2')
end
