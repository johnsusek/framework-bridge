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
    - Selector: NSCollectionViewGridLayout
    - Introduced: 10.11
  */

@objc(NSCollectionViewGridLayout) protocol NSCollectionViewGridLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: backgroundColors
  */
  @objc var backgroundColors: [NSColor]! { @objc get @objc (setBackgroundColors:) set }

  /**
    - Selector: margins
  */
  @objc var margins: NSEdgeInsets { @objc get @objc (setMargins:) set }

  /**
    - Selector: maximumItemSize
  */
  @objc var maximumItemSize: CGSize { @objc get @objc (setMaximumItemSize:) set }

  /**
    - Selector: maximumNumberOfColumns
  */
  @objc var maximumNumberOfColumns: Int { @objc get @objc (setMaximumNumberOfColumns:) set }

  /**
    - Selector: maximumNumberOfRows
  */
  @objc var maximumNumberOfRows: Int { @objc get @objc (setMaximumNumberOfRows:) set }

  /**
    - Selector: minimumInteritemSpacing
  */
  @objc var minimumInteritemSpacing: CGFloat { @objc get @objc (setMinimumInteritemSpacing:) set }

  /**
    - Selector: minimumItemSize
  */
  @objc var minimumItemSize: CGSize { @objc get @objc (setMinimumItemSize:) set }

  /**
    - Selector: minimumLineSpacing
  */
  @objc var minimumLineSpacing: CGFloat { @objc get @objc (setMinimumLineSpacing:) set }
}

extension NSCollectionViewGridLayout: NSCollectionViewGridLayoutExports {
}
