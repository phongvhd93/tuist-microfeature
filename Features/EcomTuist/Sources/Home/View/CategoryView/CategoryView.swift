//
//  CategoryView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 17/05/2021.
//

import SwiftUI
import Models

struct CategoryView: View {

    var category: Models.Category

    var body: some View {
        VStack(spacing: 0.0) {
            Image(category.imageString)
                .resizable()
                .frame(width: 70.0, height: 62.0)
            Text(category.name)
                .font(.smallDescription)
                .foregroundColor(.charadeGray)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {

    static var previews: some View {
        CategoryView(category: Models.Category.categories.first!)
            .previewLayout(.fixed(width: 80.0, height: 88.0))
    }
}
