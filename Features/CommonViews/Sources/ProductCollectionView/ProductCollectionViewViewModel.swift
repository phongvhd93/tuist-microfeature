//
//  ProductCollectionViewViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import Foundation
import Constants

public final class ProductCollectionViewViewModel {

    public var sectionViewModels: [ProductSectionViewModel] = []

    public init() {
        sectionViewModels = Constants.Collection.allCases.map(ProductSectionViewModel.init)
    }
}
