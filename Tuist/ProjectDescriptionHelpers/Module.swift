//
//  Module.swift
//  ProjectDescriptionHelpers
//
//  Created by Phong Vo on 14/06/2022.
//

import ProjectDescription

public enum uFeatureTarget {
    
    case framework
    case exampleApp
}

public struct Module {
    let name: String
    let path: String
    let frameworkDependencies: [TargetDependency]
    let exampleDependencies: [TargetDependency]
    let frameworkResources: [String]
    let exampleResources: [String]
//    let testResources: [String]
    let targets: Set<uFeatureTarget>

    public init(name: String,
                path: String,
                frameworkDependencies: [TargetDependency],
                exampleDependencies: [TargetDependency],
                frameworkResources: [String],
                exampleResources: [String],
//                testResources: [String],
                targets: Set<uFeatureTarget> = Set([.framework, .exampleApp])) {
        self.name = name
        self.path = path
        self.frameworkDependencies = frameworkDependencies
        self.exampleDependencies = exampleDependencies
        self.frameworkResources = frameworkResources
        self.exampleResources = exampleResources
//        self.testResources = testResources
        self.targets = targets
    }
}
