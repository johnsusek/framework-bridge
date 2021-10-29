import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDraggingItem
    - name: NSDraggingItem
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSDraggingItem) protocol NSDraggingItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithPasteboardWriter
    - name: initWithPasteboardWriter:
    - argLabels: 
    - constructorTokens: pasteboardWriter
  */
  @objc static func createWithPasteboardWriter(_: NSPasteboardWriting) -> Self

  // Own Instance Properties

  /**
    - jsName: draggingFrame
    - name: draggingFrame
    - argLabels: 
  */
  @objc var draggingFrame: CGRect { @objc get @objc (setDraggingFrame:) set }

  /**
    - jsName: imageComponents
    - name: imageComponents
    - argLabels: 
  */
  @objc var imageComponents: [NSDraggingImageComponent]? { @objc get }

  /**
    - jsName: imageComponentsProvider
    - name: imageComponentsProvider
    - argLabels: 
  */
// jsvalue   @objc var imageComponentsProvider: JSValue? { @objc get @objc (setImageComponentsProvider:) set }

  /**
    - jsName: item
    - name: item
    - argLabels: 
  */
  @objc var item: Any { @objc get }
}

extension NSDraggingItem: NSDraggingItemExports {
  @objc public static func createWithPasteboardWriter(_ pasteboardWriter: NSPasteboardWriting) -> Self {
    return self.init(pasteboardWriter: pasteboardWriter)
  }

}
