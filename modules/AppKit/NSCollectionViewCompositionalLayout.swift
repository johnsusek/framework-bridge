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
    - Selector: NSCollectionViewCompositionalLayout
    - Introduced: 10.15
  */

@objc(NSCollectionViewCompositionalLayout) protocol NSCollectionViewCompositionalLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: configuration
  */
  @objc var configuration: NSCollectionViewCompositionalLayoutConfiguration { @objc get @objc (setConfiguration:) set }
}

extension NSCollectionViewCompositionalLayout: NSCollectionViewCompositionalLayoutExports {
}
