

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'nats/version'

spec = Gem::Specification.new do |s|
  s.name = 'nats'
  s.version = NATS::VERSION
  s.summary = 'NATS is an open-source, high-performance, lightweight cloud messaging system.'
  s.homepage = 'https://nats.io'
  s.description = 'NATS is an open-source, high-performance, lightweight cloud messaging system.'
  s.licenses = ['MIT']
  s.has_rdoc = true

  s.authors = ['Derek Collison']
  s.email = ['derek.collison@gmail.com']

  s.add_dependency('eventmachine', '~> 1.0', '= 1.0.7')
  s.add_dependency('json_pure', '~> 1.8', '>= 1.8.1')
  s.add_dependency('daemons', '~> 1.1', '>= 1.2.2')

  s.require_paths = ['lib']
  s.bindir = 'bin'
  s.executables = ['nats-pub', 'nats-sub', 'nats-queue', 'nats-top', 'nats-request']

  s.files = %w[
    COPYING
    README.md
    HISTORY.md
    nats.gemspec
    Rakefile
    bin/nats-sub
    bin/nats-pub
    bin/nats-queue
    bin/nats-top
    bin/nats-request
    lib/nats/client.rb
    lib/nats/version.rb
    lib/nats/ext/bytesize.rb
    lib/nats/ext/em.rb
    lib/nats/ext/json.rb
  ]
end
