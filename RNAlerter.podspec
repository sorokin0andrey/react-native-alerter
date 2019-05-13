require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNAlerter"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']
  s.homepage     = 'https://github.com/sorokin0andrey/react-native-alerter'
  s.author       = package['author']
  s.platforms    = { :ios => "8.0", :tvos => "9.2" }
  s.source       = { :git => "https://github.com/sorokin0andrey/react-native-alerter.git", :tag => s.version }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "NYTPhotoViewer"

end