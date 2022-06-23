//
//  ProductCollectionView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import SwiftUI
import Models
import Helpers

public struct ProductCollectionView: View {

    public let viewModel: ProductCollectionViewViewModel

    public var goToCollection: ((String) -> Void)?
    public var didScrollToEnd: (() -> Void)?

    private let numberOfColumns: Int = 2
    private let spacing: CGFloat = 17.0

    fileprivate var columns: [GridItem] {
        .init(repeating: GridItem(.flexible()), count: numberOfColumns)
    }

    public var body: some View {
        LazyVStack {
            ForEach(viewModel.sectionViewModels) { section in
                VStack {
                    ProductSectionHeaderView(viewModel: .init(title: section.title)) {
                        goToCollection?(section.title)
                    }

                    LazyVGrid(columns: columns, spacing: spacing) {
                        ForEach(section.cellViewModels) { cellVM in
                            NavigationLink(destination: ProductDetailScreen()) {
                                ProductCell(viewModel: cellVM)
                            }
                            .onAppear {
                                if cellVM.isLast {
                                    didScrollToEnd?()
                                }
                            }
                        }
                    }
                    .padding(.vertical, 10.0)
                }
            }
        }
        .padding(.horizontal, 15.0)
    }

    public init(
        viewModel: ProductCollectionViewViewModel,
        goToCollection: ((String) -> Void)?,
        didScrollToEnd: (() -> Void)?
    ) {
        self.viewModel = viewModel
        self.goToCollection = goToCollection
        self.didScrollToEnd = didScrollToEnd
    }

    public init(viewModel: ProductCollectionViewViewModel) {
        self.viewModel = viewModel
    }
}

public struct ProductCollectionView_Previews: PreviewProvider {

    public static var previews: some View {
        ProductCollectionView(viewModel: .init())
            .previewLayout(.fixed(width: screenWidth, height: 261.0))
    }
}
