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
    - Selector: NSDraggingItem
    - Introduced: 10.7
  */

@objc(NSDraggingItem) protocol NSDraggingItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: draggingFrame
  */
  @objc var draggingFrame: CGRect { @objc get @objc (setDraggingFrame:) set }

  /**
    - Selector: imageComponents
  */
  @objc var imageComponents: [NSDraggingImageComponent]? { @objc get }

  /**
    - Selector: imageComponentsProvider
  */
// jsvalue   @objc var imageComponentsProvider: JSValue? { @objc get @objc (setImageComponentsProvider:) set }

  /**
    - Selector: item
  */
  @objc var item: Any { @objc get }
}

extension NSDraggingItem: NSDraggingItemExports {
}
