import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPickerTouchBarItem
    - name: NSPickerTouchBarItem
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSPickerTouchBarItem) protocol NSPickerTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - jsName: create
    - name: pickerTouchBarItemWithIdentifier:images:selectionMode:target:action:
    - argLabels: identifier, images, selectionMode, target, action
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:images:selectionMode:target:action:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, images: [NSImage], selectionMode: NSPickerTouchBarItem.SelectionMode) -> Self

  /**
    - jsName: create
    - name: pickerTouchBarItemWithIdentifier:labels:selectionMode:target:action:
    - argLabels: identifier, labels, selectionMode, target, action
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:labels:selectionMode:target:action:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSTouchBarItem.Identifier, labels: [String], selectionMode: NSPickerTouchBarItem.SelectionMode) -> Self

  // Instance Methods

  /**
    - jsName: image
    - name: imageAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: image(at:)
  */
  @objc (imageAtIndex:) func image(at: Int) -> NSImage?

  /**
    - jsName: isEnabled
    - name: isEnabledAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isEnabled(at:)
  */
  @objc (isEnabledAtIndex:) func isEnabled(at: Int) -> Bool

  /**
    - jsName: label
    - name: labelAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: label(at:)
  */
  @objc (labelAtIndex:) func label(at: Int) -> String?

  /**
    - jsName: setImage
    - name: setImage:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setImage(_:at:)
  */
  @objc (setImage:atIndex:) func setImage(_: NSImage?, at: Int)

  /**
    - jsName: setLabel
    - name: setLabel:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setLabel(_:at:)
  */
  @objc (setLabel:atIndex:) func setLabel(_: String, at: Int)

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: collapsedRepresentationImage
    - name: collapsedRepresentationImage
    - argLabels: 
  */
  @objc var collapsedRepresentationImage: NSImage? { @objc get @objc (setCollapsedRepresentationImage:) set }

  /**
    - jsName: collapsedRepresentationLabel
    - name: collapsedRepresentationLabel
    - argLabels: 
  */
  @objc var collapsedRepresentationLabel: String { @objc get @objc (setCollapsedRepresentationLabel:) set }

  /**
    - jsName: controlRepresentation
    - name: controlRepresentation
    - argLabels: 
  */
  @objc var controlRepresentation: NSPickerTouchBarItem.ControlRepresentation { @objc get @objc (setControlRepresentation:) set }

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
    - jsName: numberOfOptions
    - name: numberOfOptions
    - argLabels: 
  */
  @objc var numberOfOptions: Int { @objc get @objc (setNumberOfOptions:) set }

  /**
    - jsName: selectedIndex
    - name: selectedIndex
    - argLabels: 
  */
  @objc var selectedIndex: Int { @objc get @objc (setSelectedIndex:) set }

  /**
    - jsName: selectionColor
    - name: selectionColor
    - argLabels: 
  */
  @objc var selectionColor: NSColor? { @objc get @objc (setSelectionColor:) set }

  /**
    - jsName: selectionMode
    - name: selectionMode
    - argLabels: 
  */
  @objc var selectionMode: NSPickerTouchBarItem.SelectionMode { @objc get @objc (setSelectionMode:) set }

  /**
    - jsName: target
    - name: target
    - argLabels: 
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
