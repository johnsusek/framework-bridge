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
    - Selector: NSCollectionViewCompositionalLayoutConfiguration
    - Introduced: 10.15
  */

@objc(NSCollectionViewCompositionalLayoutConfiguration) protocol NSCollectionViewCompositionalLayoutConfigurationExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: boundarySupplementaryItems
  */
  @objc var boundarySupplementaryItems: [NSCollectionLayoutBoundarySupplementaryItem] { @objc get @objc (setBoundarySupplementaryItems:) set }

  /**
    - Selector: interSectionSpacing
  */
  @objc var interSectionSpacing: CGFloat { @objc get @objc (setInterSectionSpacing:) set }

  /**
    - Selector: scrollDirection
  */
  @objc var scrollDirection: NSCollectionView.ScrollDirection { @objc get @objc (setScrollDirection:) set }
}

extension NSCollectionViewCompositionalLayoutConfiguration: NSCollectionViewCompositionalLayoutConfigurationExports {
}
