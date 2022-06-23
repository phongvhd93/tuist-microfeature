//
//  SearchItem.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 12/05/2021.
//

public struct SearchItem: Identifiable {

    public var id: Int
    public var name: String
    public var imageString: String
    public let numberOfItems: Int
}

extension SearchItem {

    public static var searchItems: [SearchItem] {
        var items: [SearchItem] = []
        for (index, itemType) in ItemType.allCases.enumerated() {
            items.append(
                SearchItem(
                    id: index,
                    name: itemType.rawValue,
                    imageString: itemType.imageName,
                    numberOfItems: index
                )
            )
        }
        return items
    }
}

public enum ItemType: String, CaseIterable {

    case cube, sphere, shuzam, ico, taurus, cone

    public var imageName: String {
        "dummy-item/icon-\(rawValue)"
    }
}
