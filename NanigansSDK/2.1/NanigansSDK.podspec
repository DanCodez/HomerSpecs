Pod::Spec.new do |s|
  s.name         = "NanigansSDK"
  s.version      = "2.1"
  s.summary      = "Nanigans SDK is used to track user level data that can be used with the Marketing Software platform AdEngine"
  s.homepage     = "https://nanigans.com"
  s.author       = { 'Nanigans' => 'support@nanigans.com' }
  s.platform     = :ios
  s.framework    = 'AdSupport', 'MessageUI', 'SystemConfiguration'
  s.source       = { :git => "https://github.com/WonderThink/NanigansSDK.git", :tag => s.version.to_s }
  s.license      = {
    :type => 'Commercial',
    :text => 'Privacy Policy is located at http://www.nanigans.com/privacy-policy/',
  }
  s.vendored_frameworks = 'NanigansSDK.framework'
  s.requires_arc = false
end