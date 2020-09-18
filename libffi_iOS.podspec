Pod::Spec.new do |s|
  s.name             = 'libffi_iOS'
  s.version          = '0.2.0'
  s.summary          = 'Compiled libffi for iOS. '
  s.description      = <<-DESC
                        Compiled libffi for iOS. 
                        DESC

  s.homepage         = 'https://github.com/wangwanjie/libffi_iOS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangwanjie' => 'vanjay.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/wangwanjie/libffi_iOS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '6.0'
  s.source_files = 'libffi_iOS/**/*.{h,m,c}'
  s.vendored_libraries = 'libffi_iOS/libffi.a'
  s.source_files  = "libffi_iOS", "libffi_iOS/**/*.{h,m}"
  s.public_header_files = 'libffi_iOS/**/*.h'
  s.requires_arc = true
end
