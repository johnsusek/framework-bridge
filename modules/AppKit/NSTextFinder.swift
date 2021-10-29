import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextFinder
    - name: NSTextFinder
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSTextFinder) protocol NSTextFinderExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: drawIncrementalMatchHighlight
    - name: drawIncrementalMatchHighlightInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawIncrementalMatchHighlight(in:)
  */
  @objc (drawIncrementalMatchHighlightInRect:) static func drawIncrementalMatchHighlight(in: CGRect)

  // Instance Methods

  /**
    - jsName: cancelFindIndicator
    - name: cancelFindIndicator
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancelFindIndicator()

  /**
    - jsName: noteClientStringWillChange
    - name: noteClientStringWillChange
    - argLabels: 
    - constructorTokens: 
  */
  @objc func noteClientStringWillChange()

  /**
    - jsName: performAction
    - name: performAction:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (performAction:) func performAction(_: NSTextFinder.Action)

  /**
    - jsName: validateAction
    - name: validateAction:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (validateAction:) func validateAction(_: NSTextFinder.Action) -> Bool

  // Own Instance Properties

  /**
    - jsName: client
    - name: client
    - argLabels: 
  */
  @objc var client: NSTextFinderClient? { @objc get @objc (setClient:) set }

  /**
    - jsName: findBarContainer
    - name: findBarContainer
    - argLabels: 
  */
  @objc var findBarContainer: NSTextFinderBarContainer? { @objc get @objc (setFindBarContainer:) set }

  /**
    - jsName: findIndicatorNeedsUpdate
    - name: findIndicatorNeedsUpdate
    - argLabels: 
  */
  @objc var findIndicatorNeedsUpdate: Bool { @objc get @objc (setFindIndicatorNeedsUpdate:) set }

  /**
    - jsName: incrementalMatchRanges
    - name: incrementalMatchRanges
    - argLabels: 
  */
  @objc var incrementalMatchRanges: [NSValue] { @objc get }

  /**
    - jsName: isIncrementalSearchingEnabled
    - name: incrementalSearchingEnabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isIncrementalSearchingEnabled
  */
  @objc var isIncrementalSearchingEnabled: Bool { @objc get @objc (setIncrementalSearchingEnabled:) set }

  /**
    - jsName: incrementalSearchingShouldDimContentView
    - name: incrementalSearchingShouldDimContentView
    - argLabels: 
  */
  @objc var incrementalSearchingShouldDimContentView: Bool { @objc get @objc (setIncrementalSearchingShouldDimContentView:) set }
}

extension NSTextFinder: NSTextFinderExports {
}
