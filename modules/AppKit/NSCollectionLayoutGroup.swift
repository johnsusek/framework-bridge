import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutGroup
    - name: NSCollectionLayoutGroup
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutGroup) protocol NSCollectionLayoutGroupExports: JSExport, NSCollectionLayoutItemExports {
  // Static Methods

  /**
    - jsName: custom
    - name: customGroupWithLayoutSize:itemProvider:
    - argLabels: layoutSize, itemProvider
    - constructorTokens: 
    - obsoleted: 3
    - renamed: custom(layoutSize:itemProvider:)
  */
  @objc static func custom(layoutSize: NSCollectionLayoutSize, itemProvider: JSValue) -> Self

  /**
    - jsName: horizontal
    - name: horizontalGroupWithLayoutSize:subitem:count:
    - argLabels: layoutSize, subitem, count
    - constructorTokens: 
    - obsoleted: 3
    - renamed: horizontal(layoutSize:subitem:count:)
  */
  @objc static func horizontal(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self

  /**
    - jsName: horizontal
    - name: horizontalGroupWithLayoutSize:subitems:
    - argLabels: layoutSize, subitems
    - constructorTokens: 
    - obsoleted: 3
    - renamed: horizontal(layoutSize:subitems:)
  */
  @objc static func horizontal(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self

  /**
    - jsName: vertical
    - name: verticalGroupWithLayoutSize:subitem:count:
    - argLabels: layoutSize, subitem, count
    - constructorTokens: 
    - obsoleted: 3
    - renamed: vertical(layoutSize:subitem:count:)
  */
  @objc static func vertical(layoutSize: NSCollectionLayoutSize, subitem: NSCollectionLayoutItem, count: Int) -> Self

  /**
    - jsName: vertical
    - name: verticalGroupWithLayoutSize:subitems:
    - argLabels: layoutSize, subitems
    - constructorTokens: 
    - obsoleted: 3
    - renamed: vertical(layoutSize:subitems:)
  */
  @objc static func vertical(layoutSize: NSCollectionLayoutSize, subitems: [NSCollectionLayoutItem]) -> Self

  // Instance Methods

  /**
    - jsName: visualDescription
    - name: visualDescription
    - argLabels: 
    - constructorTokens: 
  */
  @objc func visualDescription() -> String

  // Own Instance Properties

  /**
    - jsName: interItemSpacing
    - name: interItemSpacing
    - argLabels: 
  */
  @objc var interItemSpacing: NSCollectionLayoutSpacing? { @objc get @objc (setInterItemSpacing:) set }

  /**
    - jsName: subitems
    - name: subitems
    - argLabels: 
  */
  @objc var subitems: [NSCollectionLayoutItem] { @objc get }

  /**
    - jsName: supplementaryItems
    - name: supplementaryItems
    - argLabels: 
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
