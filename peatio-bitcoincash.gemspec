lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "peatio/bitcoincash/version"

Gem::Specification.new do |spec|
  spec.name          = "peatio-bitcoincash"
  spec.version       = "3.1.1"
  spec.authors       = ["Dinesh Chohda"]
  spec.email         = ["dinesh.skyach@gmail.com"]

  spec.summary       = %q{Gem for extending Peatio plugable system with Bitcoincash implementation.}
  spec.description   = %q{Bitcoincash Peatio gem which implements Peatio::Blockchain::Abstract & Peatio::Wallet::Abstract.}
  spec.homepage      = "https://www.skyach.com/"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 6.1.0", "<= 7.1"
  spec.add_dependency "faraday", "~> 2.8.1"
  spec.add_dependency "faraday-retry", "~> 2.3", ">= 2.3.1"
  spec.add_dependency "memoist", "~> 0.16.0"
  spec.add_dependency "peatio-dao", ">= 3.1.2"
  spec.add_dependency "cash-addr", '~> 0.2.0'
  spec.add_dependency "faraday-net_http_persistent", "~> 2.0"
  spec.add_dependency 'net-http-persistent', '~> 4.0.5'

  spec.add_development_dependency "bundler", ">= 2.4.7"
  spec.add_development_dependency "mocha", "~> 1.8"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", ">= 3.18.1"

end