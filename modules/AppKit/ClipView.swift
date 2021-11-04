import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSClipView
  */

@objc(NSClipView) protocol NSClipViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: constrainBoundsRect:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func constrainBoundsRect(_: CGRect) -> CGRect

  /**
    - Selector: scrollToPoint:
  */
  @objc (scrollToPoint:) func scroll(to: CGPoint)

  /**
    - Selector: viewBoundsChanged:
  */
  @objc func viewBoundsChanged(_: Notification)

  /**
    - Selector: viewFrameChanged:
  */
  @objc func viewFrameChanged(_: Notification)

  // Own Instance Properties

  /**
    - Selector: automaticallyAdjustsContentInsets
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var automaticallyAdjustsContentInsets: Bool { @objc get @objc (setAutomaticallyAdjustsContentInsets:) set }

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: contentInsets
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentInsets: NSEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - Selector: copiesOnScroll
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: NSClipView will always minimize the area of the document view that is invalidated.  To force invalidation of the document view, use -[NSView setNeedsDisplayInRect:].
  */
  @objc @available(OSX 10.0, *) var copiesOnScroll: Bool { @objc get @objc (setCopiesOnScroll:) set }

  /**
    - Selector: documentCursor
  */
  @objc var documentCursor: NSCursor? { @objc get @objc (setDocumentCursor:) set }

  /**
    - Selector: documentRect
  */
  @objc var documentRect: CGRect { @objc get }

  /**
    - Selector: documentView
  */
  @objc var documentView: NSView? { @objc get @objc (setDocumentView:) set }

  /**
    - Selector: documentVisibleRect
  */
  @objc var documentVisibleRect: CGRect { @objc get }

  /**
    - Selector: drawsBackground
  */
  @objc var drawsBackground: Bool { @objc get @objc (setDrawsBackground:) set }
}

@objc protocol ClipViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(ClipView) public class ClipView: NSClipView, ClipViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSClipView: NSClipViewExports {
}
