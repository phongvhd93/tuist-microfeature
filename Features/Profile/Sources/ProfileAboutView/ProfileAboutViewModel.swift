//
//  ProfileAboutViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

public struct ProfileAboutViewModel {

    public let fullName: String
    public let email: String
    public let imageString: String

    public init(
        fullName: String,
        email: String,
        imageString: String
    ) {
        self.fullName = fullName
        self.email = email
        self.imageString = imageString
    }
}
