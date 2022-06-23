//
//  ProductCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

public struct ProductCell: View {

    public var viewModel: ProductCellViewModel

    public var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                Image(viewModel.imageString)
                    .resizable()
                    .aspectRatio(1.108, contentMode: .fit)
                Text(viewModel.name.capitalized)
                    .font(.smallTitle)
                    .foregroundColor(.charadeGray)
                Text(viewModel.formattedPrice)
                    .font(.smallDescription)
                    .foregroundColor(.charadeGray)
            }
            Rectangle()
                .fill(Color.clear)
                .frame(width: 44.0, height: 44.0)
                .overlay {
                    Button(
                        action: {
                            print("did tap heart button of item \(viewModel.name)")
                        },
                        label: {
                            Image("common-icon/icon-heart")
                        }
                    )
                }
        }
        .aspectRatio(contentMode: .fit)
    }

    public init(viewModel: ProductCellViewModel) {
        self.viewModel = viewModel
    }
}

public struct ProductCell_Previews: PreviewProvider {

    public static var previews: some View {
        ProductCell(
            viewModel: ProductCellViewModel(
                id: "1",
                name: "Pink cube",
                imageString: "dummy-tshirt/tshirt-cube-pink",
                price: 10_000,
                currency: "฿"
            )
        )
        .frame(width: 200, height: 300)
    }
}
