//
//  SearchItemRowViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//
import CommonViews

struct SearchItemRowViewModel: Identifiable {

    let id: Int
    let viewModels: [SearchItemCellViewModel?]
}
