require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "UdpSockets"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = package_json["homepage"]
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => package_json["repository"]["url"], :tag => "v#{s.version}" }
  s.ios.deployment_target = '9.0'
  s.source_files        = 'ios/**/*.{h,m}'

  s.dependency 'React-Core'
end