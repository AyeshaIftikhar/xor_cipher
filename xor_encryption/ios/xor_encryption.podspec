#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint xor_encryption.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'xor_encryption'
  s.version          = '0.0.6'
  s.summary          = 'This package is an implementation of xor cipher for encrypting strings in flutter.'
  s.description      = <<-DESC
XOR Encryption is an encryption method used to encrypt data and is hard to crack by brute-force method, i.e generating random encryption keys to match with the correct one. The XOR Encryption algorithm is a very effective yet easy to implement method of symmetric encryption. Due to its effectiveness and simplicity, the XOR Encryption is an extremely common component used in more complex encryption algorithms used nowadays. In cryptography, the simple XOR cipher is a type of additive cipher, an encryption algorithm that operates according to the principles of exclusive or operator.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'aishayy' => 'contactus@aishayy.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '14.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
