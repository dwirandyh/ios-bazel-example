# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

install! 'cocoapods',
         :generate_multiple_pod_projects => true,
         :incremental_installation => true

target 'NewsApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Bazel Example
  pod 'Alamofire'

  target 'NewsAppTests' do
    inherit! :search_paths
    # Pods for testing

    pod 'Quick'
    pod 'Nimble'
  end

  target 'NewsAppUITests' do
    # Pods for testing
    pod 'Quick'
    pod 'Nimble'
  end

end
