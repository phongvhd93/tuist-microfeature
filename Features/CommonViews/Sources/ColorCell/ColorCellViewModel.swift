//
//  ColorCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import Models

public struct ColorCellViewModel: Identifiable, Equatable {

    public let id: String
    public let name: String
    public let colorCode: String
}

extension ColorCellViewModel {

    public init(colorOption: ProductColorType) {
        id = colorOption.rawValue
        name = colorOption.name
        colorCode = colorOption.code
    }
}
