
Pod::Spec.new do |s|
  s.name             = 'Animations'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Animations.'
  
  
  s.description      = <<-DESC
  TODO: Add long description of the pod here.
  DESC
  
  s.homepage         = 'https://github.com/renilsonmf/Animations'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'renilsonmf' => 'renilsonmoreira_@hotmail.com' }
  s.source           = { :git => 'https://github.com/renilsonmf/Animations.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '13.0'
  
  s.subspec 'Debug' do |debug|
    debug.source_files = 'Animations/Classes/**/*.{h,m,swift,json}'
    debug.resources = 'Animations/Assets/**/*',
    'Animations/Classes/**/*.{xib,json,ttf,png,strings,xcassets,storyboard}'
    end
    
    # s.resource_bundles = {
    #   'Animations' => ['Animations/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'lottie-ios'
  end
