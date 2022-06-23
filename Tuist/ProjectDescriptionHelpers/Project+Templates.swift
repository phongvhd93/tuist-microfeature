import ProjectDescription
import ProjectDescriptionHelpers
import Darwin

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

enum Constants {

    static let orgName = "phong.vo"
    static let featurePath = "Features"
    static let examplePath = "Example"
    static let sourcesPath = "Sources"
    static let resoucesPath = "Resources"
    static let exampleAppSuffix = "ExampleApp"
}

extension Project {
    /// Helper function to create the Project for this ExampleApp
    public static func app(
        name: String,
        platform: Platform,
        modules: [Module],
        externalDependencies: [String] = [],
        targetDependencies: [TargetDependency] = []
    ) -> Project {
        var dependencies = modules.map { TargetDependency.target(name: $0.name) }
        dependencies.append(contentsOf: dependencies)

        var targets = makeAppTargets(
            name: name,
            platform: platform,
            dependencies: dependencies
        )

        let modules = modules.flatMap { makeFrameworkTarget(module: $0, platform: platform) }
        targets.append(contentsOf: modules)

        return Project(
            name: name,
            organizationName: Constants.orgName,
            targets: targets
        )
    }

    public static func makeFrameworkTarget(module: Module, platform: Platform) -> [Target] {
        var targets = [Target]()

        if module.targets.contains(.exampleApp) {
            let exampleAppSourcesPath = "\(Constants.featurePath)/\(module.path)/\(Constants.examplePath)/\(Constants.sourcesPath)"
            let exampleAppResourcePaths = module.exampleResources.map {
                ResourceFileElement.glob(
                    pattern: "\(Constants.featurePath)/\(module.path)/\(Constants.examplePath)/\($0)",
                    tags: []
                )
            }
            let exampleAppResources = ResourceFileElements(resources: exampleAppResourcePaths)
            let infoPlist = makeAppInfoPlist()
            var exampleAppDependencies = module.exampleDependencies
            exampleAppDependencies.append(.target(name: module.name))

            let exampleTarget = Target(
                name: "\(module.name)\(Constants.exampleAppSuffix)",
                platform: platform,
                product: .app,
                bundleId: "\(Constants.orgName).\(module.name).\(Constants.exampleAppSuffix)",
                infoPlist: infoPlist,
                sources: ["\(exampleAppSourcesPath)/**"],
                resources: exampleAppResources,
                dependencies: exampleAppDependencies
            )
            targets.append(exampleTarget)
        }

        if module.targets.contains(.framework) {
            let frameworkPath = "\(Constants.featurePath)/\(module.path)"
            let frameworkResourcePaths = module.frameworkResources.map {
                ResourceFileElement.glob(
                    pattern: "\(Constants.featurePath)/\(module.path)/\($0)",
                    tags: []
                )
            }
            let headers = Headers.headers(public: ["\(frameworkPath)/\(Constants.sourcesPath)/**/*.h"])

            let frameworkTarget = Target(
                name: module.name,
                platform: platform,
                product: .framework,
                bundleId: "\(Constants.orgName).\(module.name)",
                infoPlist: .default,
                sources: ["\(frameworkPath)/\(Constants.sourcesPath)/**"],
                resources: ResourceFileElements(resources: frameworkResourcePaths),
                headers: headers,
                dependencies: module.frameworkDependencies
            )

            targets.append(frameworkTarget)
        }
        return targets
    }

    // MARK: - Private

    private static func makeAppInfoPlist() -> InfoPlist {
        let infoPlist: [String: InfoPlist.Value] = [
            "CFBundleShortVersionString": "1.0",
            "CFBundleVersion": "1",
            "UILaunchStoryboardName": "LaunchScreen"
        ]
        return InfoPlist.extendingDefault(with: infoPlist)
    }

    private static func makeAppTargets(
        name: String,
        platform: Platform,
        dependencies: [TargetDependency]
    ) -> [Target] {
        let mainTarget = Target(
            name: name,
            platform: platform,
            product: .app,
            bundleId: "\(Constants.orgName).\(name)",
            infoPlist: makeAppInfoPlist(),
            sources: [
                "\(Constants.featurePath)/\(name)/\(Constants.sourcesPath)/**",
                "\(Constants.featurePath)/\(name)/Application/**"
            ],
            resources: ["\(Constants.featurePath)/\(name)/\(Constants.resoucesPath)/**"],
            dependencies: dependencies
        )

        return [mainTarget]
    }
}
