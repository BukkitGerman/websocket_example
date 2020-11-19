# -*- encoding: utf-8 -*-
# stub: websocket-eventmachine-server 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "websocket-eventmachine-server".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Bernard Potocki".freeze]
  s.date = "2012-12-20"
  s.description = "WebSocket server for Ruby".freeze
  s.email = ["bernard.potocki@imanel.org".freeze]
  s.homepage = "http://github.com/imanel/websocket-eventmachine-server".freeze
  s.rubygems_version = "3.0.3".freeze
  s.summary = "WebSocket server for Ruby".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<websocket-eventmachine-base>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<websocket-eventmachine-base>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<websocket-eventmachine-base>.freeze, ["~> 1.0"])
  end
end