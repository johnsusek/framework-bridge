import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionViewCompositionalLayout
    - Introduced: 10.15
  */

@objc(NSCollectionViewCompositionalLayout) protocol NSCollectionViewCompositionalLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithSection:
  */
  @objc static func createWithSection(_: NSCollectionLayoutSection) -> Self

  /**
    - Selector: initWithSection:configuration:
  */
  @objc static func createWithSection(_: NSCollectionLayoutSection, configuration: NSCollectionViewCompositionalLayoutConfiguration) -> Self

  /**
    - Selector: initWithSectionProvider:
  */
  // jsvalue @objc static func createWithSectionProvider(_: JSValue) -> Self

  /**
    - Selector: initWithSectionProvider:configuration:
  */
  // jsvalue @objc static func createWithSectionProvider(_: JSValue, configuration: NSCollectionViewCompositionalLayoutConfiguration) -> Self

  // Own Instance Properties

  /**
    - Selector: configuration
  */
  @objc var configuration: NSCollectionViewCompositionalLayoutConfiguration { @objc get @objc (setConfiguration:) set }
}

extension NSCollectionViewCompositionalLayout: NSCollectionViewCompositionalLayoutExports {
  @objc public static func createWithSection(_ section: NSCollectionLayoutSection) -> Self {
    return self.init(section: section)
  }

  @objc public static func createWithSection(_ section: NSCollectionLayoutSection, configuration: NSCollectionViewCompositionalLayoutConfiguration) -> Self {
    return self.init(section: section, configuration: configuration)
  }

  @objc public static func createWithSectionProvider(_ sectionProvider: JSValue) -> Self {
    return self.init(sectionProvider: { p1, p2 in
      let res = sectionProvider.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
      return res.toObjectOf(NSCollectionLayoutSection.self) as! NSCollectionLayoutSection 
    })
  }

  @objc public static func createWithSectionProvider(_ sectionProvider: JSValue, configuration: NSCollectionViewCompositionalLayoutConfiguration) -> Self {
    return self.init(sectionProvider: { p1, p2 in
      let res = sectionProvider.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
      return res.toObjectOf(NSCollectionLayoutSection.self) as! NSCollectionLayoutSection 
    }, configuration: configuration)
  }

}
