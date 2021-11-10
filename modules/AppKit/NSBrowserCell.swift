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
    - Selector: NSBrowserCell
  */

@objc(NSBrowserCell) protocol NSBrowserCellExports: JSExport, NSCellExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: branchImage
  */
  @objc static var branchImage: NSImage? { @objc get }

  /**
    - Selector: highlightedBranchImage
  */
  @objc static var highlightedBranchImage: NSImage? { @objc get }

  // Instance Methods

  /**
    - Selector: highlightColorInView:
  */
  @objc (highlightColorInView:) func highlightColor(in: NSView) -> NSColor?

  /**
    - Selector: reset
  */
  @objc func reset()

  /**
    - Selector: set
  */
  @objc func set()

  // Own Instance Properties

  /**
    - Selector: alternateImage
  */
  @objc var alternateImage: NSImage? { @objc get @objc (setAlternateImage:) set }

  /**
    - Selector: leaf
  */
  @objc var isLeaf: Bool { @objc get @objc (setLeaf:) set }

  /**
    - Selector: loaded
  */
  @objc var isLoaded: Bool { @objc get @objc (setLoaded:) set }
}

extension NSBrowserCell: NSBrowserCellExports {
}
