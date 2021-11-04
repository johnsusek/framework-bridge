import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSColorPickerTouchBarItem
    - Introduced: 10.12.2
  */

@objc(NSColorPickerTouchBarItem) protocol NSColorPickerTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - Selector: colorPickerWithIdentifier:
  */
  @objc static func colorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self

  /**
    - Selector: colorPickerWithIdentifier:buttonImage:
  */
  @objc static func colorPicker(withIdentifier: NSTouchBarItem.Identifier, buttonImage: NSImage) -> Self

  /**
    - Selector: strokeColorPickerWithIdentifier:
  */
  @objc static func strokeColorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self

  /**
    - Selector: textColorPickerWithIdentifier:
  */
  @objc static func textColorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self

  // Own Instance Properties

  /**
    - Selector: action
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - Selector: allowedColorSpaces
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowedColorSpaces: [NSColorSpace]? { @objc get @objc (setAllowedColorSpaces:) set }

  /**
    - Selector: color
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }

  /**
    - Selector: colorList
  */
  @objc var colorList: NSColorList! { @objc get @objc (setColorList:) set }

  /**
    - Selector: customizationLabel
  */
  @objc var customizationLabel: String! { @objc get @objc (setCustomizationLabel:) set }

  /**
    - Selector: enabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }

  /**
    - Selector: showsAlpha
  */
  @objc var showsAlpha: Bool { @objc get @objc (setShowsAlpha:) set }

  /**
    - Selector: target
  */
  @objc var target: AnyObject? { @objc get @objc (setTarget:) set }
}

extension NSColorPickerTouchBarItem: NSColorPickerTouchBarItemExports {
  @objc public static func colorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self {
    return self.colorPicker(withIdentifier: withIdentifier)
  }

  @objc public static func colorPicker(withIdentifier: NSTouchBarItem.Identifier, buttonImage: NSImage) -> Self {
    return self.colorPicker(withIdentifier: withIdentifier, buttonImage: buttonImage)
  }

  @objc public static func strokeColorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self {
    return self.strokeColorPicker(withIdentifier: withIdentifier)
  }

  @objc public static func textColorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self {
    return self.textColorPicker(withIdentifier: withIdentifier)
  }

}
