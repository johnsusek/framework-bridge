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
// jsvalue   @objc static func createWithLayoutSize_ItemProvider(_ layoutSize: NSCollectionLayoutSize, _ itemProvider: JSValue) -> Self

  /**
    - Selector: horizontalGroupWithLayoutSize:subitem:count:
  */
  @objc static func createWithLayoutSize_Subitem_Count(_ layoutSize: NSCollectionLayoutSize, _ subitem: NSCollectionLayoutItem, _ count: Int) -> Self

  /**
    - Selector: horizontalGroupWithLayoutSize:subitems:
  */
  @objc static func createWithLayoutSize_Subitems(_ layoutSize: NSCollectionLayoutSize, _ subitems: [NSCollectionLayoutItem]) -> Self

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
  @objc public static func createWithLayoutSize_ItemProvider(_ layoutSize: NSCollectionLayoutSize, _ itemProvider: JSValue) -> Self {
    return self.custom(layoutSize: layoutSize, itemProvider: { p1 in
      let res = itemProvider.call(withArguments: [p1 as AnyObject])!
      return res.toArray() as! [NSCollectionLayoutGroupCustomItem]
    })
  }


  /**
    - Selector: horizontalGroupWithLayoutSize:subitem:count:
  */
  @objc public static func createWithLayoutSize_Subitem_Count(_ layoutSize: NSCollectionLayoutSize, _ subitem: NSCollectionLayoutItem, _ count: Int) -> Self {
    return self.horizontal(layoutSize: layoutSize, subitem: subitem, count: count)
  }


  /**
    - Selector: horizontalGroupWithLayoutSize:subitems:
  */
  @objc public static func createWithLayoutSize_Subitems(_ layoutSize: NSCollectionLayoutSize, _ subitems: [NSCollectionLayoutItem]) -> Self {
    return self.horizontal(layoutSize: layoutSize, subitems: subitems)
  }

}
