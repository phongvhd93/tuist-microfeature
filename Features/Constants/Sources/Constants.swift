//
//  Constants.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 13/05/2021.
//

import SwiftUI

public enum Constants {

    public enum Collection: Int, CaseIterable {
        case popular, newArrival, forYou

        public var title: String {
            switch self {
            case .popular: return "Popular"
            case .newArrival: return "New Arrival"
            case .forYou: return "For Your"
            }
        }
    }
}

extension Constants {

    public enum TabBar: Int, CaseIterable {
        case home, search, myCart, profile

        public var highlightedImage: Image {
            Image("tabbar/\(name)-fill")
        }
        public var image: Image {
            Image("tabbar/\(name)")
        }

        public var name: String {
            switch self {
            case .home: return "home"
            case .search: return "search"
            case .myCart: return "cart"
            case .profile: return "profile"
            }
        }

        public var title: String {
            switch self {
            case .home: return "Discover"
            case .search: return "Shop"
            case .myCart: return "My Cart"
            case .profile: return "My Account"
            }
        }

        public var tag: Int { self.rawValue }
    }
}
