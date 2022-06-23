//
//  SearchItemCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

public struct SearchItemCellViewModel: Identifiable {

    public let id: Int
    public let name: String
    public let imageName: String
    public let numberOfItems: Int

    public var numberOfItemsString: String {
        "\(numberOfItems) \(numberOfItems == 1 ? "item" : "items")"
    }

    public init(
        id: Int,
        name: String,
        imageName: String,
        numberOfItems: Int
    ) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.numberOfItems = numberOfItems
    }
}
