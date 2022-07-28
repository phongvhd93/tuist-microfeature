//
//  CollectionViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 26/05/2021.
//

import Foundation
import Models
import CommonViews

struct CollectionViewModel: Identifiable {

    let id: String
    let name: String
    let products: [Product]

    var productCellViewModels: [ProductCellViewModel] {
        Product.products.map { ProductCellViewModel(id: $0.id, product: $0) }
    }
}
