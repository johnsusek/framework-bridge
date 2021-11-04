import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSCollectionLayoutSection
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSection) protocol NSCollectionLayoutSectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sectionWithGroup:
  */
  @objc static func create(group: NSCollectionLayoutGroup) -> Self

  // Own Instance Properties

  /**
    - Selector: boundarySupplementaryItems
  */
  @objc var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem] { @objc get @objc (setBoundarySupplementaryItems:) set }

  /**
    - Selector: contentInsets
  */
  @objc var contentInsets: NSDirectionalEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - Selector: decorationItems
  */
  @objc var decorationItems: [NSCollectionLayoutDecorationItem] { @objc get @objc (setDecorationItems:) set }

  /**
    - Selector: interGroupSpacing
  */
  @objc var interGroupSpacing: CGFloat { @objc get @objc (setInterGroupSpacing:) set }

  /**
    - Selector: orthogonalScrollingBehavior
  */
  @objc var orthogonalScrollingBehavior: NSCollectionLayoutSectionOrthogonalScrollingBehavior { @objc get @objc (setOrthogonalScrollingBehavior:) set }

  /**
    - Selector: supplementariesFollowContentInsets
  */
  @objc var supplementariesFollowContentInsets: Bool { @objc get @objc (setSupplementariesFollowContentInsets:) set }

  /**
    - Selector: visibleItemsInvalidationHandler
  */
// jsvalue   @objc var visibleItemsInvalidationHandler: JSValue? { @objc get @objc (setVisibleItemsInvalidationHandler:) set }
}

extension NSCollectionLayoutSection: NSCollectionLayoutSectionExports {
  @objc public static func create(group: NSCollectionLayoutGroup) -> Self {
    return self.init(group: group)
  }

}
