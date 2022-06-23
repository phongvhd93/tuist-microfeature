//
//  NoItemViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

public struct NoItemViewModel {

    public let name: String
    public let imageString: String

    public var description: String {
        "There are no items on your \(name)."
    }

    public init(
        name: String,
        imageString: String
    ) {
        self.name = name
        self.imageString = imageString
    }
}
