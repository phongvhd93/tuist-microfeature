//
//  ProductSectionHeaderView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 21/05/2021.
//

import SwiftUI
import Constants

struct ProductSectionHeaderView: View {

    let viewModel: ProductSectionHeaderViewViewModel
    var selectedShop: (() -> Void)?

    var body: some View {
        HStack {
            Text(viewModel.title)
                .font(.headlineTitle)
                .foregroundColor(.charadeGray)
            Spacer()
            Button("Shop all") {
                selectedShop?()
            }
            .font(.system(size: 15.0))
            .foregroundColor(.indigoViolet)
        }
    }
}

struct ProductSectionHeaderView_Previews: PreviewProvider {

    static var previews: some View {
        ProductSectionHeaderView(viewModel: .init(title: "Popular"))
    }
}
