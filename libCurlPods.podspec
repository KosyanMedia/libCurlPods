Pod::Spec.new do |spec|
  spec.name         = 'libCurlPods'
  spec.version      = '7.60.3'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/KosyanMedia/libCurlPods.git'
  spec.authors      = { 'LorienMan' => 'https://github.com/LorienMan' }
  spec.summary      = 'Compiled libCurl to be used via CocoaPods'
  spec.source       = { :git => 'https://github.com/KosyanMedia/libCurlPods.git', :tag => spec.version.to_s }
  spec.platform     = :ios, '10.0'

  spec.source_files = ['libCurlPods.h', 'libCurlPods.m', 'curl/*.h', 'wrapper/*']
  spec.public_header_files = [
    'libCurlPods.h',
    'curl/curl.h',
    'curl/curlver.h',
    'curl/easy.h',
    'curl/multi.h',
    'curl/system.h',
    'wrapper/CURLDataTask.h',
    'wrapper/CURLResponse.h',
    'wrapper/CURLSession.h',
    'wrapper/NSError+CURL.h'
  ]
  spec.vendored_libraries = 'libcurl.a'
  spec.frameworks = 'Foundation'
  spec.libraries = 'z'

  spec.module_map = 'libCurlPods.modulemap'

  spec.static_framework = true
end
