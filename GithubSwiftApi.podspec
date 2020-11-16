#
# Be sure to run `pod lib lint GithubSwiftApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GithubSwiftApi'
  s.version          = ENV['LIB_VERSION'] || '0.1.4'
  s.summary          = 'GithubSwiftApi is my way to show what I got.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/jcleilton/GithubSwiftApi'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Cleilton' => 'jcleilton@gmail.com' }
  s.source           = { :git => 'https://github.com/jcleilton/GithubSwiftApi.git', :tag => s.version.to_s }
  s.social_media_url = 'https://www.linkedin.com/in/jcleilton'

  s.ios.deployment_target = '8.0'

  s.source_files = 'src/**/*.swift'
  
  # s.resource_bundles = {
  #   'GithubSwiftApi' => ['GithubSwiftApi/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
