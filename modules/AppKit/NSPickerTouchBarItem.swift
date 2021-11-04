import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPickerTouchBarItem
    - Introduced: 10.15
  */

@objc(NSPickerTouchBarItem) protocol NSPickerTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - Selector: pickerTouchBarItemWithIdentifier:images:selectionMode:target:action:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, images: [NSImage], selectionMode: NSPickerTouchBarItem.SelectionMode) -> Self

  /**
    - Selector: pickerTouchBarItemWithIdentifier:labels:selectionMode:target:action:
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, labels: [String], selectionMode: NSPickerTouchBarItem.SelectionMode) -> Self

  // Instance Methods

  /**
    - Selector: imageAtIndex:
  */
  @objc (imageAtIndex:) func image(at: Int) -> NSImage?

  /**
    - Selector: isEnabledAtIndex:
  */
  @objc (isEnabledAtIndex:) func isEnabled(at: Int) -> Bool

  /**
    - Selector: labelAtIndex:
  */
  @objc (labelAtIndex:) func label(at: Int) -> String?

  /**
    - Selector: setImage:atIndex:
  */
  @objc (setImage:atIndex:) func setImage(_: NSImage?, at: Int)

  /**
    - Selector: setLabel:atIndex:
  */
  @objc (setLabel:atIndex:) func setLabel(_: String, at: Int)

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: collapsedRepresentationImage
  */
  @objc var collapsedRepresentationImage: NSImage? { @objc get @objc (setCollapsedRepresentationImage:) set }

  /**
    - Selector: collapsedRepresentationLabel
  */
  @objc var collapsedRepresentationLabel: String { @objc get @objc (setCollapsedRepresentationLabel:) set }

  /**
    - Selector: controlRepresentation
  */
  @objc var controlRepresentation: NSPickerTouchBarItem.ControlRepresentation { @objc get @objc (setControlRepresentation:) set }

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: numberOfOptions
  */
  @objc var numberOfOptions: Int { @objc get @objc (setNumberOfOptions:) set }

  /**
    - Selector: selectedIndex
  */
  @objc var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - Selector: selectionColor
  */
  @objc var selectionColor: NSColor? { @objc get @objc (setSelectionColor:) set }

  /**
    - Selector: selectionMode
  */
  @objc var selectionMode: NSPickerTouchBarItem.SelectionMode { @objc get @objc (setSelectionMode:) set }

  /**
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }
}

extension NSPickerTouchBarItem: NSPickerTouchBarItemExports {
  @objc public static func create(identifier: NSTouchBarItem.Identifier, images: [NSImage], selectionMode: NSPickerTouchBarItem.SelectionMode) -> Self {
    return self.init(identifier: identifier, images: images, selectionMode: selectionMode, target: nil, action: nil)
  }

  @objc public static func create(identifier: NSTouchBarItem.Identifier, labels: [String], selectionMode: NSPickerTouchBarItem.SelectionMode) -> Self {
    return self.init(identifier: identifier, labels: labels, selectionMode: selectionMode, target: nil, action: nil)
  }

}
