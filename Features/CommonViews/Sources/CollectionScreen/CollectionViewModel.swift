//
//  CollectionViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 26/05/2021.
//

import Foundation
import Models

public struct CollectionViewModel: Identifiable {

    public let id: String
    public let name: String
    public let products: [Product]

    public var productCellViewModels: [ProductCellViewModel] {
        Product.products.map { ProductCellViewModel(id: $0.id, product: $0) }
    }

    public init(
        id: String,
        name: String,
        products: [Product]
    ) {
        self.id = id
        self.name = name
        self.products = products
    }
}
