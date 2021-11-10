import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
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
// jsvalue   @objc static func createWithCustomGroupWithLayoutSizeWithItemProvider(_ layoutSize: NSCollectionLayoutSize, _ itemProvider: JSValue) -> Self

  /**
    - Selector: horizontalGroupWithLayoutSize:subitem:count:
  */
  @objc static func createWithHorizontalGroupWithLayoutSizeWithSubitemWithCount(_ layoutSize: NSCollectionLayoutSize, _ subitem: NSCollectionLayoutItem, _ count: Int) -> Self

  /**
    - Selector: horizontalGroupWithLayoutSize:subitems:
  */
  @objc static func createWithHorizontalGroupWithLayoutSizeWithSubitems(_ layoutSize: NSCollectionLayoutSize, _ subitems: [NSCollectionLayoutItem]) -> Self

  /**
    - Selector: verticalGroupWithLayoutSize:subitem:count:
  */
  @objc static func createWithVerticalGroupWithLayoutSizeWithSubitemWithCount(_ layoutSize: NSCollectionLayoutSize, _ subitem: NSCollectionLayoutItem, _ count: Int) -> Self

  /**
    - Selector: verticalGroupWithLayoutSize:subitems:
  */
  @objc static func createWithVerticalGroupWithLayoutSizeWithSubitems(_ layoutSize: NSCollectionLayoutSize, _ subitems: [NSCollectionLayoutItem]) -> Self

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

  /**
    - Selector: customGroupWithLayoutSize:itemProvider:
  */
  @objc public static func createWithCustomGroupWithLayoutSizeWithItemProvider(_ layoutSize: NSCollectionLayoutSize, _ itemProvider: JSValue) -> Self {
    return self.custom(layoutSize: layoutSize, itemProvider: { p1 in
      let res = itemProvider.call(withArguments: [p1 as AnyObject])!
      return res.toArray() as! [NSCollectionLayoutGroupCustomItem]
    })
  }


  /**
    - Selector: horizontalGroupWithLayoutSize:subitem:count:
  */
  @objc public static func createWithHorizontalGroupWithLayoutSizeWithSubitemWithCount(_ layoutSize: NSCollectionLayoutSize, _ subitem: NSCollectionLayoutItem, _ count: Int) -> Self {
    return self.horizontal(layoutSize: layoutSize, subitem: subitem, count: count)
  }


  /**
    - Selector: horizontalGroupWithLayoutSize:subitems:
  */
  @objc public static func createWithHorizontalGroupWithLayoutSizeWithSubitems(_ layoutSize: NSCollectionLayoutSize, _ subitems: [NSCollectionLayoutItem]) -> Self {
    return self.horizontal(layoutSize: layoutSize, subitems: subitems)
  }


  /**
    - Selector: verticalGroupWithLayoutSize:subitem:count:
  */
  @objc public static func createWithVerticalGroupWithLayoutSizeWithSubitemWithCount(_ layoutSize: NSCollectionLayoutSize, _ subitem: NSCollectionLayoutItem, _ count: Int) -> Self {
    return self.vertical(layoutSize: layoutSize, subitem: subitem, count: count)
  }


  /**
    - Selector: verticalGroupWithLayoutSize:subitems:
  */
  @objc public static func createWithVerticalGroupWithLayoutSizeWithSubitems(_ layoutSize: NSCollectionLayoutSize, _ subitems: [NSCollectionLayoutItem]) -> Self {
    return self.vertical(layoutSize: layoutSize, subitems: subitems)
  }

}
