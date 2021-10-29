import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCollectionViewItem
    - name: NSCollectionViewItem
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSCollectionViewItem) protocol NSCollectionViewItemExports: JSExport, NSViewControllerExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: collectionView
    - name: collectionView
    - argLabels: 
  */
  @objc var collectionView: NSCollectionView? { @objc get }

  /**
    - jsName: draggingImageComponents
    - name: draggingImageComponents
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var draggingImageComponents: [NSDraggingImageComponent] { @objc get }

  /**
    - jsName: highlightState
    - name: highlightState
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var highlightState: NSCollectionViewItem.HighlightState { @objc get @objc (setHighlightState:) set }

  /**
    - jsName: imageView
    - name: imageView
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var imageView: NSImageView? { @objc get @objc (setImageView:) set }

  /**
    - jsName: isSelected
    - name: selected
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelected
  */
  @objc var isSelected: Bool { @objc get @objc (setSelected:) set }

  /**
    - jsName: textField
    - name: textField
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var textField: NSTextField? { @objc get @objc (setTextField:) set }
}

extension NSCollectionViewItem: NSCollectionViewItemExports {
}
