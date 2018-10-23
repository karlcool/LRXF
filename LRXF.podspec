Pod::Spec.new do |s|
  s.name         = "LRXF"
  s.version      = "1.174.9"
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

     s.prepare_command     = <<-EOF
     mkdir Src/iflyMSC.framework/Modules
     touch Src/iflyMSC.framework/Modules/module.modulemap
     cat <<-EOF > Src/iflyMSC.framework/Modules/module.modulemap
     framework module iflyMSC {
		 header "IFlyAudioSession.h"
		 header "IFlyDataUploader.h"
		 header "IFlyDebugLog.h"
		 header "IFlyISVDelegate.h"
		 header "IFlyISVRecognizer.h"
		 header "IFlyMSC.h"
		 header "IFlyPcmRecorder.h"
		 header "IFlyRecognizerView.h"
		 header "IFlyRecognizerViewDelegate.h"
		 header "IFlyResourceUtil.h"
		 header "IFlySetting.h"
		 header "IFlySpeechConstant.h"
		 header "IFlySpeechError.h"
		 header "IFlySpeechEvaluator.h"
		 header "IFlySpeechEvaluatorDelegate.h"
		 header "IFlySpeechEvent.h"
		 header "IFlySpeechRecognizer.h"
		 header "IFlySpeechRecognizerDelegate.h"
		 header "IFlySpeechSynthesizer.h"
		 header "IFlySpeechSynthesizerDelegate.h"
		 header "IFlySpeechUtility.h"
		 header "IFlyUserWords.h"
		 header "IFlyVoiceWakeuper.h"
		 header "IFlyVoiceWakeuperDelegate.h"
         export *
         link "z"
         link "c++"
     }
     \EOF
end
