import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextField
    - name: NSTextField
    - argLabels: 
  */

@objc(NSTextField) protocol NSTextFieldExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: labelWithAttributedString:
    - argLabels: labelWithAttributedString
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(labelWithAttributedString:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(labelWithAttributedString: NSAttributedString) -> Self

  /**
    - jsName: create
    - name: labelWithString:
    - argLabels: labelWithString
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(labelWithString:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(labelWithString: String) -> Self

  /**
    - jsName: create
    - name: wrappingLabelWithString:
    - argLabels: wrappingLabelWithString
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(wrappingLabelWithString:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(wrappingLabelWithString: String) -> Self

  // Instance Methods

  /**
    - jsName: selectText
    - name: selectText:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func selectText(_: Any?)

  /**
    - jsName: textDidBeginEditing
    - name: textDidBeginEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textDidBeginEditing(_: Notification)

  /**
    - jsName: textDidChange
    - name: textDidChange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textDidChange(_: Notification)

  /**
    - jsName: textDidEndEditing
    - name: textDidEndEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textDidEndEditing(_: Notification)

  /**
    - jsName: textShouldBeginEditing
    - name: textShouldBeginEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textShouldBeginEditing(_: NSText) -> Bool

  /**
    - jsName: textShouldEndEditing
    - name: textShouldEndEditing:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func textShouldEndEditing(_: NSText) -> Bool

  // Own Instance Properties

  /**
    - jsName: allowsCharacterPickerTouchBarItem
    - name: allowsCharacterPickerTouchBarItem
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowsCharacterPickerTouchBarItem: Bool { @objc get @objc (setAllowsCharacterPickerTouchBarItem:) set }

  /**
    - jsName: allowsDefaultTighteningForTruncation
    - name: allowsDefaultTighteningForTruncation
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsDefaultTighteningForTruncation: Bool { @objc get @objc (setAllowsDefaultTighteningForTruncation:) set }

  /**
    - jsName: allowsEditingTextAttributes
    - name: allowsEditingTextAttributes
    - argLabels: 
  */
  @objc var allowsEditingTextAttributes: Bool { @objc get @objc (setAllowsEditingTextAttributes:) set }

  /**
    - jsName: isAutomaticTextCompletionEnabled
    - name: automaticTextCompletionEnabled
    - argLabels: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: isAutomaticTextCompletionEnabled
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var isAutomaticTextCompletionEnabled: Bool { @objc get @objc (setAutomaticTextCompletionEnabled:) set }

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
    - jsName: isBezeled
    - name: bezeled
    - argLabels: 
    - obsoleted: 3
    - renamed: isBezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - jsName: isBordered
    - name: bordered
    - argLabels: 
    - obsoleted: 3
    - renamed: isBordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTextFieldDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: importsGraphics
    - name: importsGraphics
    - argLabels: 
  */
  @objc var importsGraphics: Bool { @objc get @objc (setImportsGraphics:) set }

  /**
    - jsName: maximumNumberOfLines
    - name: maximumNumberOfLines
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maximumNumberOfLines: Int { @objc get @objc (setMaximumNumberOfLines:) set }

  /**
    - jsName: placeholderAttributedString
    - name: placeholderAttributedString
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - jsName: placeholderString
    - name: placeholderString
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var placeholderString: String? { @objc get @objc (setPlaceholderString:) set }

  /**
    - jsName: preferredMaxLayoutWidth
    - name: preferredMaxLayoutWidth
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var preferredMaxLayoutWidth: CGFloat { @objc get @objc (setPreferredMaxLayoutWidth:) set }

  /**
    - jsName: isSelectable
    - name: selectable
    - argLabels: 
    - obsoleted: 3
    - renamed: isSelectable
  */
  @objc var isSelectable: Bool { @objc get @objc (setSelectable:) set }

  /**
    - jsName: textColor
    - name: textColor
    - argLabels: 
  */
  @objc var textColor: NSColor? { @objc get @objc (setTextColor:) set }
}

@objc protocol TextFieldExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - jsName: create
    - name: labelWithAttributedString:
    - argLabels: labelWithAttributedString
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(labelWithAttributedString:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(labelWithAttributedString: NSAttributedString) -> Self

  /**
    - jsName: create
    - name: labelWithString:
    - argLabels: labelWithString
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(labelWithString:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(labelWithString: String) -> Self

  /**
    - jsName: create
    - name: wrappingLabelWithString:
    - argLabels: wrappingLabelWithString
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: init(wrappingLabelWithString:)
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(wrappingLabelWithString: String) -> Self
}

@objc(TextField) public class TextField: NSTextField, TextFieldExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTextField: NSTextFieldExports {
  @objc public static func create(labelWithAttributedString: NSAttributedString) -> Self {
    return self.init(labelWithAttributedString: labelWithAttributedString)
  }

  @objc public static func create(labelWithString: String) -> Self {
    return self.init(labelWithString: labelWithString)
  }

  @objc public static func create(wrappingLabelWithString: String) -> Self {
    return self.init(wrappingLabelWithString: wrappingLabelWithString)
  }

}
