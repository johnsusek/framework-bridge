import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewCompositionalLayoutConfiguration
    - name: NSCollectionViewCompositionalLayoutConfiguration
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSCollectionViewCompositionalLayoutConfiguration) protocol NSCollectionViewCompositionalLayoutConfigurationExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: boundarySupplementaryItems
    - name: boundarySupplementaryItems
    - argLabels: 
  */
  @objc var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem] { @objc get @objc (setBoundarySupplementaryItems:) set }

  /**
    - jsName: interSectionSpacing
    - name: interSectionSpacing
    - argLabels: 
  */
  @objc var interSectionSpacing: CGFloat { @objc get @objc (setInterSectionSpacing:) set }

  /**
    - jsName: scrollDirection
    - name: scrollDirection
    - argLabels: 
  */
  @objc var scrollDirection: NSCollectionView.ScrollDirection { @objc get @objc (setScrollDirection:) set }
}

extension NSCollectionViewCompositionalLayoutConfiguration: NSCollectionViewCompositionalLayoutConfigurationExports {
}
