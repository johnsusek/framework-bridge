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
    - Selector: NSCollectionViewFlowLayout
    - Introduced: 10.11
  */

@objc(NSCollectionViewFlowLayout) protocol NSCollectionViewFlowLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: collapseSectionAtIndex:
    - Introduced: 10.12
  */
  @objc (collapseSectionAtIndex:) @available(OSX 10.12, *) func collapseSection(at: Int)

  /**
    - Selector: expandSectionAtIndex:
    - Introduced: 10.12
  */
  @objc (expandSectionAtIndex:) @available(OSX 10.12, *) func expandSection(at: Int)

  /**
    - Selector: sectionAtIndexIsCollapsed:
    - Introduced: 10.12
  */
  @objc (sectionAtIndexIsCollapsed:) @available(OSX 10.12, *) func section(atIndexIsCollapsed: Int) -> Bool

  // Own Instance Properties

  /**
    - Selector: estimatedItemSize
  */
  @objc var estimatedItemSize: CGSize { @objc get @objc (setEstimatedItemSize:) set }

  /**
    - Selector: footerReferenceSize
  */
  @objc var footerReferenceSize: CGSize { @objc get @objc (setFooterReferenceSize:) set }

  /**
    - Selector: headerReferenceSize
  */
  @objc var headerReferenceSize: CGSize { @objc get @objc (setHeaderReferenceSize:) set }

  /**
    - Selector: itemSize
  */
  @objc var itemSize: CGSize { @objc get @objc (setItemSize:) set }

  /**
    - Selector: minimumInteritemSpacing
  */
  @objc var minimumInteritemSpacing: CGFloat { @objc get @objc (setMinimumInteritemSpacing:) set }

  /**
    - Selector: minimumLineSpacing
  */
  @objc var minimumLineSpacing: CGFloat { @objc get @objc (setMinimumLineSpacing:) set }

  /**
    - Selector: scrollDirection
  */
  @objc var scrollDirection: NSCollectionView.ScrollDirection { @objc get @objc (setScrollDirection:) set }

  /**
    - Selector: sectionFootersPinToVisibleBounds
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var sectionFootersPinToVisibleBounds: Bool { @objc get @objc (setSectionFootersPinToVisibleBounds:) set }

  /**
    - Selector: sectionHeadersPinToVisibleBounds
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var sectionHeadersPinToVisibleBounds: Bool { @objc get @objc (setSectionHeadersPinToVisibleBounds:) set }

  /**
    - Selector: sectionInset
  */
  @objc var sectionInset: NSEdgeInsets { @objc get @objc (setSectionInset:) set }
}

extension NSCollectionViewFlowLayout: NSCollectionViewFlowLayoutExports {
}
