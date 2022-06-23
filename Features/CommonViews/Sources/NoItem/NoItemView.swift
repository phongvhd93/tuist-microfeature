//
//  NoItemView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

import SwiftUI
import Extensions

public struct NoItemView: View {

    public let viewModel: NoItemViewModel
    public var body: some View {
        VStack(spacing: 17.0) {
            Image(viewModel.imageString)
                .resizable()
                .aspectRatio(1.117, contentMode: .fit)
                .frame(maxWidth: 100.0)
            Text(viewModel.description)
                .foregroundColor(.silverChaliceGray)
                .font(.mediumDescription)
                .multilineTextAlignment(.center)
        }
    }

    public init(viewModel: NoItemViewModel) {
        self.viewModel = viewModel
    }
}

public struct NoItemView_Previews: PreviewProvider {
    
    public static var previews: some View {
        NoItemView(viewModel: .init(name: "shopping cart", imageString: "common-icon/icon-cart"))
            .frame(width: 200.0, height: 400.0)
    }
}
