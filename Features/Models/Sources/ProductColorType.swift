//
//  ProductColorType.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

public enum ProductColorType: String, CaseIterable {

    case pink, indigo, honey, gray

    public var name: String { rawValue }

    public var code: String {
        switch self {
        case .pink: return "E40046"
        case .indigo: return "534ACC"
        case .honey: return "FF8200"
        case .gray: return "858999"
        }
    }
}
