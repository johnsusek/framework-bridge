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
    - Selector: NSCollectionViewItem
    - Introduced: 10.5
  */

@objc(NSCollectionViewItem) protocol NSCollectionViewItemExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: collectionView
  */
  @objc var collectionView: NSCollectionView? { @objc get }

  /**
    - Selector: draggingImageComponents
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var draggingImageComponents: [NSDraggingImageComponent] { @objc get }

  /**
    - Selector: highlightState
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var highlightState: NSCollectionViewItem.HighlightState { @objc get @objc (setHighlightState:) set }

  /**
    - Selector: imageView
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var imageView: NSImageView? { @objc get @objc (setImageView:) set }

  /**
    - Selector: selected
  */
  @objc var isSelected: Bool { @objc get @objc (setSelected:) set }

  /**
    - Selector: textField
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var textField: NSTextField? { @objc get @objc (setTextField:) set }
}

extension NSCollectionViewItem: NSCollectionViewItemExports {
}
