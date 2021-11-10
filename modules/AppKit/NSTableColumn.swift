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
    - Selector: NSTableColumn
  */

@objc(NSTableColumn) protocol NSTableColumnExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: dataCellForRow:
  */
  @objc (dataCellForRow:) func dataCell(forRow: Int) -> Any

  /**
    - Selector: sizeToFit
  */
  @objc func sizeToFit()

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: dataCell
  */
  @objc var dataCell: Any { @objc get @objc (setDataCell:) set }

  /**
    - Selector: editable
  */
  @objc var isEditable: Bool { @objc get @objc (setEditable:) set }

  /**
    - Selector: headerCell
  */
  @objc var headerCell: NSTableHeaderCell { @objc get @objc (setHeaderCell:) set }

  /**
    - Selector: headerToolTip
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var headerToolTip: String? { @objc get @objc (setHeaderToolTip:) set }

  /**
    - Selector: hidden
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: maxWidth
  */
  @objc var maxWidth: CGFloat { @objc get @objc (setMaxWidth:) set }

  /**
    - Selector: minWidth
  */
  @objc var minWidth: CGFloat { @objc get @objc (setMinWidth:) set }

  /**
    - Selector: resizingMask
  */
  @objc var resizingMask: NSTableColumn.ResizingOptions { @objc get @objc (setResizingMask:) set }

  /**
    - Selector: sortDescriptorPrototype
  */
  @objc var sortDescriptorPrototype: NSSortDescriptor? { @objc get @objc (setSortDescriptorPrototype:) set }

  /**
    - Selector: tableView
  */
  @objc var tableView: NSTableView? { @objc get @objc (setTableView:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: width
  */
  @objc var width: CGFloat { @objc get @objc (setWidth:) set }
}

extension NSTableColumn: NSTableColumnExports {
}
