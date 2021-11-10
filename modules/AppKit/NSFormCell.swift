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
    - Selector: NSFormCell
  */

@objc(NSFormCell) protocol NSFormCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: titleWidth:
  */
  @objc func titleWidth(_: CGSize) -> CGFloat

  // Own Instance Properties

  /**
    - Selector: attributedTitle
  */
  @objc var attributedTitle: NSAttributedString { @objc get @objc (setAttributedTitle:) set }

  /**
    - Selector: placeholderAttributedString
  */
  @objc var placeholderAttributedString: NSAttributedString? { @objc get @objc (setPlaceholderAttributedString:) set }

  /**
    - Selector: placeholderString
  */
  @objc var placeholderString: String? { @objc get @objc (setPlaceholderString:) set }

  /**
    - Selector: preferredTextFieldWidth
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var preferredTextFieldWidth: CGFloat { @objc get @objc (setPreferredTextFieldWidth:) set }

  /**
    - Selector: titleAlignment
  */
  @objc var titleAlignment: NSTextAlignment { @objc get @objc (setTitleAlignment:) set }

  /**
    - Selector: titleBaseWritingDirection
  */
  @objc var titleBaseWritingDirection: NSWritingDirection { @objc get @objc (setTitleBaseWritingDirection:) set }

  /**
    - Selector: titleFont
  */
  @objc var titleFont: NSFont { @objc get @objc (setTitleFont:) set }

  /**
    - Selector: titleWidth
  */
  @objc var titleWidth: CGFloat { @objc get @objc (setTitleWidth:) set }
}

extension NSFormCell: NSFormCellExports {
}
