$:.push File.expand_path('../lib', __FILE__)
require 'iso8601/version'

Gem::Specification.new do |s|
  s.name = 'iso8601-basic'
  s.version = ISO8601::VERSION
  s.date = Time.now.strftime('%Y-%m-%d')
  s.authors = ['Oliver Morgan']
  s.email = 'olly@ticketinghub.com'
  s.homepage = 'https://github.com/ticketinghub/iso8601-basic'
  s.description = s.summary = "Very basic implementation of the ISO8601 spec - http://en.wikipedia.org/wiki/ISO_8601"
  s.license = 'MIT'

  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end