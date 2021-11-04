import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTokenFieldCell
  */

@objc(NSTokenFieldCell) protocol NSTokenFieldCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultCompletionDelay
  */
  @objc static var defaultCompletionDelay: TimeInterval { @objc get }

  /**
    - Selector: defaultTokenizingCharacterSet
  */
  @objc static var defaultTokenizingCharacterSet: CharacterSet { @objc get }

  // Own Instance Properties

  /**
    - Selector: completionDelay
  */
  @objc var completionDelay: TimeInterval { @objc get @objc (setCompletionDelay:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTokenFieldCellDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: tokenStyle
  */
  @objc var tokenStyle: NSTokenField.TokenStyle { @objc get @objc (setTokenStyle:) set }

  /**
    - Selector: tokenizingCharacterSet
  */
  @objc var tokenizingCharacterSet: CharacterSet! { @objc get @objc (setTokenizingCharacterSet:) set }
}

extension NSTokenFieldCell: NSTokenFieldCellExports {
}
