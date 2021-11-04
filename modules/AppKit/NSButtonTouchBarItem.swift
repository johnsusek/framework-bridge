import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSButtonTouchBarItem
    - Introduced: 10.15
  */

@objc(NSButtonTouchBarItem) protocol NSButtonTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - Selector: buttonTouchBarItemWithIdentifier:image:target:action:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, image: NSImage) -> Self

  /**
    - Selector: buttonTouchBarItemWithIdentifier:title:image:target:action:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, title: String, image: NSImage) -> Self

  /**
    - Selector: buttonTouchBarItemWithIdentifier:title:target:action:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, title: String) -> Self

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: bezelColor
  */
  @objc var bezelColor: NSColor? { @objc get @objc (setBezelColor:) set }

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: image
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }
}

extension NSButtonTouchBarItem: NSButtonTouchBarItemExports {
  @objc public static func create(identifier: NSTouchBarItem.Identifier, image: NSImage) -> Self {
    return self.init(identifier: identifier, image: image, target: nil, action: nil)
  }

  @objc public static func create(identifier: NSTouchBarItem.Identifier, title: String, image: NSImage) -> Self {
    return self.init(identifier: identifier, title: title, image: image, target: nil, action: nil)
  }

  @objc public static func create(identifier: NSTouchBarItem.Identifier, title: String) -> Self {
    return self.init(identifier: identifier, title: title, target: nil, action: nil)
  }

}
