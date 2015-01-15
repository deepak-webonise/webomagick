require './lib/webomagick/version'
Gem::Specification.new do |s|
  s.name        = 'webomagick'
  s.version     = Webomagick::VERSION
  s.date        = '2015-01-06'
  s.summary     = 'Webomagick'
  s.description = 'compress and resize images,'
  s.authors     = ['Webonators 2015']
  s.email       = 'deepak.kabbur@weboniselab.com'
  s.files       = Dir.glob("{bin,lib,config}/**/*")
  s.require_path = 'lib'
  s.bindir = 'bin'
  s.homepage    =
    'http://rubygems.org/gems/webomagick'
  s.license       = 'MIT'
  s.post_install_message = '******************************' +
                              'Thank You for installing' +
                           '******************************'
end
