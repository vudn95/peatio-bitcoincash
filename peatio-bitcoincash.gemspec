
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "peatio/bitcoincash/version"

Gem::Specification.new do |spec|
  spec.name          = "peatio-bitcoincash"
  spec.version       = Peatio::Bitcoincash::VERSION
  spec.authors       = ["Dinesh Chohda"]
  spec.email         = ["dinesh.skyach@gmail.com"]

  spec.summary       = %q{Gem for extending Peatio plugable system with Bitcoincash implementation.}
  spec.description   = %q{Bitcoincash Peatio gem which implements Peatio::Blockchain::Abstract & Peatio::Wallet::Abstract.}
  spec.homepage      = "https://www.skyach.com/"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 6.1.0"
  spec.add_dependency "faraday", "~> 1.10"
  spec.add_dependency "memoist", "~> 0.16.0"
  spec.add_dependency "peatio-dao", ">= 3.1.3"
  spec.add_dependency "cash-addr", '~> 0.2.0'
  spec.add_dependency 'net-http-persistent', '~> 4.0.1'

  spec.add_development_dependency "bundler", "~> 2.6.6"
  spec.add_development_dependency "mocha", "~> 1.8"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.5"
end