import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextFieldCell
    - name: NSTextFieldCell
    - argLabels: 
  */

@objc(NSTextFieldCell) protocol NSTextFieldCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: setWantsNotificationForMarkedText
    - name: setWantsNotificationForMarkedText:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func setWantsNotificationForMarkedText(_: Bool)

  // Own Instance Properties

  /**
    - jsName: allowedInputSourceLocales
    - name: allowedInputSourceLocales
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var allowedInputSourceLocales: [String]? { @objc get @objc (setAllowedInputSourceLocales:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: bezelStyle
    - name: bezelStyle
    - argLabels: 
  */
  @objc var bezelStyle: NSTextField.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - jsName: placeholderAttributedString
    - name: placeholderAttributedString
    - argLabels: 
  */
  @objc var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - jsName: placeholderString
    - name: placeholderString
    - argLabels: 
  */
  @objc var placeholderString: String? { @objc get @objc (setPlaceholderString:) set }

  /**
    - jsName: textColor
    - name: textColor
    - argLabels: 
  */
  @objc var textColor: NSColor? { @objc get @objc (setTextColor:) set }
}

extension NSTextFieldCell: NSTextFieldCellExports {
}
