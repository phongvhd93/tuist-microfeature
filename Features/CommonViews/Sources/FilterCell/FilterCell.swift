//
//  FilterCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

public struct FilterCell: View {

    public let viewModel: String

    public var body: some View {
        VStack {
            Spacer()

            HStack(spacing: 14.0) {
                Text(viewModel.capitalized)
                    .font(.mediumDescription)
                    .foregroundColor(.charadeGray)

                Spacer()

                Image("common-icon/icon-disclosure")
                    .scaledToFill()
                    .frame(width: 8.0, height: 13.0)
            }
            .padding(.horizontal, 16.0)

            Spacer()

            Color.altoGray
                .frame(height: 1.0)
                .padding(.leading, 16.0)
        }
    }

    public init(viewModel: String) {
        self.viewModel = viewModel
    }
}

public struct FilterCell_Previews: PreviewProvider {

    public static var previews: some View {
        FilterCell(viewModel: "Category")
            .frame(width: .infinity, height: 100.0)
    }
}
