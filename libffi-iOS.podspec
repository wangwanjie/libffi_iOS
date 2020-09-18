Pod::Spec.new do |s|
  s.name             = 'libffi-iOS'
  s.version          = '0.1.0'
  s.summary          = 'Compiled libffi for iOS. '
  s.description      = <<-DESC
                        Compiled libffi for iOS. 
                        DESC

  s.homepage         = 'https://github.com/wangwanjie/libffi-iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangwanjie' => 'vanjay.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/wangwanjie/libffi-iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.source_files = 'libffi-iOS/**/*.{h,m,c}'
  s.vendored_libraries = 'libffi-iOS/libffi.a'
  s.source_files  = "libffi-iOS", "libffi-iOS/**/*.{h,m}"
  s.public_header_files = 'libffi-iOS/**/*.h'
  s.requires_arc = true
end
