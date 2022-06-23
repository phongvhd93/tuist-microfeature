//
//  ProductSectionViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import SwiftUI
import Constants
import Models

public final class ProductSectionViewModel: Identifiable {

    public let id: Int
    public let title: String
    private(set) var cellViewModels: [ProductCellViewModel] = []

    public init(collection: Constants.Collection) {
        // Dummy a product
        var cellVMs: [ProductCellViewModel] = []
        for index in 0..<collection.numberOfItems {
             var cellVM = ProductCellViewModel(
                id: "\(index)",
                product: Product.products.first ?? Product.suggestedProduct
            )
            cellVM.isLast = collection == .forYou && index == collection.numberOfItems - 1
            cellVMs.append(cellVM)
        }
        id = collection.rawValue
        title = collection.title
        cellViewModels = cellVMs
    }

    public func appendCellVMs(vms: [ProductCellViewModel]) {
        cellViewModels[cellViewModels.count - 1].isLast = false
        cellViewModels.append(contentsOf: vms)
    }
}

extension Constants.Collection {

    fileprivate var numberOfItems: Int {
        switch self {
        case .popular: return 2
        case .newArrival: return 2
        case .forYou: return 4
        }
    }
}
