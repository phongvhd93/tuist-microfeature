//
//  SearchBarView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI
import Extensions

public struct SearchBarView: View {

    @Binding public var searchKeyword: String

    public var body: some View {
        HStack(spacing: 12.0) {
            HStack {
                Image("screen-search/icon-search")
                    .frame(width: 14.0, height: 14.0)
                    .padding()

                TextField("Search", text: $searchKeyword)
                    .font(.mediumDescription)
                    .padding(.vertical)

                Color.clear
                    .frame(width: 44.0, height: 44.0)
                    .overlay {
                        Button(
                            action: { searchKeyword = "" },
                            label: { Image("screen-search/icon-x-circle") }
                        )
                        .hidden(searchKeyword.isEmpty)
                    }
            }
            .background(Color.galleryGray)
            .cornerRadius(10.0)

            Button("Cancel") {
                print("did tap cancel button")
            }
        }
        .padding()
    }

    public init(searchKeyword: Binding<String>) {
        _searchKeyword = searchKeyword
    }
}

public struct SearchBarScreen_Previews: PreviewProvider {

    public static var previews: some View {
        SearchScreen()
    }
}
