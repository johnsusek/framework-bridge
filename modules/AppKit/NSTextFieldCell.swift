import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextFieldCell
  */

@objc(NSTextFieldCell) protocol NSTextFieldCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setWantsNotificationForMarkedText:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setWantsNotificationForMarkedText(_: Bool)

  // Own Instance Properties

  /**
    - Selector: allowedInputSourceLocales
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowedInputSourceLocales: [String]? { @objc get @objc (setAllowedInputSourceLocales:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: bezelStyle
  */
  @objc var bezelStyle: NSTextField.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - Selector: placeholderAttributedString
  */
  @objc var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - Selector: placeholderString
  */
  @objc var placeholderString: String? { @objc get @objc (setPlaceholderString:) set }

  /**
    - Selector: textColor
  */
  @objc var textColor: NSColor? { @objc get @objc (setTextColor:) set }
}

extension NSTextFieldCell: NSTextFieldCellExports {
}
