//
//  SettingSectionHeader.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

import SwiftUI

public struct SettingSectionHeader: View {

    public let viewModel: String

    public var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Text(viewModel.capitalized)
                    .foregroundColor(.charadeGray)
                    .font(.system(size: 22, weight: .bold))
                    .padding(.horizontal, 16.0)
                    .padding(.vertical, 8.0)
                Spacer()
            }
        }
        .frame(minHeight: 56.0)
    }

    public init(viewModel: String) {
        self.viewModel = viewModel
    }
}

public struct SettingsSectionHeader_Previews: PreviewProvider {
    
    public static var previews: some View {
        SettingSectionHeader(viewModel: "My Order")
    }
}
