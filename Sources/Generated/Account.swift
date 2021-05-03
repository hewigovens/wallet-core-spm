// Copyright © 2017-2020 Trust Wallet.
//
// This file is part of Trust. The full Trust copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.
//
// This is a GENERATED FILE, changes made here WILL BE LOST.
//

import Foundation

public final class Account {

    public var address: String {
        return TWStringNSString(TWAccountAddress(rawValue))
    }

    public var derivationPath: String {
        return TWStringNSString(TWAccountDerivationPath(rawValue))
    }

    public var extendedPublicKey: String {
        return TWStringNSString(TWAccountExtendedPublicKey(rawValue))
    }

    public var coin: CoinType {
        return CoinType(rawValue: TWAccountCoin(rawValue).rawValue)!
    }

    let rawValue: OpaquePointer

    init(rawValue: OpaquePointer) {
        self.rawValue = rawValue
    }

    public init(address: String, coin: CoinType, derivationPath: String, extendedPublicKey: String) {
        let addressString = TWStringCreateWithNSString(address)
        defer {
            TWStringDelete(addressString)
        }
        let derivationPathString = TWStringCreateWithNSString(derivationPath)
        defer {
            TWStringDelete(derivationPathString)
        }
        let extendedPublicKeyString = TWStringCreateWithNSString(extendedPublicKey)
        defer {
            TWStringDelete(extendedPublicKeyString)
        }
        rawValue = TWAccountCreate(addressString, TWCoinType(rawValue: coin.rawValue), derivationPathString, extendedPublicKeyString)
    }

    deinit {
        TWAccountDelete(rawValue)
    }

}
