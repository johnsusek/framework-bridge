import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSGroupTouchBarItem
    - Introduced: 10.12.2
  */

@objc(NSGroupTouchBarItem) protocol NSGroupTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - Selector: alertStyleGroupItemWithIdentifier:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func create(alertStyleWithIdentifier: NSTouchBarItem.Identifier) -> Self

  /**
    - Selector: groupItemWithIdentifier:items:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem]) -> Self

  /**
    - Selector: groupItemWithIdentifier:items:allowedCompressionOptions:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func create(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem], allowedCompressionOptions: NSUserInterfaceCompressionOptions) -> Self

  // Own Instance Properties

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - Selector: effectiveCompressionOptions
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var effectiveCompressionOptions: NSUserInterfaceCompressionOptions { @objc get }

  /**
    - Selector: groupTouchBar
  */
  @objc var groupTouchBar: NSTouchBar { @objc get @objc (setGroupTouchBar:) set }

  /**
    - Selector: groupUserInterfaceLayoutDirection
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var groupUserInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setGroupUserInterfaceLayoutDirection:) set }

  /**
    - Selector: preferredItemWidth
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var preferredItemWidth: CGFloat { @objc get @objc (setPreferredItemWidth:) set }

  /**
    - Selector: prefersEqualWidths
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var prefersEqualWidths: Bool { @objc get @objc (setPrefersEqualWidths:) set }

  /**
    - Selector: prioritizedCompressionOptions
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var prioritizedCompressionOptions: [NSUserInterfaceCompressionOptions] { @objc get @objc (setPrioritizedCompressionOptions:) set }
}

extension NSGroupTouchBarItem: NSGroupTouchBarItemExports {
  @objc public static func create(alertStyleWithIdentifier: NSTouchBarItem.Identifier) -> Self {
    return self.init(alertStyleWithIdentifier: alertStyleWithIdentifier)
  }

  @objc public static func create(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem]) -> Self {
    return self.init(identifier: identifier, items: items)
  }

  @objc public static func create(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem], allowedCompressionOptions: NSUserInterfaceCompressionOptions) -> Self {
    return self.init(identifier: identifier, items: items, allowedCompressionOptions: allowedCompressionOptions)
  }

}
