//
//  DeeplinkUtility.swift
//  ecommerce-ios
//
//  Created by Bliss on 21/5/21.
//

import Foundation

public enum DeeplinkUtility {

    public static let deeplinkScheme = "ecommerce-swiftui://"

    public static func idFromURL(_ url: URL) -> Int? {
        return Int(url.host ?? "")
    }
}
