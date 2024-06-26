# -*- encoding: utf-8 -*-

# Copyright (c) Microsoft Corporation
# All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# THIS CODE IS PROVIDED *AS IS* BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION ANY
# IMPLIED WARRANTIES OR CONDITIONS OF TITLE, FITNESS FOR A PARTICULAR
# PURPOSE, MERCHANTABLITY OR NON-INFRINGEMENT.
#
# See the Apache Version 2.0 License for specific language governing
# permissions and limitations under the License.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yammer/version'
require 'date'

Gem::Specification.new do |s|
  s.name             = 'yam'
  s.version          = Yammer::Version.to_s

  s.date             = Date.today.to_s
  s.summary          = "Yammer API Client"

  s.description      = "A Ruby wrapper for accessing Yammer's REST API"
  s.authors          = ["Kevin Mutyaba"]
  s.email            = %q{kmutyaba@yammer-inc.com}
  s.homepage         = 'http://yammer.github.io/yam'
  s.rubygems_version = Yammer::Version.to_s
  s.files            = `git ls-files`.split("\n")
  s.require_paths    = ['lib']

  s.licenses         = ['MIT']
  s.test_files       = Dir.glob("spec/**/*")

  s.cert_chain       = ['certs/public.pem']
  s.signing_key      = File.expand_path("~/.gem/certs/private_key.pem") if $0 =~ /gem\z/

  s.add_dependency 'oj', '~> 3.16'
  s.add_dependency 'multi_json', '~> 1.15'
  s.add_dependency 'rest-client', '~> 2.1'
  s.add_dependency 'addressable', '~> 2.8'
  s.add_dependency 'oauth2-client', '~> 2.0'

  s.add_development_dependency 'rake', '~> 13.2'
  s.add_development_dependency 'rspec', '~> 3.13'
  s.add_development_dependency 'simplecov', '~> 0.22'
  s.add_development_dependency 'webmock', '~> 3.23'
  s.add_development_dependency 'yard', '~> 0.9'

  s.post_install_message = "Thank you for installing Yam! For API help go to https://developer.yammer.com/docs/getting-started\n"
end
