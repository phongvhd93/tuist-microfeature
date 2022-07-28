platform :ios, '13.0'
use_frameworks!

# ignore all warnings from all pods
inhibit_all_warnings!

source 'https://cdn.cocoapods.org/'
source 'https://github.com/goinstant/pods-specs-public'


def all_pods
  pod 'SwiftLint'
  pod 'R.swift'
end

target 'CommonViews' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CommonViews

end

target 'Constants' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Constants

end

target 'Extensions' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Extensions

end

target 'Helpers' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Helpers

end

target 'Models' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Models

end

target 'Profile' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Profile

end

target 'ProfileExampleApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  all_pods

  # Pods for ProfileExampleApp

end

target 'xcodecloud-demo-growth' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  all_pods
  # Pods for xcodecloud-demo-growth

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
          config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
  end
end
