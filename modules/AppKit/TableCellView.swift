import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTableCellView
    - Introduced: 10.7
  */

@objc(NSTableCellView) protocol NSTableCellViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: backgroundStyle
  */
  @objc var backgroundStyle: NSView.BackgroundStyle { @objc get @objc (setBackgroundStyle:) set }

  /**
    - Selector: draggingImageComponents
  */
  @objc var draggingImageComponents: [NSDraggingImageComponent] { @objc get }

  /**
    - Selector: imageView
  */
  @objc var imageView: NSImageView? { @objc get @objc (setImageView:) set }

  /**
    - Selector: objectValue
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - Selector: rowSizeStyle
  */
  @objc var rowSizeStyle: NSTableView.RowSizeStyle { @objc get @objc (setRowSizeStyle:) set }

  /**
    - Selector: textField
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
