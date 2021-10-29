import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDraggingImageComponent
    - name: NSDraggingImageComponent
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSDraggingImageComponent) protocol NSDraggingImageComponentExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: draggingImageComponentWithKey:
    - argLabels: key
    - constructorTokens: 
    - unavailable: true
    - renamed: init(key:)
    - message: Not available in Swift
  */
  @objc static func create(key: NSDraggingItem.ImageComponentKey) -> NSDraggingImageComponent

  // Own Instance Properties

  /**
    - jsName: contents
    - name: contents
    - argLabels: 
  */
  @objc var contents: Any? { @objc get @objc (setContents:) set }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - jsName: key
    - name: key
    - argLabels: 
  */
  @objc var key: NSDraggingItem.ImageComponentKey { @objc get @objc (setKey:) set }
}

extension NSDraggingImageComponent: NSDraggingImageComponentExports {
  @objc public static func create(key: NSDraggingItem.ImageComponentKey) -> NSDraggingImageComponent {
    return self.init(key: key)
  }

}
