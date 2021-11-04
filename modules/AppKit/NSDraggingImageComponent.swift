import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSDraggingImageComponent
    - Introduced: 10.7
  */

@objc(NSDraggingImageComponent) protocol NSDraggingImageComponentExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: draggingImageComponentWithKey:
  */
  @objc static func create(key: NSDraggingItem.ImageComponentKey) -> NSDraggingImageComponent

  // Own Instance Properties

  /**
    - Selector: contents
  */
  @objc var contents: Any? { @objc get @objc (setContents:) set }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - Selector: key
  */
  @objc var key: NSDraggingItem.ImageComponentKey { @objc get @objc (setKey:) set }
}

extension NSDraggingImageComponent: NSDraggingImageComponentExports {
  @objc public static func create(key: NSDraggingItem.ImageComponentKey) -> NSDraggingImageComponent {
    return self.init(key: key)
  }

}
