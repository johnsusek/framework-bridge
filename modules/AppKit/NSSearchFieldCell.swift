import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSearchFieldCell
  */

@objc(NSSearchFieldCell) protocol NSSearchFieldCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cancelButtonRectForBounds:
  */
  @objc (cancelButtonRectForBounds:) func cancelButtonRect(forBounds: CGRect) -> CGRect

  /**
    - Selector: resetCancelButtonCell
  */
  @objc func resetCancelButtonCell()

  /**
    - Selector: resetSearchButtonCell
  */
  @objc func resetSearchButtonCell()

  /**
    - Selector: searchButtonRectForBounds:
  */
  @objc (searchButtonRectForBounds:) func searchButtonRect(forBounds: CGRect) -> CGRect

  /**
    - Selector: searchTextRectForBounds:
  */
  @objc (searchTextRectForBounds:) func searchTextRect(forBounds: CGRect) -> CGRect

  // Own Instance Properties

  /**
    - Selector: cancelButtonCell
  */
  @objc var cancelButtonCell: NSButtonCell? { @objc get @objc (setCancelButtonCell:) set }

  /**
    - Selector: maximumRecents
  */
  @objc var maximumRecents: Int { @objc get @objc (setMaximumRecents:) set }

  /**
    - Selector: recentSearches
  */
  @objc var recentSearches: [String]! { @objc get @objc (setRecentSearches:) set }

  /**
    - Selector: recentsAutosaveName
  */
  @objc var recentsAutosaveName: NSSearchField.RecentsAutosaveName? { @objc get @objc (setRecentsAutosaveName:) set }

  /**
    - Selector: searchButtonCell
  */
  @objc var searchButtonCell: NSButtonCell? { @objc get @objc (setSearchButtonCell:) set }

  /**
    - Selector: searchMenuTemplate
  */
  @objc var searchMenuTemplate: NSMenu? { @objc get @objc (setSearchMenuTemplate:) set }

  /**
    - Selector: sendsSearchStringImmediately
  */
  @objc var sendsSearchStringImmediately: Bool { @objc get @objc (setSendsSearchStringImmediately:) set }

  /**
    - Selector: sendsWholeSearchString
  */
  @objc var sendsWholeSearchString: Bool { @objc get @objc (setSendsWholeSearchString:) set }
}

extension NSSearchFieldCell: NSSearchFieldCellExports {
}
