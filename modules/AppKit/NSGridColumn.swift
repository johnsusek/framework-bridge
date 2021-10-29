import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSGridColumn
    - name: NSGridColumn
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSGridColumn) protocol NSGridColumnExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cell
    - name: cellAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cell(at:)
  */
  @objc (cellAtIndex:) func cell(at: Int) -> NSGridCell

  /**
    - jsName: mergeCells
    - name: mergeCellsInRange:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: mergeCells(in:)
  */
  @objc (mergeCellsInRange:) func mergeCells(in: NSRange)

  // Own Instance Properties

  /**
    - jsName: gridView
    - name: gridView
    - argLabels: 
  */
  @objc var gridView: NSGridView? { @objc get }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isHidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: leadingPadding
    - name: leadingPadding
    - argLabels: 
  */
  @objc var leadingPadding: CGFloat { @objc get @objc (setLeadingPadding:) set }

  /**
    - jsName: numberOfCells
    - name: numberOfCells
    - argLabels: 
  */
  @objc var numberOfCells: Int { @objc get }

  /**
    - jsName: trailingPadding
    - name: trailingPadding
    - argLabels: 
  */
  @objc var trailingPadding: CGFloat { @objc get @objc (setTrailingPadding:) set }

  /**
    - jsName: width
    - name: width
    - argLabels: 
  */
  @objc var width: CGFloat { @objc get @objc (setWidth:) set }

  /**
    - jsName: xPlacement
    - name: xPlacement
    - argLabels: 
  */
  @objc var xPlacement: NSGridCell.Placement { @objc get @objc (setXPlacement:) set }
}

extension NSGridColumn: NSGridColumnExports {
}
