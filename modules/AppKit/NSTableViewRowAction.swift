import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableViewRowAction
    - name: NSTableViewRowAction
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSTableViewRowAction) protocol NSTableViewRowActionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: rowActionWithStyle:title:handler:
    - argLabels: style, title, handler
    - constructorTokens: 
    - unavailable: true
    - renamed: init(style:title:handler:)
    - message: Not available in Swift
  */
  @objc static func create(style: NSTableViewRowAction.Style, title: String, handler: JSValue) -> Self

  // Own Instance Properties

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor! { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
    - available: 10.12
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: style
    - name: style
    - argLabels: 
  */
  @objc var style: NSTableViewRowAction.Style { @objc get }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }
}

extension NSTableViewRowAction: NSTableViewRowActionExports {
  @objc public static func create(style: NSTableViewRowAction.Style, title: String, handler: JSValue) -> Self {
    return self.init(style: style, title: title, handler: { p1, p2 in
      handler.call(withArguments: [p1 as AnyObject, p2 as AnyObject])!
    })
  }

}
