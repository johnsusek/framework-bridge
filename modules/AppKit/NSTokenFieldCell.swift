import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTokenFieldCell
    - name: NSTokenFieldCell
    - argLabels: 
  */

@objc(NSTokenFieldCell) protocol NSTokenFieldCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: defaultCompletionDelay
    - name: defaultCompletionDelay
    - argLabels: 
  */
  @objc static var defaultCompletionDelay: TimeInterval { @objc get }

  /**
    - jsName: defaultTokenizingCharacterSet
    - name: defaultTokenizingCharacterSet
    - argLabels: 
  */
  @objc static var defaultTokenizingCharacterSet: CharacterSet { @objc get }

  // Own Instance Properties

  /**
    - jsName: completionDelay
    - name: completionDelay
    - argLabels: 
  */
  @objc var completionDelay: TimeInterval { @objc get @objc (setCompletionDelay:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTokenFieldCellDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: tokenStyle
    - name: tokenStyle
    - argLabels: 
  */
  @objc var tokenStyle: NSTokenField.TokenStyle { @objc get @objc (setTokenStyle:) set }

  /**
    - jsName: tokenizingCharacterSet
    - name: tokenizingCharacterSet
    - argLabels: 
  */
  @objc var tokenizingCharacterSet: CharacterSet! { @objc get @objc (setTokenizingCharacterSet:) set }
}

extension NSTokenFieldCell: NSTokenFieldCellExports {
}
