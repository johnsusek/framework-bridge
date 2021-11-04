import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSearchField
  */

@objc(NSSearchField) protocol NSSearchFieldExports: JSExport, NSTextFieldExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: rectForCancelButtonWhenCentered:
    - Introduced: 10.11
  */
  @objc (rectForCancelButtonWhenCentered:) @available(OSX 10.11, *) func rectForCancelButton(whenCentered: Bool) -> CGRect

  /**
    - Selector: rectForSearchButtonWhenCentered:
    - Introduced: 10.11
  */
  @objc (rectForSearchButtonWhenCentered:) @available(OSX 10.11, *) func rectForSearchButton(whenCentered: Bool) -> CGRect

  /**
    - Selector: rectForSearchTextWhenCentered:
    - Introduced: 10.11
  */
  @objc (rectForSearchTextWhenCentered:) @available(OSX 10.11, *) func rectForSearchText(whenCentered: Bool) -> CGRect

  // Own Instance Properties

  /**
    - Selector: centersPlaceholder
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var centersPlaceholder: Bool { @objc get @objc (setCentersPlaceholder:) set }

  /**
    - Selector: delegate
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var delegate: NSSearchFieldDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: maximumRecents
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var maximumRecents: Int { @objc get @objc (setMaximumRecents:) set }

  /**
    - Selector: recentSearches
  */
  @objc var recentSearches: [String] { @objc get @objc (setRecentSearches:) set }

  /**
    - Selector: recentsAutosaveName
  */
  @objc var recentsAutosaveName: NSSearchField.RecentsAutosaveName? { @objc get @objc (setRecentsAutosaveName:) set }

  /**
    - Selector: searchMenuTemplate
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var searchMenuTemplate: NSMenu? { @objc get @objc (setSearchMenuTemplate:) set }

  /**
    - Selector: sendsSearchStringImmediately
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var sendsSearchStringImmediately: Bool { @objc get @objc (setSendsSearchStringImmediately:) set }

  /**
    - Selector: sendsWholeSearchString
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
