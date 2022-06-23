//
//  ProfileAboutView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI
import Extensions
import Helpers

public struct ProfileAboutView: View {

    public let viewModel: ProfileAboutViewModel
    public var body: some View {
        ZStack {
            HStack(spacing: 12.0) {
                Image(viewModel.imageString, bundle: .module)
                    .scaledToFill()
                    .frame(width: 60.0, height: 60.0)
                VStack(alignment: .leading) {
                    Text(viewModel.fullName)
                        .font(.smallTitle)
                        .foregroundColor(.charadeGray)
                    Text(viewModel.email)
                        .font(.mediumDescription)
                        .foregroundColor(.silverChaliceGray)
                }
                Spacer()
                Image("common-icon/icon-disclosure", bundle: .module)
                    .scaledToFill()
                    .frame(width: 8.0, height: 13.0)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 20.0)
        }
    }

    public init(viewModel: ProfileAboutViewModel) {
        self.viewModel = viewModel
    }
}

public struct ProfileAboutView_Previews: PreviewProvider {

    public static var previews: some View {
        ProfileAboutView(
            viewModel: .init(
                fullName: "Joseph Edmed",
                email: "josephed@mail.com",
                imageString: "avatar-large-icon"
            )
        )
        .frame(width: screenWidth, height: 100.0)
    }
}
