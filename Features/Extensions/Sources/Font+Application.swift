//
//  Font+Application.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 26/05/2021.
//

import SwiftUI

extension Font {

    public static let largeNavigationBarTitle: Font = { Font.system(size: 34, weight: .bold) }()

    public static let headlineTitle: Font = { Font.system(size: 22, weight: .bold) }()

    public static let headlineDescription: Font = { Font.system(size: 15, weight: .regular) }()

    public static let smallTitle: Font = { Font.system(size: 17, weight: .bold) }()

    public static let smallDescription: Font = { Font.system(size: 13, weight: .regular) }()

    public static let mediumDescription: Font = { Font.system(size: 17, weight: .regular) }()
}
