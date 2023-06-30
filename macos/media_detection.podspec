#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint media_detection.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'media_detection'
  s.version          = '0.0.1'
  s.summary          = '用于检测图像，视频的相似度，以及图像的模糊度。支持Android和IOS.'
  s.description      = <<-DESC
用于检测图像，视频的相似度，以及图像的模糊度。支持Android和IOS.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
