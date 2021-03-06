import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextField
  */

@objc(NSTextField) protocol NSTextFieldExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: labelWithAttributedString:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithLabel_AttributedString(_ labelWithAttributedString: NSAttributedString) -> Self

  /**
    - Selector: labelWithString:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithLabel_String(_ labelWithString: String) -> Self

  /**
    - Selector: textFieldWithString:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithString(_ string: String) -> Self

  /**
    - Selector: wrappingLabelWithString:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithWrappingLabel_String(_ wrappingLabelWithString: String) -> Self

  // Instance Methods

  /**
    - Selector: selectText:
  */
  @objc func selectText(_ p0: Any?)

  /**
    - Selector: textDidBeginEditing:
  */
  @objc func textDidBeginEditing(_ p0: Notification)

  /**
    - Selector: textDidChange:
  */
  @objc func textDidChange(_ p0: Notification)

  /**
    - Selector: textDidEndEditing:
  */
  @objc func textDidEndEditing(_ p0: Notification)

  /**
    - Selector: textShouldBeginEditing:
  */
  @objc func textShouldBeginEditing(_ p0: NSText) -> Bool

  /**
    - Selector: textShouldEndEditing:
  */
  @objc func textShouldEndEditing(_ p0: NSText) -> Bool

  // Own Instance Properties

  /**
    - Selector: allowsCharacterPickerTouchBarItem
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowsCharacterPickerTouchBarItem: Bool { @objc get @objc (setAllowsCharacterPickerTouchBarItem:) set }

  /**
    - Selector: allowsDefaultTighteningForTruncation
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsDefaultTighteningForTruncation: Bool { @objc get @objc (setAllowsDefaultTighteningForTruncation:) set }

  /**
    - Selector: allowsEditingTextAttributes
  */
  @objc var allowsEditingTextAttributes: Bool { @objc get @objc (setAllowsEditingTextAttributes:) set }

  /**
    - Selector: automaticTextCompletionEnabled
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var isAutomaticTextCompletionEnabled: Bool { @objc get @objc (setAutomaticTextCompletionEnabled:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: bezelStyle
  */
  @objc var bezelStyle: NSTextField.BezelStyle { @objc get @objc (setBezelStyle:) set }

  /**
    - Selector: bezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - Selector: bordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTextFieldDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: importsGraphics
  */
  @objc var importsGraphics: Bool { @objc get @objc (setImportsGraphics:) set }

  /**
    - Selector: maximumNumberOfLines
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maximumNumberOfLines: Int { @objc get @objc (setMaximumNumberOfLines:) set }

  /**
    - Selector: placeholderAttributedString
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - Selector: placeholderString
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderString: String? { @objc get @objc (setPlaceholderString:) set }

  /**
    - Selector: preferredMaxLayoutWidth
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var preferredMaxLayoutWidth: CGFloat { @objc get @objc (setPreferredMaxLayoutWidth:) set }

  /**
    - Selector: selectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - Selector: textColor
  */
  @objc var textColor: NSColor? { @objc get @objc (setTextColor:) set }
}

extension NSTextField: NSTextFieldExports {

  /**
    - Selector: labelWithAttributedString:
    - Introduced: 10.12
  */
  @objc public static func createWithLabel_AttributedString(_ labelWithAttributedString: NSAttributedString) -> Self {
    return self.init(labelWithAttributedString: labelWithAttributedString)
  }


  /**
    - Selector: labelWithString:
    - Introduced: 10.12
  */
  @objc public static func createWithLabel_String(_ labelWithString: String) -> Self {
    return self.init(labelWithString: labelWithString)
  }


  /**
    - Selector: textFieldWithString:
    - Introduced: 10.12
  */
  @objc public static func createWithString(_ string: String) -> Self {
    return self.init(string: string)
  }


  /**
    - Selector: wrappingLabelWithString:
    - Introduced: 10.12
  */
  @objc public static func createWithWrappingLabel_String(_ wrappingLabelWithString: String) -> Self {
    return self.init(wrappingLabelWithString: wrappingLabelWithString)
  }

}
