#
# Be sure to run `pod lib lint ISLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = "AwInSDK"
  s.version = "2.2.0"
  s.summary = "A Pod for AwInSDK framework integration"
  s.description = <<-DESC
                       AwInSDK provides functionality for integrating the AwInSDK framework with necessary resources and dependencies.
                       DESC

  s.homepage = "https://github.com/Eric Wu/AwInSDK"
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license = { :type => "MIT", :file => "LICENSE" }

  s.author = { "Eric Wu" => "starring_wu@qq.com" }
  # s.source = { :git => "https://github.com/Eric Wu/ISLibrary.git", :tag => s.version.to_s }
  s.source = { :path => "." }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = "14.0"

  s.vendored_frameworks = "AwInSDK.framework"
  s.resources = [
    "AppLovin-Settings.plist",
    "AWSDK.bundle",
    "AWSDKConfig.plist",
    "language/*.lproj",
    "sharePhoto.png",
  ]
  s.public_header_files = "VKSdkFramework.h"
  s.frameworks = [
    "SystemConfiguration",
    "Security",
    "JavaScriptCore",
    "CoreTelephony",
    "AdSupport",
    "WebKit",
    "AssetsLibrary",
    "SafariServices",
    "Photos",
    "AuthenticationServices",
    "GameKit",
  ]  # 弱引用框架（Optional）
  s.weak_frameworks = "AdServices"

  # 依赖的系统库
  s.libraries = [
    "c++",
    "z",
    "sqlite3",
    "bz2.1.0",
    "c++abi",
    "resolv",
  ]

  # 编译选项
  s.xcconfig = {
    "OTHER_LDFLAGS" => "-ObjC",
  }

  # 源文件设置（如果需要）
  # s.source_files = "AwInSDK.framework/Headers/*.{h}"

  # 可选：模块支持
  s.module_map = "AwInSDK.framework/Modules/module.modulemap" # 如果框架包含模块定义

  # 可选：指定架构
  s.pod_target_xcconfig = {
    "VALID_ARCHS" => "arm64",
  }
  # s.dependency 'AFNetworking', '~> 2.3'
end
