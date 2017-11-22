# -*- encoding: utf-8 -*-
# stub: image_magick 0.1.9 ruby lib

Gem::Specification.new do |s|
  s.name = "image_magick".freeze
  s.version = "0.1.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Timothy Nordloh".freeze]
  s.bindir = "exe".freeze
  s.date = "2015-04-21"
  s.description = "  This is a very trivial implementation of an interface for Image Magick.  It\n  relies on the binaries for Image Magic (identify and convert) to be available\n  on the system, and to be in the $PATH.  I wrote this for my spouse, who needed\n  to resize scanned artwork for various art websites, such as 'etsy', 'artpal',\n  and 'art.com'. \n\n  check out the readme on the github homepage for this gem, to get details on\n  usage and limitations.\n".freeze
  s.email = ["tnordloh@gmail.com".freeze]
  s.executables = ["bulk_shrink".freeze, "shrink".freeze]
  s.files = ["exe/bulk_shrink".freeze, "exe/shrink".freeze]
  s.homepage = "https://github.com/tnordloh/image_magick".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "A simple interface on Image Magick, for shrinking images.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.9"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.9"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.9"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
