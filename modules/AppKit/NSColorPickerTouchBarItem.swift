import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorPickerTouchBarItem
    - name: NSColorPickerTouchBarItem
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSColorPickerTouchBarItem) protocol NSColorPickerTouchBarItemExports: JSExport, NSTouchBarItemExports {
  // Static Methods

  /**
    - jsName: colorPicker
    - name: colorPickerWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: colorPicker(withIdentifier:)
  */
  @objc static func colorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self

  /**
    - jsName: colorPicker
    - name: colorPickerWithIdentifier:buttonImage:
    - argLabels: withIdentifier, buttonImage
    - constructorTokens: 
    - obsoleted: 3
    - renamed: colorPicker(withIdentifier:buttonImage:)
  */
  @objc static func colorPicker(withIdentifier: NSTouchBarItem.Identifier, buttonImage: NSImage) -> Self

  /**
    - jsName: strokeColorPicker
    - name: strokeColorPickerWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: strokeColorPicker(withIdentifier:)
  */
  @objc static func strokeColorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self

  /**
    - jsName: textColorPicker
    - name: textColorPickerWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: textColorPicker(withIdentifier:)
  */
  @objc static func textColorPicker(withIdentifier: NSTouchBarItem.Identifier) -> Self

  // Own Instance Properties

  /**
    - jsName: action
    - name: action
    - argLabels: 
  */
  @objc var action: Selector? { @objc get @objc (setAction:) set }

  /**
    - jsName: allowedColorSpaces
    - name: allowedColorSpaces
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var allowedColorSpaces: [NSColorSpace]? { @objc get @objc (setAllowedColorSpaces:) set }

  /**
    - jsName: color
    - name: color
    - argLabels: 
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }

  /**
    - jsName: colorList
    - name: colorList
    - argLabels: 
  */
  @objc var colorList: NSColorList! { @objc get @objc (setColorList:) set }

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
    - jsName: showsAlpha
    - name: showsAlpha
    - argLabels: 
  */
  @objc var showsAlpha: Bool { @objc get @objc (setShowsAlpha:) set }

  /**
    - jsName: target
    - name: target
    - argLabels: 
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
