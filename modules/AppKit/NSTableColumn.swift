import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableColumn
    - name: NSTableColumn
    - argLabels: 
  */

@objc(NSTableColumn) protocol NSTableColumnExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: dataCell
    - name: dataCellForRow:
    - argLabels: forRow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataCell(forRow:)
  */
  @objc (dataCellForRow:) func dataCell(forRow: Int) -> Any

  /**
    - jsName: sizeToFit
    - name: sizeToFit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeToFit()

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: dataCell
    - name: dataCell
    - argLabels: 
  */
  @objc var dataCell: Any { @objc get @objc (setDataCell:) set }

  /**
    - jsName: isEditable
    - name: editable
    - argLabels: 
    - obsoleted: 3
    - renamed: isEditable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - jsName: headerCell
    - name: headerCell
    - argLabels: 
  */
  @objc var headerCell: NSTableHeaderCell { @objc get @objc (setHeaderCell:) set }

  /**
    - jsName: headerToolTip
    - name: headerToolTip
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var headerToolTip: String? { @objc get @objc (setHeaderToolTip:) set }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isHidden
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: maxWidth
    - name: maxWidth
    - argLabels: 
  */
  @objc var maxWidth: CGFloat { @objc get @objc (setMaxWidth:) set }

  /**
    - jsName: minWidth
    - name: minWidth
    - argLabels: 
  */
  @objc var minWidth: CGFloat { @objc get @objc (setMinWidth:) set }

  /**
    - jsName: resizingMask
    - name: resizingMask
    - argLabels: 
  */
  @objc var resizingMask: NSTableColumn.ResizingOptions { @objc get @objc (setResizingMask:) set }

  /**
    - jsName: sortDescriptorPrototype
    - name: sortDescriptorPrototype
    - argLabels: 
  */
  @objc var sortDescriptorPrototype: NSSortDescriptor? { @objc get @objc (setSortDescriptorPrototype:) set }

  /**
    - jsName: tableView
    - name: tableView
    - argLabels: 
  */
  @objc var tableView: NSTableView? { @objc get @objc (setTableView:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: width
    - name: width
    - argLabels: 
  */
  @objc var width: CGFloat { @objc get @objc (setWidth:) set }
}

extension NSTableColumn: NSTableColumnExports {
}
