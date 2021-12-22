Pod::Spec.new do |s|
  s.name             = 'PluggableApplicationDelegate'
  s.version          = '10.0.0'
  s.summary          = 'Services oriented AppDelegate in Swift 3.'
  s.description      = <<-DESC
PluggableApplicationDelegate is a way of decoupling AppDelegate, by splitting it into small modules called ApplicationService.
Each ApplicationServices shares the life cycle with AppDelegate, and becomes its observer. Whenever AppDelegate runs any life cycle method, your Application services are notified and perform some action.
PluggableApplicationDelegate is an open class from which your AppDelegate needs to inherit. Your AppDelegate then needs to override its `services` property, returning an ApplicationServices array.
                       DESC

  s.homepage         = 'https://github.com/fmo91/PluggableApplicationDelegate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fmo91' => 'ortizfernandomartin@gmail.com' }
  s.source           = { :git => 'https://github.com/fmo91/PluggableApplicationDelegate.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '12.0'

  s.source_files = 'PluggableApplicationDelegate/Classes/**/*'
  
  s.frameworks = 'UIKit'
end
