Pod::Spec.new do |s|
  s.name         = 'mobile-ffmpeg-full'
  s.version      = '4.4.LTS'
  s.summary      = 'Prebuilt mobile-ffmpeg full (forked binary)'
  s.homepage     = 'https://github.com/jacklmf/mobile-ffmpeg'
  s.license      = { :type => 'GPL/LGPL' }
  s.platform     = :ios, '14.0'

  s.source       = {
    :http => 'https://github.com/jacklmf/mobile-ffmpeg/releases/download/v4.4.LTS/mobile-ffmpeg-4.4.LTS-ios-framework.zip',
    :sha256 => 'dd90c622162269bd6ce42740dd065c028703f4dbf8aa9d090b8a03adeb1789b9'
  }

  s.preserve_paths      = 'mobile-ffmpeg-4.4.LTS-ios-framework'
  s.vendored_frameworks = 'mobile-ffmpeg-4.4.LTS-ios-framework/ios-universal/*.framework'

  # 可能用到的系統框架（按需保留）
  s.frameworks = 'AVFoundation', 'CoreMedia', 'CoreVideo', 'AudioToolbox', 'VideoToolbox', 'Security', 'Accelerate'
  s.requires_arc = true
end
