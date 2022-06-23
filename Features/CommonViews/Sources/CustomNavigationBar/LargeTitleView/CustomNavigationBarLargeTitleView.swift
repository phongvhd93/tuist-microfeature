//
//  CustomNavigationBarLargeTitleView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

public struct CustomNavigationBarLargeTitleView<TitleView, TrailingView>: View where TitleView: View, TrailingView: View {

    public let titleView: () -> TitleView
    public let trailingView: () -> TrailingView

    public init(
        @ViewBuilder titleView: @escaping () -> TitleView,
        @ViewBuilder trailingView: @escaping () -> TrailingView
    ) {
        self.titleView = titleView
        self.trailingView = trailingView
    }

    public var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .center) {
                titleView().padding()
                Spacer()
                trailingView().padding()
            }
        }
        .background(Color.white)
    }
}
