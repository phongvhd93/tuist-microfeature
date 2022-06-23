//
//  Price.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 14/05/2021.
//

import Foundation
import Extensions

public struct Price: Identifiable {

    public let id: String
    public let amount: Double
    public let currency: String

    public init(id: String, amount: Double, currency: String) {
        self.id = id
        self.amount = amount
        self.currency = currency
    }

    public var formattedPrice: String {
        "\(currency)\(amount.formatted(with: .currencyWithNoDecimalDigit))"
    }
}
