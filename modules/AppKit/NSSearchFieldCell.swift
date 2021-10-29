import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSearchFieldCell
    - name: NSSearchFieldCell
    - argLabels: 
  */

@objc(NSSearchFieldCell) protocol NSSearchFieldCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cancelButtonRect
    - name: cancelButtonRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cancelButtonRect(forBounds:)
  */
  @objc (cancelButtonRectForBounds:) func cancelButtonRect(forBounds: CGRect) -> CGRect

  /**
    - jsName: resetCancelButtonCell
    - name: resetCancelButtonCell
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resetCancelButtonCell()

  /**
    - jsName: resetSearchButtonCell
    - name: resetSearchButtonCell
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resetSearchButtonCell()

  /**
    - jsName: searchButtonRect
    - name: searchButtonRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: searchButtonRect(forBounds:)
  */
  @objc (searchButtonRectForBounds:) func searchButtonRect(forBounds: CGRect) -> CGRect

  /**
    - jsName: searchTextRect
    - name: searchTextRectForBounds:
    - argLabels: forBounds
    - constructorTokens: 
    - obsoleted: 3
    - renamed: searchTextRect(forBounds:)
  */
  @objc (searchTextRectForBounds:) func searchTextRect(forBounds: CGRect) -> CGRect

  // Own Instance Properties

  /**
    - jsName: cancelButtonCell
    - name: cancelButtonCell
    - argLabels: 
  */
  @objc var cancelButtonCell: NSButtonCell? { @objc get @objc (setCancelButtonCell:) set }

  /**
    - jsName: maximumRecents
    - name: maximumRecents
    - argLabels: 
  */
  @objc var maximumRecents: Int { @objc get @objc (setMaximumRecents:) set }

  /**
    - jsName: recentSearches
    - name: recentSearches
    - argLabels: 
  */
  @objc var recentSearches: [String]! { @objc get @objc (setRecentSearches:) set }

  /**
    - jsName: recentsAutosaveName
    - name: recentsAutosaveName
    - argLabels: 
  */
  @objc var recentsAutosaveName: NSSearchField.RecentsAutosaveName? { @objc get @objc (setRecentsAutosaveName:) set }

  /**
    - jsName: searchButtonCell
    - name: searchButtonCell
    - argLabels: 
  */
  @objc var searchButtonCell: NSButtonCell? { @objc get @objc (setSearchButtonCell:) set }

  /**
    - jsName: searchMenuTemplate
    - name: searchMenuTemplate
    - argLabels: 
  */
  @objc var searchMenuTemplate: NSMenu? { @objc get @objc (setSearchMenuTemplate:) set }

  /**
    - jsName: sendsSearchStringImmediately
    - name: sendsSearchStringImmediately
    - argLabels: 
  */
  @objc var sendsSearchStringImmediately: Bool { @objc get @objc (setSendsSearchStringImmediately:) set }

  /**
    - jsName: sendsWholeSearchString
    - name: sendsWholeSearchString
    - argLabels: 
  */
  @objc var sendsWholeSearchString: Bool { @objc get @objc (setSendsWholeSearchString:) set }
}

extension NSSearchFieldCell: NSSearchFieldCellExports {
}
