#
# Be sure to run `pod lib lint SVGAPlayerHippyModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SVGAPlayerHippyModule'
  s.version          = '1.0.1'
  s.summary          = '测试的SVGAPlayerHippyModule.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1062005302@qq.com' => '1062005302@qq.com' }
  s.source           = { :git => 'https://DZGGGGGG:dingzhigang222@github.com/DZGGGGGG/SVGAPlayerHippyModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  non_arc_files = 'SVGAPlayerHippyModule/Classes/SVGAPlayer/pbobjc/Svga.pbobjc.{h,m}'#'SVGAPlayerHippyModule/Classes/SVGAPlayer/pbobjc/Svga.pbobjc.m',
  s.source_files = 'SVGAPlayerHippyModule/Classes/SVGAPlayer/**/*'
  s.exclude_files = non_arc_files

  s.subspec 'no-arc' do |sp|

  sp.source_files = non_arc_files

  sp.requires_arc = false
  end
  
  # s.resource_bundles = {
  #   'SVGAPlayerHippyModule' => ['SVGAPlayerHippyModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SSZipArchive', '~> 2.1.4'
  s.dependency 'Protobuf', '~> 3.4'
end
