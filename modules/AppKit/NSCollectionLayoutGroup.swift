import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutGroup
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutGroup) protocol NSCollectionLayoutGroupExports: JSExport, NSCollectionLayoutItemExports {
  // Static Methods

  /**
    - Selector: customGroupWithLayoutSize:itemProvider:
  */
// jsvalue   @objc static func custom(layoutSize: NSCollectionLayoutSize, itemProvider: JSValue) -> Self

  /**
    - Selector: horizontalGroupWithLayoutSize:subitem:count:
  */
  @objc static func horizontal(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self

  /**
    - Selector: horizontalGroupWithLayoutSize:subitems:
  */
  @objc static func horizontal(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self

  /**
    - Selector: verticalGroupWithLayoutSize:subitem:count:
  */
  @objc static func vertical(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self

  /**
    - Selector: verticalGroupWithLayoutSize:subitems:
  */
  @objc static func vertical(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self

  // Instance Methods

  /**
    - Selector: visualDescription
  */
  @objc func visualDescription() -> String

  // Own Instance Properties

  /**
    - Selector: interItemSpacing
  */
  @objc var interItemSpacing: NSCollectionLayoutSpacing? { @objc get @objc (setInterItemSpacing:) set }

  /**
    - Selector: subitems
  */
  @objc var subitems: [NSCollectionLayoutItem] { @objc get }

  /**
    - Selector: supplementaryItems
  */
  @objc var supplementaryItems: [NSCollectionLayoutSupplementaryItem] { @objc get @objc (setSupplementaryItems:) set }
}

extension NSCollectionLayoutGroup: NSCollectionLayoutGroupExports {
  @objc public static func custom(layoutSize: NSCollectionLayoutSize, itemProvider: JSValue) -> Self {
    return self.custom(layoutSize: layoutSize, itemProvider: { p1 in
      let res = itemProvider.call(withArguments: [p1 as AnyObject])!
      return res.toArray() as! [NSCollectionLayoutGroupCustomItem]
    })
  }

  @objc public static func horizontal(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self {
    return self.horizontal(layoutSize: layoutSize, subitem: subitem, count: count)
  }

  @objc public static func horizontal(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self {
    return self.horizontal(layoutSize: layoutSize, subitems: subitems)
  }

  @objc public static func vertical(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self {
    return self.vertical(layoutSize: layoutSize, subitem: subitem, count: count)
  }

  @objc public static func vertical(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self {
    return self.vertical(layoutSize: layoutSize, subitems: subitems)
  }

}
