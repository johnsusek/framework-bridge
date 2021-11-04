import AppKit
import JavaScriptCore
import Quartz
import AVKit
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

  // Instance Methods

  /**
    - Selector: initWithPasteboardWriter:
  */
  @objc static func createWithPasteboardWriter(_: NSPasteboardWriting) -> Self

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
  @objc public static func createWithPasteboardWriter(_ pasteboardWriter: NSPasteboardWriting) -> Self {
    return self.init(pasteboardWriter: pasteboardWriter)
  }

}
