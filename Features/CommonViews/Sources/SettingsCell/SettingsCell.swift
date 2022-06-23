//
//  SettingCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

import SwiftUI
import Extensions

public struct SettingsCell: View {

    public let viewModel: SettingsCellViewModel

    public var body: some View {
        HStack(spacing: 14.0) {
            Color.white
                .frame(width: 44.0, height: 44.0)
                .overlay {
                    Image(viewModel.imageString, bundle: viewModel.resourceBundle)
                        .scaledToFit()
                        .frame(maxWidth: 23.0, maxHeight: 23.0)
                }
            Text(viewModel.settingName)
                .font(.mediumDescription)
                .foregroundColor(.charadeGray)
            Spacer()
            Image("common-icon/icon-disclosure", bundle: viewModel.resourceBundle)
                .scaledToFill()
                .frame(width: 8.0, height: 13.0)
        }
        .padding(.horizontal, 16.0)
    }

    public init(viewModel: SettingsCellViewModel) {
        self.viewModel = viewModel
    }
}

public struct SettingsCell_Previews: PreviewProvider {

    public static var previews: some View {
        SettingsCell(
            viewModel: .init(
                id: 0,
                imageString: "screen-profile/icon-my-order",
                settingName: "My orders",
                resourceBundle: .main
            )
        )
    }
}
