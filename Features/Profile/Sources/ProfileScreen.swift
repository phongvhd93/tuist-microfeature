//
//  ProfileScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI
import CommonViews
import Models

public struct ProfileScreen: View {

    private let sectionViewModels: [SettingsSectionViewModel] = {
        SettingsSectionType.allCases.map(SettingsSectionViewModel.init)
    }()

    private let columns = [GridItem(.flexible())]

    public var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 0.0) {
                    ProfileAboutView(
                        viewModel: .init(
                            fullName: "Joseph Edmed",
                            email: "josephed@mail.com",
                            imageString: "dummy-other/avatar-large-icon"
                        )
                    )
                    ForEach(sectionViewModels) { sectionViewModel in
                        Section(header: SettingSectionHeader(viewModel: sectionViewModel.title)) {
                            ForEach(sectionViewModel.cellViewModels) { cellViewModel in
                                SettingsCell(viewModel: cellViewModel)
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Account")
        }
    }

    public init() {
        
    }
}

public struct ProfileScreen_Previews: PreviewProvider {

    public static var previews: some View {
        ProfileScreen()
    }
}
