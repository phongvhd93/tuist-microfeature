//
//  SearchItemCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI
import Extensions

public struct SearchItemCell: View {

    public var viewModel: SearchItemCellViewModel

    public var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            Image(viewModel.imageName)
                .resizable()
                .aspectRatio(1.108, contentMode: .fit)
                .padding()
            Text(viewModel.name.capitalized)
                .font(.smallTitle)
                .foregroundColor(.charadeGray)
            Text(viewModel.numberOfItemsString)
                .font(.smallDescription)
                .foregroundColor(.silverChaliceGray)
        }
    }

    public init(viewModel: SearchItemCellViewModel) {
        self.viewModel = viewModel
    }
}

public struct SearchItemCell_Previews: PreviewProvider {

    public static var previews: some View {
        SearchItemCell(
            viewModel: SearchItemCellViewModel(
                id: 1,
                name: "cube",
                imageName: "icon-cube",
                numberOfItems: 1
            )
        )
        .fixedSize(horizontal: true, vertical: true)
    }
}
