import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSBox
    - name: NSBox
    - argLabels: 
  */

@objc(NSBox) protocol NSBoxExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: setFrameFromContentFrame
    - name: setFrameFromContentFrame:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameFromContentFrame(_: CGRect)

  /**
    - jsName: sizeToFit
    - name: sizeToFit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeToFit()

  // Own Instance Properties

  /**
    - jsName: borderColor
    - name: borderColor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var borderColor: NSColor { @objc get @objc (setBorderColor:) set }

  /**
    - jsName: borderRect
    - name: borderRect
    - argLabels: 
  */
  @objc var borderRect: CGRect { @objc get }

  /**
    - jsName: borderType
    - name: borderType
    - argLabels: 
    - introduced: 10.0
    - deprecated: 10.15
    - message: borderType is only applicable to NSBoxOldStyle, which is deprecated. To replace a borderType of NSNoBorder, use the `transparent` property.
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: borderType is only applicable to NSBoxOldStyle, which is deprecated. To replace a borderType of NSNoBorder, use the `transparent` property.
  */
  @objc @available(OSX 10.0, *) var borderType: NSBorderType { @objc get @objc (setBorderType:) set }

  /**
    - jsName: borderWidth
    - name: borderWidth
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var borderWidth: CGFloat { @objc get @objc (setBorderWidth:) set }

  /**
    - jsName: boxType
    - name: boxType
    - argLabels: 
  */
  @objc var boxType: NSBox.BoxType { @objc get @objc (setBoxType:) set }

  /**
    - jsName: contentView
    - name: contentView
    - argLabels: 
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - jsName: contentViewMargins
    - name: contentViewMargins
    - argLabels: 
  */
  @objc var contentViewMargins: CGSize { @objc get @objc (setContentViewMargins:) set }

  /**
    - jsName: cornerRadius
    - name: cornerRadius
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var cornerRadius: CGFloat { @objc get @objc (setCornerRadius:) set }

  /**
    - jsName: fillColor
    - name: fillColor
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var fillColor: NSColor { @objc get @objc (setFillColor:) set }

  /**
    - jsName: title
    - name: title
    - argLabels: 
  */
  @objc var title: String { @objc get @objc (setTitle:) set }

  /**
    - jsName: titleCell
    - name: titleCell
    - argLabels: 
  */
  @objc var titleCell: Any { @objc get }

  /**
    - jsName: titleFont
    - name: titleFont
    - argLabels: 
  */
  @objc var titleFont: NSFont { @objc get @objc (setTitleFont:) set }

  /**
    - jsName: titlePosition
    - name: titlePosition
    - argLabels: 
  */
  @objc var titlePosition: NSBox.TitlePosition { @objc get @objc (setTitlePosition:) set }

  /**
    - jsName: titleRect
    - name: titleRect
    - argLabels: 
  */
  @objc var titleRect: CGRect { @objc get }

  /**
    - jsName: isTransparent
    - name: transparent
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isTransparent
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
