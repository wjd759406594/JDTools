#
# Be sure to run `pod lib lint JDTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JDTools'
  s.version          = '0.1.0'
  s.summary          = 'JDTools'

  s.description      = 'OC日常开发工具集合'

  s.homepage         = 'https://github.com/wjd759406594/JDTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wjd' => '759406595@qq.com' }
  s.source           = { :git => 'https://github.com/wjd759406594/JDTools.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'JDTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JDTools' => ['JDTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
