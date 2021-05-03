// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: EOS.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum TW_EOS_Proto_KeyType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case legacy // = 0
  case modernk1 // = 1
  case modernr1 // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .legacy
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .legacy
    case 1: self = .modernk1
    case 2: self = .modernr1
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .legacy: return 0
    case .modernk1: return 1
    case .modernr1: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension TW_EOS_Proto_KeyType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [TW_EOS_Proto_KeyType] = [
    .legacy,
    .modernk1,
    .modernr1,
  ]
}

#endif  // swift(>=4.2)

/// Values for an Asset object.
public struct TW_EOS_Proto_Asset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var decimals: UInt32 = 0

  public var symbol: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_EOS_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Chain id (256-bit number)
  public var chainID: Data = Data()

  /// Reference Block Id (256-bits)
  public var referenceBlockID: Data = Data()

  /// Timestamp on the reference block
  public var referenceBlockTime: Int32 = 0

  /// Currency (e.g. "eosio.token")
  public var currency: String = String()

  /// Sender's username
  public var sender: String = String()

  /// Recipient's username
  public var recipient: String = String()

  /// Memo attached to the transaction
  public var memo: String = String()

  /// Asset details and amount
  public var asset: TW_EOS_Proto_Asset {
    get {return _asset ?? TW_EOS_Proto_Asset()}
    set {_asset = newValue}
  }
  /// Returns true if `asset` has been explicitly set.
  public var hasAsset: Bool {return self._asset != nil}
  /// Clears the value of `asset`. Subsequent reads from it will return its default value.
  public mutating func clearAsset() {self._asset = nil}

  /// Sender's private key's raw bytes
  public var privateKey: Data = Data()

  /// Type of the private key
  public var privateKeyType: TW_EOS_Proto_KeyType = .legacy

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _asset: TW_EOS_Proto_Asset? = nil
}

/// Transaction signing output.
public struct TW_EOS_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// JSON of the packed transaction.
  public var jsonEncoded: String = String()

  /// Optional error
  public var error: TW_Common_Proto_SigningError = .ok

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.EOS.Proto"

extension TW_EOS_Proto_KeyType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LEGACY"),
    1: .same(proto: "MODERNK1"),
    2: .same(proto: "MODERNR1"),
  ]
}

extension TW_EOS_Proto_Asset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Asset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "decimals"),
    3: .same(proto: "symbol"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.amount) }()
      case 2: try { try decoder.decodeSingularUInt32Field(value: &self.decimals) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.symbol) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if self.decimals != 0 {
      try visitor.visitSingularUInt32Field(value: self.decimals, fieldNumber: 2)
    }
    if !self.symbol.isEmpty {
      try visitor.visitSingularStringField(value: self.symbol, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_EOS_Proto_Asset, rhs: TW_EOS_Proto_Asset) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.decimals != rhs.decimals {return false}
    if lhs.symbol != rhs.symbol {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_EOS_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "chain_id"),
    2: .standard(proto: "reference_block_id"),
    3: .standard(proto: "reference_block_time"),
    4: .same(proto: "currency"),
    5: .same(proto: "sender"),
    6: .same(proto: "recipient"),
    7: .same(proto: "memo"),
    8: .same(proto: "asset"),
    9: .standard(proto: "private_key"),
    10: .standard(proto: "private_key_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.chainID) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.referenceBlockID) }()
      case 3: try { try decoder.decodeSingularSFixed32Field(value: &self.referenceBlockTime) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.currency) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.recipient) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.memo) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._asset) }()
      case 9: try { try decoder.decodeSingularBytesField(value: &self.privateKey) }()
      case 10: try { try decoder.decodeSingularEnumField(value: &self.privateKeyType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.chainID.isEmpty {
      try visitor.visitSingularBytesField(value: self.chainID, fieldNumber: 1)
    }
    if !self.referenceBlockID.isEmpty {
      try visitor.visitSingularBytesField(value: self.referenceBlockID, fieldNumber: 2)
    }
    if self.referenceBlockTime != 0 {
      try visitor.visitSingularSFixed32Field(value: self.referenceBlockTime, fieldNumber: 3)
    }
    if !self.currency.isEmpty {
      try visitor.visitSingularStringField(value: self.currency, fieldNumber: 4)
    }
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 5)
    }
    if !self.recipient.isEmpty {
      try visitor.visitSingularStringField(value: self.recipient, fieldNumber: 6)
    }
    if !self.memo.isEmpty {
      try visitor.visitSingularStringField(value: self.memo, fieldNumber: 7)
    }
    if let v = self._asset {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 9)
    }
    if self.privateKeyType != .legacy {
      try visitor.visitSingularEnumField(value: self.privateKeyType, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_EOS_Proto_SigningInput, rhs: TW_EOS_Proto_SigningInput) -> Bool {
    if lhs.chainID != rhs.chainID {return false}
    if lhs.referenceBlockID != rhs.referenceBlockID {return false}
    if lhs.referenceBlockTime != rhs.referenceBlockTime {return false}
    if lhs.currency != rhs.currency {return false}
    if lhs.sender != rhs.sender {return false}
    if lhs.recipient != rhs.recipient {return false}
    if lhs.memo != rhs.memo {return false}
    if lhs._asset != rhs._asset {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.privateKeyType != rhs.privateKeyType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_EOS_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "json_encoded"),
    2: .same(proto: "error"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.jsonEncoded) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.error) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.jsonEncoded.isEmpty {
      try visitor.visitSingularStringField(value: self.jsonEncoded, fieldNumber: 1)
    }
    if self.error != .ok {
      try visitor.visitSingularEnumField(value: self.error, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_EOS_Proto_SigningOutput, rhs: TW_EOS_Proto_SigningOutput) -> Bool {
    if lhs.jsonEncoded != rhs.jsonEncoded {return false}
    if lhs.error != rhs.error {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
