# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flickr_img_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "flickr_img_parser"
  spec.version       = FlickrImgParser::VERSION
  spec.authors       = ["Szilard Magyar"]
  spec.email         = ["szilard@gmail.com"]

  spec.summary       = %q{Getting Flickr images and saving them into a file.}
  spec.description   = %q{Flickr_img_parser is  command line tool with which you can make an API request to Flickr and save the response as a collage in an image file}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "httparty", "~> 0.14.0"
  spec.add_dependency "thor", "~> 0.19.4"
end