//
//  SearchResultItem.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 18/05/2021.
//

public struct SearchResultItem: Identifiable {

    public var id: Int
    public var name: String
    public var imageString: String
    public var price: Price
}

extension SearchResultItem {

    public static var searchResultItems: [SearchResultItem] {
        var items: [SearchResultItem] = []
        for (index, item) in Product.products.enumerated() {
            items.append(
                SearchResultItem(
                    id: index,
                    name: item.name,
                    imageString: item.imageName,
                    price: item.price
                )
            )
        }
        return items
    }
}
