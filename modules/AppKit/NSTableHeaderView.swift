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
    - Selector: NSTableHeaderView
  */

@objc(NSTableHeaderView) protocol NSTableHeaderViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: columnAtPoint:
  */
  @objc (columnAtPoint:) func column(at: CGPoint) -> Int

  /**
    - Selector: headerRectOfColumn:
  */
  @objc (headerRectOfColumn:) func headerRect(ofColumn: Int) -> CGRect

  // Own Instance Properties

  /**
    - Selector: draggedColumn
  */
  @objc var draggedColumn: Int { @objc get }

  /**
    - Selector: draggedDistance
  */
  @objc var draggedDistance: CGFloat { @objc get }

  /**
    - Selector: resizedColumn
  */
  @objc var resizedColumn: Int { @objc get }

  /**
    - Selector: tableView
  */
  @objc var tableView: NSTableView? { @objc get @objc (setTableView:) set }
}

extension NSTableHeaderView: NSTableHeaderViewExports {
}
