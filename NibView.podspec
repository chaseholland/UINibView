#
# Be sure to run `pod lib lint NibView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NibView"
  s.version          = "0.0.1"
  s.summary          = "Super simple, subclassable UIView that automatically loads itself from a nib when placed into Interface Builder (like a Storyboard)."
  s.description      = <<-DESC
  This is a super simple pod for those times when you want to create a UIView from a nib (.xib), but you're tired of typing all the extra code to do the automatic loading when you add your custom nib-based view to another view or view controller.
                       DESC
  s.homepage         = "https://github.com/chaseholland/UINibView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Chase Holland" => "lurch09@gmail.com" }
  s.source           = { :git => "https://github.com/chaseholland/UINibView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NibView' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
