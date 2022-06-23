//
//  ProductInformationViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import Models

public struct ProductInformationViewModel: Identifiable {

    public let id: String
    public let productName: String
    public let productCategory: String
    public let imageString: String
    public let price: Price
    public let description: String
}

extension ProductInformationViewModel {

    public init?(id: Int) {
        guard let searchResultItem = SearchResultItem.searchResultItems.first(where: { $0.id == id })
        else { return nil }
        self.id = "\(searchResultItem.id)"
        productName = searchResultItem.name
        productCategory = "cube"
        price = searchResultItem.price
        imageString = searchResultItem.imageString
        description = ""
    }

    public static var productInformation: ProductInformationViewModel {
        .init(
            id: "id",
            productName: "pink cube",
            productCategory: "cube",
            imageString: "dummy-tshirt/tshirt",
            price: Price(id: "price", amount: 10_000, currency: "฿"),
            description: """
            The design of Pink Cube was inspired by amazing box. Owning this piece grants the following stats:

            Charisma +10
            Luck +10
            Happiness +15
            """
        )
    }
}
