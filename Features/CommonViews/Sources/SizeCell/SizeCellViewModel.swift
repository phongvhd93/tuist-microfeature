//
//  SizeCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import Models

public struct SizeCellViewModel: Identifiable, Hashable {

    public let id: String
    public let name: String
}

extension SizeCellViewModel {

    public init(productSizeType: ProductSizeType) {
        id = productSizeType.rawValue
        name = productSizeType.rawValue
    }
}
