
Pod::Spec.new do |s|
  s.name             = 'TestConnectionManager'
  s.version          = '0.1.0'
  s.summary          = 'Simple HTTP client for Swift.'
  s.description      = 'TestConnectionManager is a simple HTTP client for Swift 3.0'

  s.homepage         = 'https://github.com/DalterioRaffaele/TestConnectionManager'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DalterioRaffaele' => 'raffaele.dalterio@live.it' }
  s.source           = { :git => 'https://github.com/DalterioRaffaele/TestConnectionManager.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'TestConnectionManager/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TestConnectionManager' => ['TestConnectionManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
