Pod::Spec.new do |s|
  s.name         = 'TrustWalletCore'
  s.version      = '2.6.7'
  s.summary      = 'Trust Wallet core data structures and algorithms.'
  s.homepage     = 'https://github.com/trustwallet/wallet-core'
  s.license      = 'MIT'
  s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }
  s.module_name  = 'WalletCore'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'
  s.swift_version = '5.1'
  s.source = {
    http: 'https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/TrustWalletCore-2.6.7_bitcode.tar.xz'
  }
  s.default_subspec = 'Core'
  s.subspec 'Types' do |ss|
    ss.source_files = 
      'Sources/Types/*.swift',
      'Sources/Generated/Enums/*.swift',
      'Sources/Generated/Protobuf/*.swift'
    ss.dependency 'SwiftProtobuf'
  end
  s.subspec 'Core' do |ss|
    ss.vendored_frameworks = '*.xcframework'
    ss.exclude_files = 'Sources/Generated/WalletCore.h'
    ss.source_files =
      'include/**/*.h',
      'Sources/*.{swift,h,m,cpp}',
      'Sources/Extensions/*.swift',
      'Sources/Generated/*.{swift,h}'
    ss.public_header_files =
      'include/**/*.h',
      'Sources/*.h'
    ss.libraries = 'c++'
    ss.dependency 'TrustWalletCore/Types'
  end
end
