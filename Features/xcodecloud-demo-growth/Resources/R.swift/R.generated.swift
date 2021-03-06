//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap { Locale(identifier: $0) } ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)

  /// Find first language and bundle for which the table exists
  fileprivate static func localeBundle(tableName: String, preferredLanguages: [String]) -> (Foundation.Locale, Foundation.Bundle)? {
    // Filter preferredLanguages to localizations, use first locale
    var languages = preferredLanguages
      .map { Locale(identifier: $0) }
      .prefix(1)
      .flatMap { locale -> [String] in
        if hostingBundle.localizations.contains(locale.identifier) {
          if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
            return [locale.identifier, language]
          } else {
            return [locale.identifier]
          }
        } else if let language = locale.languageCode, hostingBundle.localizations.contains(language) {
          return [language]
        } else {
          return []
        }
      }

    // If there's no languages, use development language as backstop
    if languages.isEmpty {
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages = [developmentLocalization]
      }
    } else {
      // Insert Base as second item (between locale identifier and languageCode)
      languages.insert("Base", at: 1)

      // Add development language as backstop
      if let developmentLocalization = hostingBundle.developmentLocalization {
        languages.append(developmentLocalization)
      }
    }

    // Find first language for which table exists
    // Note: key might not exist in chosen language (in that case, key will be shown)
    for language in languages {
      if let lproj = hostingBundle.url(forResource: language, withExtension: "lproj"),
         let lbundle = Bundle(url: lproj)
      {
        let strings = lbundle.url(forResource: tableName, withExtension: "strings")
        let stringsdict = lbundle.url(forResource: tableName, withExtension: "stringsdict")

        if strings != nil || stringsdict != nil {
          return (Locale(identifier: language), lbundle)
        }
      }
    }

    // If table is available in main bundle, don't look for localized resources
    let strings = hostingBundle.url(forResource: tableName, withExtension: "strings", subdirectory: nil, localization: nil)
    let stringsdict = hostingBundle.url(forResource: tableName, withExtension: "stringsdict", subdirectory: nil, localization: nil)

    if strings != nil || stringsdict != nil {
      return (applicationLocale, hostingBundle)
    }

    // If table is not found for requested languages, key will be shown
    return nil
  }

  /// Load string from Info.plist file
  fileprivate static func infoPlistString(path: [String], key: String) -> String? {
    var dict = hostingBundle.infoDictionary
    for step in path {
      guard let obj = dict?[step] as? [String: Any] else { return nil }
      dict = obj
    }
    return dict?[key] as? String
  }

  static func validate() throws {
    try intern.validate()
  }

  #if os(iOS) || os(tvOS)
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()

    #if os(iOS) || os(tvOS)
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    #endif

    fileprivate init() {}
  }
  #endif

  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `AccentColor`.
    static let accentColor = Rswift.ColorResource(bundle: R.hostingBundle, name: "AccentColor")

    #if os(iOS) || os(tvOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func accentColor(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.accentColor, compatibleWith: traitCollection)
    }
    #endif

    #if os(watchOS)
    /// `UIColor(named: "AccentColor", bundle: ..., traitCollection: ...)`
    @available(watchOSApplicationExtension 4.0, *)
    static func accentColor(_: Void = ()) -> UIKit.UIColor? {
      return UIKit.UIColor(named: R.color.accentColor.name)
    }
    #endif

    fileprivate init() {}
  }

  /// This `R.image` struct is generated, and contains static references to 1 images.
  struct image {
    /// Image `logo`.
    static let logo = Rswift.ImageResource(bundle: R.hostingBundle, name: "logo")

    #if os(iOS) || os(tvOS)
    /// `UIImage(named: "logo", bundle: ..., traitCollection: ...)`
    static func logo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.logo, compatibleWith: traitCollection)
    }
    #endif

    /// This `R.image.commonIcon` struct is generated, and contains static references to 6 images.
    struct commonIcon {
      /// Image `icon-back`.
      static let iconBack = Rswift.ImageResource(bundle: R.hostingBundle, name: "common-icon/icon-back")
      /// Image `icon-cart`.
      static let iconCart = Rswift.ImageResource(bundle: R.hostingBundle, name: "common-icon/icon-cart")
      /// Image `icon-disclosure`.
      static let iconDisclosure = Rswift.ImageResource(bundle: R.hostingBundle, name: "common-icon/icon-disclosure")
      /// Image `icon-favorite-light`.
      static let iconFavoriteLight = Rswift.ImageResource(bundle: R.hostingBundle, name: "common-icon/icon-favorite-light")
      /// Image `icon-heart`.
      static let iconHeart = Rswift.ImageResource(bundle: R.hostingBundle, name: "common-icon/icon-heart")
      /// Image `icon-share`.
      static let iconShare = Rswift.ImageResource(bundle: R.hostingBundle, name: "common-icon/icon-share")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-back", bundle: ..., traitCollection: ...)`
      static func iconBack(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.commonIcon.iconBack, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-cart", bundle: ..., traitCollection: ...)`
      static func iconCart(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.commonIcon.iconCart, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-disclosure", bundle: ..., traitCollection: ...)`
      static func iconDisclosure(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.commonIcon.iconDisclosure, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-favorite-light", bundle: ..., traitCollection: ...)`
      static func iconFavoriteLight(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.commonIcon.iconFavoriteLight, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-heart", bundle: ..., traitCollection: ...)`
      static func iconHeart(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.commonIcon.iconHeart, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-share", bundle: ..., traitCollection: ...)`
      static func iconShare(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.commonIcon.iconShare, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.dummyItem` struct is generated, and contains static references to 6 images.
    struct dummyItem {
      /// Image `icon-cone`.
      static let iconCone = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-item/icon-cone")
      /// Image `icon-cube`.
      static let iconCube = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-item/icon-cube")
      /// Image `icon-ico`.
      static let iconIco = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-item/icon-ico")
      /// Image `icon-shuzam`.
      static let iconShuzam = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-item/icon-shuzam")
      /// Image `icon-sphere`.
      static let iconSphere = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-item/icon-sphere")
      /// Image `icon-taurus`.
      static let iconTaurus = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-item/icon-taurus")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-cone", bundle: ..., traitCollection: ...)`
      static func iconCone(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyItem.iconCone, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-cube", bundle: ..., traitCollection: ...)`
      static func iconCube(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyItem.iconCube, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-ico", bundle: ..., traitCollection: ...)`
      static func iconIco(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyItem.iconIco, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-shuzam", bundle: ..., traitCollection: ...)`
      static func iconShuzam(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyItem.iconShuzam, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-sphere", bundle: ..., traitCollection: ...)`
      static func iconSphere(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyItem.iconSphere, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-taurus", bundle: ..., traitCollection: ...)`
      static func iconTaurus(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyItem.iconTaurus, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.dummyOther` struct is generated, and contains static references to 2 images.
    struct dummyOther {
      /// Image `avatar-icon`.
      static let avatarIcon = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-other/avatar-icon")
      /// Image `avatar-large-icon`.
      static let avatarLargeIcon = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-other/avatar-large-icon")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "avatar-icon", bundle: ..., traitCollection: ...)`
      static func avatarIcon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyOther.avatarIcon, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "avatar-large-icon", bundle: ..., traitCollection: ...)`
      static func avatarLargeIcon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyOther.avatarLargeIcon, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.dummyShape` struct is generated, and contains static references to 6 images.
    struct dummyShape {
      /// Image `cube`.
      static let cube = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-shape/cube")
      /// Image `cylinder`.
      static let cylinder = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-shape/cylinder")
      /// Image `ico`.
      static let ico = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-shape/ico")
      /// Image `shuzam`.
      static let shuzam = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-shape/shuzam")
      /// Image `sphere`.
      static let sphere = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-shape/sphere")
      /// Image `torus`.
      static let torus = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-shape/torus")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "cube", bundle: ..., traitCollection: ...)`
      static func cube(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyShape.cube, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "cylinder", bundle: ..., traitCollection: ...)`
      static func cylinder(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyShape.cylinder, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "ico", bundle: ..., traitCollection: ...)`
      static func ico(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyShape.ico, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "shuzam", bundle: ..., traitCollection: ...)`
      static func shuzam(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyShape.shuzam, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "sphere", bundle: ..., traitCollection: ...)`
      static func sphere(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyShape.sphere, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "torus", bundle: ..., traitCollection: ...)`
      static func torus(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyShape.torus, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.dummyTshirt` struct is generated, and contains static references to 9 images.
    struct dummyTshirt {
      /// Image `product-cube`.
      static let productCube = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/product-cube")
      /// Image `tshirt-cube-gray`.
      static let tshirtCubeGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-cube-gray")
      /// Image `tshirt-cube-honey`.
      static let tshirtCubeHoney = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-cube-honey")
      /// Image `tshirt-cube-indigo`.
      static let tshirtCubeIndigo = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-cube-indigo")
      /// Image `tshirt-cube-pink`.
      static let tshirtCubePink = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-cube-pink")
      /// Image `tshirt-ico-honey`.
      static let tshirtIcoHoney = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-ico-honey")
      /// Image `tshirt-shuzam-indigo`.
      static let tshirtShuzamIndigo = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-shuzam-indigo")
      /// Image `tshirt-taurus-gray`.
      static let tshirtTaurusGray = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt-taurus-gray")
      /// Image `tshirt`.
      static let tshirt = Rswift.ImageResource(bundle: R.hostingBundle, name: "dummy-tshirt/tshirt")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "product-cube", bundle: ..., traitCollection: ...)`
      static func productCube(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.productCube, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt", bundle: ..., traitCollection: ...)`
      static func tshirt(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirt, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-cube-gray", bundle: ..., traitCollection: ...)`
      static func tshirtCubeGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtCubeGray, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-cube-honey", bundle: ..., traitCollection: ...)`
      static func tshirtCubeHoney(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtCubeHoney, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-cube-indigo", bundle: ..., traitCollection: ...)`
      static func tshirtCubeIndigo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtCubeIndigo, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-cube-pink", bundle: ..., traitCollection: ...)`
      static func tshirtCubePink(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtCubePink, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-ico-honey", bundle: ..., traitCollection: ...)`
      static func tshirtIcoHoney(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtIcoHoney, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-shuzam-indigo", bundle: ..., traitCollection: ...)`
      static func tshirtShuzamIndigo(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtShuzamIndigo, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "tshirt-taurus-gray", bundle: ..., traitCollection: ...)`
      static func tshirtTaurusGray(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.dummyTshirt.tshirtTaurusGray, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.screenProfile` struct is generated, and contains static references to 7 images.
    struct screenProfile {
      /// Image `icon-billing-address`.
      static let iconBillingAddress = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-billing-address")
      /// Image `icon-log-out`.
      static let iconLogOut = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-log-out")
      /// Image `icon-my-order`.
      static let iconMyOrder = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-my-order")
      /// Image `icon-my-return`.
      static let iconMyReturn = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-my-return")
      /// Image `icon-my-wishlist`.
      static let iconMyWishlist = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-my-wishlist")
      /// Image `icon-shipping-address`.
      static let iconShippingAddress = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-shipping-address")
      /// Image `icon-tax-invoice-address`.
      static let iconTaxInvoiceAddress = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-profile/icon-tax-invoice-address")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-billing-address", bundle: ..., traitCollection: ...)`
      static func iconBillingAddress(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconBillingAddress, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-log-out", bundle: ..., traitCollection: ...)`
      static func iconLogOut(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconLogOut, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-my-order", bundle: ..., traitCollection: ...)`
      static func iconMyOrder(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconMyOrder, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-my-return", bundle: ..., traitCollection: ...)`
      static func iconMyReturn(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconMyReturn, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-my-wishlist", bundle: ..., traitCollection: ...)`
      static func iconMyWishlist(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconMyWishlist, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-shipping-address", bundle: ..., traitCollection: ...)`
      static func iconShippingAddress(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconShippingAddress, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-tax-invoice-address", bundle: ..., traitCollection: ...)`
      static func iconTaxInvoiceAddress(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenProfile.iconTaxInvoiceAddress, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.screenSearch` struct is generated, and contains static references to 2 images.
    struct screenSearch {
      /// Image `icon-search`.
      static let iconSearch = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-search/icon-search")
      /// Image `icon-x-circle`.
      static let iconXCircle = Rswift.ImageResource(bundle: R.hostingBundle, name: "screen-search/icon-x-circle")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-search", bundle: ..., traitCollection: ...)`
      static func iconSearch(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenSearch.iconSearch, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "icon-x-circle", bundle: ..., traitCollection: ...)`
      static func iconXCircle(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.screenSearch.iconXCircle, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    /// This `R.image.tabbar` struct is generated, and contains static references to 8 images.
    struct tabbar {
      /// Image `cart-fill`.
      static let cartFill = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/cart-fill")
      /// Image `cart`.
      static let cart = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/cart")
      /// Image `home-fill`.
      static let homeFill = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/home-fill")
      /// Image `home`.
      static let home = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/home")
      /// Image `profile-fill`.
      static let profileFill = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/profile-fill")
      /// Image `profile`.
      static let profile = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/profile")
      /// Image `search-fill`.
      static let searchFill = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/search-fill")
      /// Image `search`.
      static let search = Rswift.ImageResource(bundle: R.hostingBundle, name: "tabbar/search")

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "cart", bundle: ..., traitCollection: ...)`
      static func cart(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.cart, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "cart-fill", bundle: ..., traitCollection: ...)`
      static func cartFill(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.cartFill, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "home", bundle: ..., traitCollection: ...)`
      static func home(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.home, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "home-fill", bundle: ..., traitCollection: ...)`
      static func homeFill(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.homeFill, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "profile", bundle: ..., traitCollection: ...)`
      static func profile(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.profile, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "profile-fill", bundle: ..., traitCollection: ...)`
      static func profileFill(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.profileFill, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "search", bundle: ..., traitCollection: ...)`
      static func search(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.search, compatibleWith: traitCollection)
      }
      #endif

      #if os(iOS) || os(tvOS)
      /// `UIImage(named: "search-fill", bundle: ..., traitCollection: ...)`
      static func searchFill(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
        return UIKit.UIImage(resource: R.image.tabbar.searchFill, compatibleWith: traitCollection)
      }
      #endif

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  /// This `R.info` struct is generated, and contains static references to 1 properties.
  struct info {
    struct uiApplicationSceneManifest {
      static let _key = "UIApplicationSceneManifest"
      static let uiApplicationSupportsMultipleScenes = true

      fileprivate init() {}
    }

    fileprivate init() {}
  }

  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }

    fileprivate init() {}
  }

  fileprivate class Class {}

  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    #if os(iOS) || os(tvOS)
    try storyboard.validate()
    #endif
  }

  #if os(iOS) || os(tvOS)
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      #if os(iOS) || os(tvOS)
      try launchScreen.validate()
      #endif
    }

    #if os(iOS) || os(tvOS)
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController

      let bundle = R.hostingBundle
      let name = "LaunchScreen"

      static func validate() throws {
        if UIKit.UIImage(named: "logo", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'logo' is used in storyboard 'LaunchScreen', but couldn't be loaded.") }
        if #available(iOS 11.0, tvOS 11.0, *) {
        }
      }

      fileprivate init() {}
    }
    #endif

    fileprivate init() {}
  }
  #endif

  fileprivate init() {}
}
