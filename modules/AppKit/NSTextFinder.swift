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
    - Selector: NSTextFinder
    - Introduced: 10.7
  */

@objc(NSTextFinder) protocol NSTextFinderExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: drawIncrementalMatchHighlightInRect:
  */
  @objc (drawIncrementalMatchHighlightInRect:) static func drawIncrementalMatchHighlight(in: CGRect)

  // Instance Methods

  /**
    - Selector: cancelFindIndicator
  */
  @objc func cancelFindIndicator()

  /**
    - Selector: noteClientStringWillChange
  */
  @objc func noteClientStringWillChange()

  /**
    - Selector: performAction:
  */
  @objc (performAction:) func performAction(_ p0: NSTextFinder.Action)

  /**
    - Selector: validateAction:
  */
  @objc (validateAction:) func validateAction(_ p0: NSTextFinder.Action) -> Bool

  // Own Instance Properties

  /**
    - Selector: client
  */
  @objc var client: NSTextFinderClient? { @objc get @objc (setClient:) set }

  /**
    - Selector: findBarContainer
  */
  @objc var findBarContainer: NSTextFinderBarContainer? { @objc get @objc (setFindBarContainer:) set }

  /**
    - Selector: findIndicatorNeedsUpdate
  */
  @objc var findIndicatorNeedsUpdate: Bool { @objc get @objc (setFindIndicatorNeedsUpdate:) set }

  /**
    - Selector: incrementalMatchRanges
  */
  @objc var incrementalMatchRanges: [NSValue] { @objc get }

  /**
    - Selector: incrementalSearchingEnabled
  */
  @objc var isIncrementalSearchingEnabled: Bool { @objc get @objc (setIncrementalSearchingEnabled:) set }

  /**
    - Selector: incrementalSearchingShouldDimContentView
  */
  @objc var incrementalSearchingShouldDimContentView: Bool { @objc get @objc (setIncrementalSearchingShouldDimContentView:) set }
}

extension NSTextFinder: NSTextFinderExports {
}
