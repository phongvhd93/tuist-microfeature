//
//  Color+Application.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

extension Color {

    // MARK: - Blue

    /// 0x201547
    public static let darkBlue: Color = .init(hex: 0x201547)

    // MARK: - Gray

    /// #292A33
    public static var charadeGray: Color { Color(hex: 0x292A33) }

    /// #A9A9A9
    public static var silverChaliceGray: Color { Color(hex: 0xA9A9A9) }

    /// #0xD4D4D4
    public static var altoGray: Color { Color(hex: 0xD4D4D4) }

    /// #EFEFEF
    public static var galleryGray: Color { Color(hex: 0xEFEFEF) }

    /// #F9FBFD Gray 100
    public static var blackSqueeze: Color { Color(hex: 0xF9FBFD) }

    // MARK: - Violet

    /// #534ACC
    public static var indigoViolet: Color { Color(hex: 0x534ACC) }

    // MARK: - Initialize

    public init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }

    public init(hexString: String) {
        var hex: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&hex)
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: 1.0
        )
    }
}
