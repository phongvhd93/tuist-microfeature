//
//  ProductCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import Models

public struct ProductCellViewModel: Identifiable {

    public let id: String
    public let name: String
    public let imageString: String
    public let price: Double
    public let currency: String

    public var isLast: Bool = false
    public var formattedPrice: String {
        "\(currency)\(price.formatted(with: .currencyWithNoDecimalDigit))"
    }

    public init(
        id: String,
        name: String,
        imageString: String,
        price: Double,
        currency: String
    ) {
        self.id = id
        self.name = name
        self.imageString = imageString
        self.price = price
        self.currency = currency
    }
}

extension ProductCellViewModel {

    public init(id: String, product: Product) {
        self.init(
            id: id,
            name: product.name,
            imageString: product.imageName,
            price: product.price.amount,
            currency: product.price.currency
        )
    }
}
