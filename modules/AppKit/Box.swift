import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSBox
  */

@objc(NSBox) protocol NSBoxExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: setFrameFromContentFrame:
  */
  @objc func setFrameFromContentFrame(_: CGRect)

  /**
    - Selector: sizeToFit
  */
  @objc func sizeToFit()

  // Own Instance Properties

  /**
    - Selector: borderColor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var borderColor: NSColor { @objc get @objc (setBorderColor:) set }

  /**
    - Selector: borderRect
  */
  @objc var borderRect: CGRect { @objc get }

  /**
    - Selector: borderType
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: borderType is only applicable to NSBoxOldStyle, which is deprecated. To replace a borderType of NSNoBorder, use the `transparent` property.
  */
  @objc @available(OSX 10.0, *) var borderType: NSBorderType { @objc get @objc (setBorderType:) set }

  /**
    - Selector: borderWidth
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var borderWidth: CGFloat { @objc get @objc (setBorderWidth:) set }

  /**
    - Selector: boxType
  */
  @objc var boxType: NSBox.BoxType { @objc get @objc (setBoxType:) set }

  /**
    - Selector: contentView
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - Selector: contentViewMargins
  */
  @objc var contentViewMargins: CGSize { @objc get @objc (setContentViewMargins:) set }

  /**
    - Selector: cornerRadius
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var cornerRadius: CGFloat { @objc get @objc (setCornerRadius:) set }

  /**
    - Selector: fillColor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var fillColor: NSColor { @objc get @objc (setFillColor:) set }

  /**
    - Selector: title
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - Selector: titleCell
  */
  @objc var titleCell: Any { @objc get }

  /**
    - Selector: titleFont
  */
  @objc var titleFont: NSFont { @objc get @objc (setTitleFont:) set }

  /**
    - Selector: titlePosition
  */
  @objc var titlePosition: NSBox.TitlePosition { @objc get @objc (setTitlePosition:) set }

  /**
    - Selector: titleRect
  */
  @objc var titleRect: CGRect { @objc get }

  /**
    - Selector: transparent
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isTransparent: Bool { @objc get @objc (setTransparent:) set }
}

@objc protocol BoxExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(Box) public class Box: NSBox, BoxExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSBox: NSBoxExports {
}
