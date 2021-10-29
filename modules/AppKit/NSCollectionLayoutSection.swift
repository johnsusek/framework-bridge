import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionLayoutSection
    - name: NSCollectionLayoutSection
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionLayoutSection) protocol NSCollectionLayoutSectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: sectionWithGroup:
    - argLabels: group
    - constructorTokens: 
    - unavailable: true
    - renamed: init(group:)
    - message: Not available in Swift
  */
  @objc static func create(group: NSCollectionLayoutGroup) -> Self

  // Own Instance Properties

  /**
    - jsName: boundarySupplementaryItems
    - name: boundarySupplementaryItems
    - argLabels: 
  */
  @objc var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem] { @objc get @objc (setBoundarySupplementaryItems:) set }

  /**
    - jsName: contentInsets
    - name: contentInsets
    - argLabels: 
  */
  @objc var contentInsets: NSDirectionalEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - jsName: decorationItems
    - name: decorationItems
    - argLabels: 
  */
  @objc var decorationItems: [NSCollectionLayoutDecorationItem] { @objc get @objc (setDecorationItems:) set }

  /**
    - jsName: interGroupSpacing
    - name: interGroupSpacing
    - argLabels: 
  */
  @objc var interGroupSpacing: CGFloat { @objc get @objc (setInterGroupSpacing:) set }

  /**
    - jsName: orthogonalScrollingBehavior
    - name: orthogonalScrollingBehavior
    - argLabels: 
  */
  @objc var orthogonalScrollingBehavior: NSCollectionLayoutSectionOrthogonalScrollingBehavior { @objc get @objc (setOrthogonalScrollingBehavior:) set }

  /**
    - jsName: supplementariesFollowContentInsets
    - name: supplementariesFollowContentInsets
    - argLabels: 
  */
  @objc var supplementariesFollowContentInsets: Bool { @objc get @objc (setSupplementariesFollowContentInsets:) set }

  /**
    - jsName: visibleItemsInvalidationHandler
    - name: visibleItemsInvalidationHandler
    - argLabels: 
  */
// jsvalue   @objc var visibleItemsInvalidationHandler: JSValue? { @objc get @objc (setVisibleItemsInvalidationHandler:) set }
}

extension NSCollectionLayoutSection: NSCollectionLayoutSectionExports {
  @objc public static func create(group: NSCollectionLayoutGroup) -> Self {
    return self.init(group: group)
  }

}
