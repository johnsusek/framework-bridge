import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSButtonTouchBarItem
    - name: NSButtonTouchBarItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSButtonTouchBarItem) protocol NSButtonTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: buttonTouchBarItemWithIdentifier:image:target:action:
    - argLabels: identifier, image, target, action
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:image:target:action:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, image: NSImage) -> Self

  /**
    - jsName: create
    - name: buttonTouchBarItemWithIdentifier:title:image:target:action:
    - argLabels: identifier, title, image, target, action
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:title:image:target:action:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, title: String, image: NSImage) -> Self

  /**
    - jsName: create
    - name: buttonTouchBarItemWithIdentifier:title:target:action:
    - argLabels: identifier, title, target, action
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:title:target:action:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, title: String) -> Self

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: bezelColor
    - name: bezelColor
    - argLabels: 
  */
  @objc var bezelColor: NSColor? { @objc get @objc (setBezelColor:) set }

  /**
    - jsName: customizationLabel
    - name: customizationLabel
    - argLabels: 
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage? { @objc get @objc (setImage:) set }

  /**
    - jsName: target
    - name: target
    - argLabels: 
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
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
