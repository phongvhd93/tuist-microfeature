//
//  SettingsCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

import Models
import Foundation

public struct SettingsCellViewModel: Identifiable {

    public let id: Int
    public let imageString: String
    public let settingName: String
    public let resourceBundle: Bundle?
}

extension SettingsCellViewModel {

    public init(settingType: SettingsType, resourceBundle: Bundle?) {
        self.init(
            id: settingType.rawValue,
            imageString: settingType.imageString,
            settingName: settingType.title,
            resourceBundle: resourceBundle
        )
    }
}
