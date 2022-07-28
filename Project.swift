import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let helpersModule = Module(
    name: "Helpers",
    path: "Helpers",
    frameworkDependencies: [],
    exampleDependencies: [],
    frameworkResources: [],
    exampleResources: [],
    targets: [.framework]
)

let constantsModule = Module(
    name: "Constants",
    path: "Constants",
    frameworkDependencies: [],
    exampleDependencies: [],
    frameworkResources: [],
    exampleResources: [],
    targets: [.framework]
)

let commonViewsModule = Module(
    name: "CommonViews",
    path: "CommonViews",
    frameworkDependencies: [
        .target(name: "Extensions"),
        .target(name: "Models"),
        .target(name: "Helpers"),
        .target(name: "Constants")
    ],
    exampleDependencies: [],
    frameworkResources: [],
    exampleResources: [],
    targets: [.framework]
)

let extensionsModule = Module(
    name: "Extensions",
    path: "Extensions",
    frameworkDependencies: [
        .target(name: "Constants")
    ],
    exampleDependencies: [],
    frameworkResources: [],
    exampleResources: [],
    targets: [.framework]
)

let modelsModule = Module(
    name: "Models",
    path: "Models",
    frameworkDependencies: [
        .target(name: "Extensions"),
        .target(name: "Constants")
    ],
    exampleDependencies: [],
    frameworkResources: [],
    exampleResources: [],
    targets: [.framework]
)

let profileModule = Module(
    name: "Profile",
    path: "Profile",
    frameworkDependencies: [
        .target(name: "CommonViews"),
        .target(name: "Extensions"),
        .target(name: "Models"),
        .target(name: "Constants")
    ],
    exampleDependencies: [],
    frameworkResources: ["Resources/**"],
    exampleResources: ["Resources/**"]
)

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let project = Project.app(
    name: "xcodecloud-demo-growth",
    platform: .iOS,
    modules: [
        commonViewsModule,
        extensionsModule,
        modelsModule,
        profileModule,
        constantsModule,
        helpersModule
    ]
)
