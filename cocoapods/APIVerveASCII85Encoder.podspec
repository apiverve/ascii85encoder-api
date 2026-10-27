Pod::Spec.new do |s|
  s.name             = 'APIVerveASCII85Encoder'
  s.version          = '1.2.3'
  s.summary          = 'ASCII85 Encoder encodes text into Base85 strings or decodes existing ASCII85 payloads back to plain text.'
  s.description      = <<-'DESC'
ASCII85 Encoder encodes text into Base85 strings or decodes existing ASCII85 payloads back to plain text. Each request returns the converted output with original and processed character counts, while paid plans add custom formats and compression ratios.

This iOS/macOS SDK provides a convenient way to access the ASCII85 Encoder from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/ascii85encoder?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/ascii85encoder-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveASCII85Encoder/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
