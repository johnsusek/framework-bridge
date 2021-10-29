import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSearchField
    - name: NSSearchField
    - argLabels: 
  */

@objc(NSSearchField) protocol NSSearchFieldExports: JSExport, NSTextFieldExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: rectForCancelButton
    - name: rectForCancelButtonWhenCentered:
    - argLabels: whenCentered
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectForCancelButton(whenCentered:)
    - introduced: 10.11
    - deprecated: 100000
    - Introduced: 10.11
  */
  @objc (rectForCancelButtonWhenCentered:) @available(OSX 10.11, *) func rectForCancelButton(whenCentered: Bool) -> CGRect

  /**
    - jsName: rectForSearchButton
    - name: rectForSearchButtonWhenCentered:
    - argLabels: whenCentered
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectForSearchButton(whenCentered:)
    - introduced: 10.11
    - deprecated: 100000
    - Introduced: 10.11
  */
  @objc (rectForSearchButtonWhenCentered:) @available(OSX 10.11, *) func rectForSearchButton(whenCentered: Bool) -> CGRect

  /**
    - jsName: rectForSearchText
    - name: rectForSearchTextWhenCentered:
    - argLabels: whenCentered
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rectForSearchText(whenCentered:)
    - introduced: 10.11
    - deprecated: 100000
    - Introduced: 10.11
  */
  @objc (rectForSearchTextWhenCentered:) @available(OSX 10.11, *) func rectForSearchText(whenCentered: Bool) -> CGRect

  // Own Instance Properties

  /**
    - jsName: centersPlaceholder
    - name: centersPlaceholder
    - argLabels: 
    - introduced: 10.11
    - deprecated: 100000
    - message: The placeholder centering UI design is no longer available. Setting this property is no-op.
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var centersPlaceholder: Bool { @objc get @objc (setCentersPlaceholder:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var delegate: NSSearchFieldDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: maximumRecents
    - name: maximumRecents
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var maximumRecents: Int { @objc get @objc (setMaximumRecents:) set }

  /**
    - jsName: recentSearches
    - name: recentSearches
    - argLabels: 
  */
  @objc var recentSearches: [String] { @objc get @objc (setRecentSearches:) set }

  /**
    - jsName: recentsAutosaveName
    - name: recentsAutosaveName
    - argLabels: 
  */
  @objc var recentsAutosaveName: NSSearchField.RecentsAutosaveName? { @objc get @objc (setRecentsAutosaveName:) set }

  /**
    - jsName: searchMenuTemplate
    - name: searchMenuTemplate
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var searchMenuTemplate: NSMenu? { @objc get @objc (setSearchMenuTemplate:) set }

  /**
    - jsName: sendsSearchStringImmediately
    - name: sendsSearchStringImmediately
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sendsSearchStringImmediately: Bool { @objc get @objc (setSendsSearchStringImmediately:) set }

  /**
    - jsName: sendsWholeSearchString
    - name: sendsWholeSearchString
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sendsWholeSearchString: Bool { @objc get @objc (setSendsWholeSearchString:) set }
}

@objc protocol SearchFieldExports: JSExport, NSTextFieldExports {
  // Static Methods
}

@objc(SearchField) public class SearchField: NSSearchField, SearchFieldExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSSearchField: NSSearchFieldExports {
}
