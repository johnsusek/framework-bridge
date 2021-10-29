import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGroupTouchBarItem
    - name: NSGroupTouchBarItem
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSGroupTouchBarItem) protocol NSGroupTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: alertStyleGroupItemWithIdentifier:
    - argLabels: alertStyleWithIdentifier
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: init(alertStyleWithIdentifier:)
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func create(alertStyleWithIdentifier: NSTouchBarItem.Identifier) -> Self

  /**
    - jsName: create
    - name: groupItemWithIdentifier:items:
    - argLabels: identifier, items
    - constructorTokens: 
    - obsoleted: 3
    - renamed: init(identifier:items:)
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem]) -> Self

  /**
    - jsName: create
    - name: groupItemWithIdentifier:items:allowedCompressionOptions:
    - argLabels: identifier, items, allowedCompressionOptions
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: init(identifier:items:allowedCompressionOptions:)
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func create(identifier: NSTouchBarItem.Identifier, items: [NSTouchBarItem], allowedCompressionOptions: NSUserInterfaceCompressionOptions) -> Self

  // Own Instance Properties

  /**
    - jsName: customizationLabel
    - name: customizationLabel
    - argLabels: 
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - jsName: effectiveCompressionOptions
    - name: effectiveCompressionOptions
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var effectiveCompressionOptions: NSUserInterfaceCompressionOptions { @objc get }

  /**
    - jsName: groupTouchBar
    - name: groupTouchBar
    - argLabels: 
  */
  @objc var groupTouchBar: NSTouchBar { @objc get @objc (setGroupTouchBar:) set }

  /**
    - jsName: groupUserInterfaceLayoutDirection
    - name: groupUserInterfaceLayoutDirection
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var groupUserInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setGroupUserInterfaceLayoutDirection:) set }

  /**
    - jsName: preferredItemWidth
    - name: preferredItemWidth
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var preferredItemWidth: CGFloat { @objc get @objc (setPreferredItemWidth:) set }

  /**
    - jsName: prefersEqualWidths
    - name: prefersEqualWidths
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var prefersEqualWidths: Bool { @objc get @objc (setPrefersEqualWidths:) set }

  /**
    - jsName: prioritizedCompressionOptions
    - name: prioritizedCompressionOptions
    - argLabels: 
    - available: 10.13
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
