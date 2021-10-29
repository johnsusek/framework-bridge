import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableHeaderView
    - name: NSTableHeaderView
    - argLabels: 
  */

@objc(NSTableHeaderView) protocol NSTableHeaderViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: column
    - name: columnAtPoint:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: column(at:)
  */
  @objc (columnAtPoint:) func column(at: CGPoint) -> Int

  /**
    - jsName: headerRect
    - name: headerRectOfColumn:
    - argLabels: ofColumn
    - constructorTokens: 
    - obsoleted: 3
    - renamed: headerRect(ofColumn:)
  */
  @objc (headerRectOfColumn:) func headerRect(ofColumn: Int) -> CGRect

  // Own Instance Properties

  /**
    - jsName: draggedColumn
    - name: draggedColumn
    - argLabels: 
  */
  @objc var draggedColumn: Int { @objc get }

  /**
    - jsName: draggedDistance
    - name: draggedDistance
    - argLabels: 
  */
  @objc var draggedDistance: CGFloat { @objc get }

  /**
    - jsName: resizedColumn
    - name: resizedColumn
    - argLabels: 
  */
  @objc var resizedColumn: Int { @objc get }

  /**
    - jsName: tableView
    - name: tableView
    - argLabels: 
  */
  @objc var tableView: NSTableView? { @objc get @objc (setTableView:) set }
}

@objc protocol TableHeaderViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(TableHeaderView) public class TableHeaderView: NSTableHeaderView, TableHeaderViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTableHeaderView: NSTableHeaderViewExports {
}
