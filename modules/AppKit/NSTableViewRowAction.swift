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
    - Selector: NSTableViewRowAction
    - Introduced: 10.11
  */

@objc(NSTableViewRowAction) protocol NSTableViewRowActionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: rowActionWithStyle:title:handler:
  */
// jsvalue   @objc static func createWithRowActionWithStyleWithTitleWithHandler(_ style: NSTableViewRowAction.Style, _ title: String, _ handler: JSValue) -> Self

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor! { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: image
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: style
  */
  @objc var style: NSTableViewRowAction.Style { @objc get }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }
}

extension NSTableViewRowAction: NSTableViewRowActionExports {

  /**
    - Selector: rowActionWithStyle:title:handler:
  */
  @objc public static func createWithRowActionWithStyleWithTitleWithHandler(_ style: NSTableViewRowAction.Style, _ title: String, _ handler: JSValue) -> Self {
    return self.init(style: style, title: title, handler: { p1, p2 in
      handler.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
    })
  }

}
