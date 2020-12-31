require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'version.json')))

Pod::Spec.new do |s|
  s.name         = "JRAppierSdk"
  s.version      = package['version'][1..-1]
  s.summary      = "JRAppierSdk is the library for Test"
  s.homepage     = "https://www.google.com"
  s.documentation_url = "https://docs.google.com/docs"
  s.license    = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Test" => "rex.chen@appier.com" }
  s.platform     = :ios, '9.0'
  s.source       = { :git => "https://github.com/chunta/JRAppierSdk.git", :tag => package['version']}
  #s.dependency 'JRCoreSdk'
  s.dependency 'JRADSdk'
  s.dependency 'JRQGSdk'
  s.frameworks = 'AdSupport', 'CoreTelephony', 'SystemConfiguration', 'CoreLocation', 'ImageIO', 'MobileCoreServices'
  s.requires_arc = true
end
