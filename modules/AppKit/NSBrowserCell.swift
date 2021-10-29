import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSBrowserCell
    - name: NSBrowserCell
    - argLabels: 
  */

@objc(NSBrowserCell) protocol NSBrowserCellExports: JSExport, NSCellExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: branchImage
    - name: branchImage
    - argLabels: 
  */
  @objc static var branchImage: NSImage? { @objc get }

  /**
    - jsName: highlightedBranchImage
    - name: highlightedBranchImage
    - argLabels: 
  */
  @objc static var highlightedBranchImage: NSImage? { @objc get }

  // Instance Methods

  /**
    - jsName: highlightColor
    - name: highlightColorInView:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: highlightColor(in:)
  */
  @objc (highlightColorInView:) func highlightColor(in: NSView) -> NSColor?

  /**
    - jsName: reset
    - name: reset
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reset()

  /**
    - jsName: set
    - name: set
    - argLabels: 
    - constructorTokens: 
  */
  @objc func set()

  // Own Instance Properties

  /**
    - jsName: alternateImage
    - name: alternateImage
    - argLabels: 
  */
  @objc var alternateImage: NSImage? { @objc get @objc (setAlternateImage:) set }

  /**
    - jsName: isLeaf
    - name: leaf
    - argLabels: 
    - obsoleted: 3
    - renamed: isLeaf
  */
  @objc var isLeaf: Bool { @objc get @objc (setLeaf:) set }

  /**
    - jsName: isLoaded
    - name: loaded
    - argLabels: 
    - obsoleted: 3
    - renamed: isLoaded
  */
  @objc var isLoaded: Bool { @objc get @objc (setLoaded:) set }
}

extension NSBrowserCell: NSBrowserCellExports {
}
