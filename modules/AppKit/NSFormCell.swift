import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFormCell
    - name: NSFormCell
    - argLabels: 
  */

@objc(NSFormCell) protocol NSFormCellExports: JSExport, NSActionCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: titleWidth
    - name: titleWidth:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func titleWidth(_: CGSize) -> CGFloat

  // Own Instance Properties

  /**
    - jsName: attributedTitle
    - name: attributedTitle
    - argLabels: 
  */
  @objc var attributedTitle: NSAttributedString { @objc get @objc (setAttributedTitle:) set }

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
    - jsName: preferredTextFieldWidth
    - name: preferredTextFieldWidth
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var preferredTextFieldWidth: CGFloat { @objc get @objc (setPreferredTextFieldWidth:) set }

  /**
    - jsName: titleAlignment
    - name: titleAlignment
    - argLabels: 
  */
  @objc var titleAlignment: NSTextAlignment { @objc get @objc (setTitleAlignment:) set }

  /**
    - jsName: titleBaseWritingDirection
    - name: titleBaseWritingDirection
    - argLabels: 
  */
  @objc var titleBaseWritingDirection: NSWritingDirection { @objc get @objc (setTitleBaseWritingDirection:) set }

  /**
    - jsName: titleFont
    - name: titleFont
    - argLabels: 
  */
  @objc var titleFont: NSFont { @objc get @objc (setTitleFont:) set }

  /**
    - jsName: titleWidth
    - name: titleWidth
    - argLabels: 
  */
  @objc var titleWidth: CGFloat { @objc get @objc (setTitleWidth:) set }
}

extension NSFormCell: NSFormCellExports {
}
