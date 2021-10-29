import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTableCellView
    - name: NSTableCellView
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSTableCellView) protocol NSTableCellViewExports: JSExport, NSViewExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: backgroundStyle
    - name: backgroundStyle
    - argLabels: 
  */
  @objc var backgroundStyle: NSView.BackgroundStyle { @objc get @objc (setBackgroundStyle:) set }

  /**
    - jsName: draggingImageComponents
    - name: draggingImageComponents
    - argLabels: 
  */
  @objc var draggingImageComponents: [NSDraggingImageComponent] { @objc get }

  /**
    - jsName: imageView
    - name: imageView
    - argLabels: 
  */
  @objc var imageView: NSImageView? { @objc get @objc (setImageView:) set }

  /**
    - jsName: objectValue
    - name: objectValue
    - argLabels: 
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - jsName: rowSizeStyle
    - name: rowSizeStyle
    - argLabels: 
  */
  @objc var rowSizeStyle: NSTableView.RowSizeStyle { @objc get @objc (setRowSizeStyle:) set }

  /**
    - jsName: textField
    - name: textField
    - argLabels: 
  */
  @objc var textField: NSTextField? { @objc get @objc (setTextField:) set }
}

@objc protocol TableCellViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(TableCellView) public class TableCellView: NSTableCellView, TableCellViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTableCellView: NSTableCellViewExports {
}
