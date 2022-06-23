//
//  SortType.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

public enum SortType: Int, CaseIterable {

    case new
    case priceHighToLow
    case priceLowToHigh

    public var title: String {
        switch self {
        case .new: return "New"
        case .priceHighToLow, .priceLowToHigh: return "Price"
        }
    }

    public var subtitle: String {
        switch self {
        case .new: return ""
        case .priceHighToLow: return "High to low"
        case .priceLowToHigh: return "Low to high"
        }
    }
}
