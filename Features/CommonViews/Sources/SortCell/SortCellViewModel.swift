//
//  SortCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import Models

public struct SortCellViewModel: Identifiable, Equatable {

    public let id: Int
    public let title: String
    public let subtitle: String
}

extension SortCellViewModel {

    public init(sortType: SortType) {
        id = sortType.rawValue
        title = sortType.title
        subtitle = sortType.subtitle
    }
}
