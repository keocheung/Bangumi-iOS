Pod::Spec.new do |s|
  s.name             = 'BBCode'
  s.version          = '1.0.0'
  s.summary          = 'A BBCode rendering library with SDWebImage support.'
  s.description      = <<-DESC
    BBCode is a Swift library for rendering BBCode text and images, supporting SVG, WebP, and AVIF via SDWebImage coders.
  DESC

  s.homepage         = 'https://github.com/yourusername/BBCode'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'your@email.com' }
  s.source           = { :git => 'https://github.com/yourusername/BBCode.git', :tag => s.version.to_s }

  # 支持的平台
  s.platform     = :ios, '17.0'
  s.osx.deployment_target     = '14.0'
  s.tvos.deployment_target    = '17.0'
  s.watchos.deployment_target = '10.0'
  s.visionos.deployment_target = '1.0'

  # Swift 版本
  s.swift_versions = ['6.0', '5.10']

  # 源码路径
  s.source_files = 'Sources/BBCode/**/*.{swift,h}'
  s.resources    = ['Sources/BBCode/Resources/**/*']

  # 依赖项（对应 SwiftPM 的 dependencies）
  s.dependency 'SDWebImageSwiftUI', '~> 3.0.0'
  s.dependency 'SDWebImageSVGCoder', '~> 1.7.0'
  s.dependency 'SDWebImageWebPCoder', '~> 0.14.6'
  s.dependency 'SDWebImageAVIFCoder', '~> 0.11.1'
  s.dependency 'libavif/libdav1d'

  # 单元测试（可选）
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/BBCodeTests/**/*.{swift}'
  end
end

