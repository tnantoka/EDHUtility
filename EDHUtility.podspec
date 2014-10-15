#
# Be sure to run `pod lib lint EDHUtility.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EDHUtility"
  s.version          = "0.1.1"
  s.summary          = "Utility functions for EDH* pods."
  s.description      = <<-DESC
                       Helper methods, developed for Edhita.
                       DESC
  s.homepage         = "https://github.com/tnantoka/EDHUtility"
  s.license          = 'MIT'
  s.author           = { "tnantoka" => "tnantoka@bornneet.com" }
  s.source           = { :git => "https://github.com/tnantoka/EDHUtility.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tnantoka'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource = 'Pod/Assets/EDHUtility.bundle'
end
