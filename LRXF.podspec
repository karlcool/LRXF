Pod::Spec.new do |s|
  s.name         = "LRXF"
  s.version      = "1.174.3"
  s.platform     = :ios, "9.0"
  s.summary      = "讯飞听写sdk"
  s.description  = "讯飞听写sdk"
  s.homepage     = "https://github.com/karlcool/LRXF.git"
  s.license      = "MIT"
  s.author       = { "yanzhi.liu" => "karlcool.l@qq.com" }
  s.source       = { :git => "https://github.com/karlcool/LRXF.git", :tag => "#{s.version}" }
  # s.source_files        = 'Src/*.{h,m}'
  s.vendored_frameworks = 'Src/iflyMSC.framework'
  s.frameworks = 'CoreLocation', 'CoreTelephony', 'AVFoundation', 'Contacts', 'AddressBook', 'AudioToolbox', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics'
   s.libraries = 'z','c++'

   s.requires_arc = false


end
