import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewFlowLayout
    - name: NSCollectionViewFlowLayout
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSCollectionViewFlowLayout) protocol NSCollectionViewFlowLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: collapseSection
    - name: collapseSectionAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: collapseSection(at:)
    - Introduced: 10.12
  */
  @objc (collapseSectionAtIndex:) @available(OSX 10.12, *) func collapseSection(at: Int)

  /**
    - jsName: expandSection
    - name: expandSectionAtIndex:
    - argLabels: at
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: expandSection(at:)
    - Introduced: 10.12
  */
  @objc (expandSectionAtIndex:) @available(OSX 10.12, *) func expandSection(at: Int)

  /**
    - jsName: section
    - name: sectionAtIndexIsCollapsed:
    - argLabels: atIndexIsCollapsed
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: section(atIndexIsCollapsed:)
    - Introduced: 10.12
  */
  @objc (sectionAtIndexIsCollapsed:) @available(OSX 10.12, *) func section(atIndexIsCollapsed: Int) -> Bool

  // Own Instance Properties

  /**
    - jsName: estimatedItemSize
    - name: estimatedItemSize
    - argLabels: 
  */
  @objc var estimatedItemSize: CGSize { @objc get @objc (setEstimatedItemSize:) set }

  /**
    - jsName: footerReferenceSize
    - name: footerReferenceSize
    - argLabels: 
  */
  @objc var footerReferenceSize: CGSize { @objc get @objc (setFooterReferenceSize:) set }

  /**
    - jsName: headerReferenceSize
    - name: headerReferenceSize
    - argLabels: 
  */
  @objc var headerReferenceSize: CGSize { @objc get @objc (setHeaderReferenceSize:) set }

  /**
    - jsName: itemSize
    - name: itemSize
    - argLabels: 
  */
  @objc var itemSize: CGSize { @objc get @objc (setItemSize:) set }

  /**
    - jsName: minimumInteritemSpacing
    - name: minimumInteritemSpacing
    - argLabels: 
  */
  @objc var minimumInteritemSpacing: CGFloat { @objc get @objc (setMinimumInteritemSpacing:) set }

  /**
    - jsName: minimumLineSpacing
    - name: minimumLineSpacing
    - argLabels: 
  */
  @objc var minimumLineSpacing: CGFloat { @objc get @objc (setMinimumLineSpacing:) set }

  /**
    - jsName: scrollDirection
    - name: scrollDirection
    - argLabels: 
  */
  @objc var scrollDirection: NSCollectionView.ScrollDirection { @objc get @objc (setScrollDirection:) set }

  /**
    - jsName: sectionFootersPinToVisibleBounds
    - name: sectionFootersPinToVisibleBounds
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var sectionFootersPinToVisibleBounds: Bool { @objc get @objc (setSectionFootersPinToVisibleBounds:) set }

  /**
    - jsName: sectionHeadersPinToVisibleBounds
    - name: sectionHeadersPinToVisibleBounds
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var sectionHeadersPinToVisibleBounds: Bool { @objc get @objc (setSectionHeadersPinToVisibleBounds:) set }

  /**
    - jsName: sectionInset
    - name: sectionInset
    - argLabels: 
  */
  @objc var sectionInset: NSEdgeInsets { @objc get @objc (setSectionInset:) set }
}

extension NSCollectionViewFlowLayout: NSCollectionViewFlowLayoutExports {
}
