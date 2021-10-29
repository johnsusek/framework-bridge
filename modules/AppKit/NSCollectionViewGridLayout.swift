import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewGridLayout
    - name: NSCollectionViewGridLayout
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSCollectionViewGridLayout) protocol NSCollectionViewGridLayoutExports: JSExport, NSCollectionViewLayoutExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: backgroundColors
    - name: backgroundColors
    - argLabels: 
  */
  @objc var backgroundColors: [NSColor]! { @objc get @objc (setBackgroundColors:) set }

  /**
    - jsName: margins
    - name: margins
    - argLabels: 
  */
  @objc var margins: NSEdgeInsets { @objc get @objc (setMargins:) set }

  /**
    - jsName: maximumItemSize
    - name: maximumItemSize
    - argLabels: 
  */
  @objc var maximumItemSize: CGSize { @objc get @objc (setMaximumItemSize:) set }

  /**
    - jsName: maximumNumberOfColumns
    - name: maximumNumberOfColumns
    - argLabels: 
  */
  @objc var maximumNumberOfColumns: Int { @objc get @objc (setMaximumNumberOfColumns:) set }

  /**
    - jsName: maximumNumberOfRows
    - name: maximumNumberOfRows
    - argLabels: 
  */
  @objc var maximumNumberOfRows: Int { @objc get @objc (setMaximumNumberOfRows:) set }

  /**
    - jsName: minimumInteritemSpacing
    - name: minimumInteritemSpacing
    - argLabels: 
  */
  @objc var minimumInteritemSpacing: CGFloat { @objc get @objc (setMinimumInteritemSpacing:) set }

  /**
    - jsName: minimumItemSize
    - name: minimumItemSize
    - argLabels: 
  */
  @objc var minimumItemSize: CGSize { @objc get @objc (setMinimumItemSize:) set }

  /**
    - jsName: minimumLineSpacing
    - name: minimumLineSpacing
    - argLabels: 
  */
  @objc var minimumLineSpacing: CGFloat { @objc get @objc (setMinimumLineSpacing:) set }
}

extension NSCollectionViewGridLayout: NSCollectionViewGridLayoutExports {
}
