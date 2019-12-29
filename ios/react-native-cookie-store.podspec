require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name                = package['name']
  s.version             = package['version']
  s.description         = package['description']
  s.homepage            = "https://github.com/safaiyeh/react-native-cookie-store"
  s.license             = package['license']
  s.author              = "safaiyeh"
  s.source              = { :git => "git@github.com:safaiyeh/react-native-cookie-store.git", :tag => "v#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, "7.0"
  s.preserve_paths      = "*.framework"
  s.source_files        = 'RNCookieManagerIOS/*.{h,m}'
  s.dependency 'React'
end
