Pod::Spec.new do |s|
  s.name         = 'WalletCore'
  s.version      = '2.6.4'
  s.summary      = 'Trust Wallet core data structures and algorithms.'
  s.homepage     = 'https://github.com/trustwallet/wallet-core'
  s.license      = 'MIT'
  s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }

  s.ios.deployment_target = '12.0'
  s.swift_version = '5.1'

  s.source = {
    http: "https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/core+protobuf.tar.xz"
  }

  s.vendored_frameworks = 'WalletCore.xcframework', 'SwiftProtobuf.xcframework'
  s.libraries = 'c++'
  s.xcconfig = {
    'OTHER_LDFLAGS' => '$(inherited) -fprofile-instr-generate'
  }
end
