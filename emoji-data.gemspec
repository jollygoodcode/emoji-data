# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "emoji/data/version"

Gem::Specification.new do |spec|
  spec.name          = "emoji-data"
  spec.version       = Emoji::Data::VERSION
  spec.authors       = ["JuanitoFatas"]
  spec.email         = ["katehuang0320@gmail.com"]

  spec.summary       = %q{Emoji JSON Data for UTR #51}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/jollygoodcode/emoji-data"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
