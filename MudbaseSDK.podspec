Pod::Spec.new do |s|
  s.name = 'MudbaseSDK'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = '1.3.13'
  s.source = { :git => 'https://github.com/themudhaxk/mudbase-sdk-swift.git', :tag => 'v1.3.13' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/themudhaxk/mudbase-sdk-swift'
  s.summary = 'MudbaseSDK Swift SDK'
  s.source_files = 'MudbaseSDK/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
