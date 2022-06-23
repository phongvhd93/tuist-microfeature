//
//  SettingsSectionViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

import CommonViews
import Models
import Foundation

struct SettingsSectionViewModel: Identifiable {

    let id: Int
    let title: String
    let cellViewModels: [SettingsCellViewModel]
}

extension SettingsSectionViewModel {

    init(sectionType: SettingsSectionType) {
        let cellViewModels = sectionType.settingTypes.map {
            SettingsCellViewModel(settingType: $0, resourceBundle: Bundle.module)
        }
        self.init(
            id: sectionType.rawValue,
            title: sectionType.title,
            cellViewModels: cellViewModels
        )
    }
}
