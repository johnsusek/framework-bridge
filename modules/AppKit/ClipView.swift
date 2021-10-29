import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSClipView
    - name: NSClipView
    - argLabels: 
  */

@objc(NSClipView) protocol NSClipViewExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: constrainBoundsRect
    - name: constrainBoundsRect:
    - argLabels: 
    - constructorTokens: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func constrainBoundsRect(_: CGRect) -> CGRect

  /**
    - jsName: scroll
    - name: scrollToPoint:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scroll(to:)
  */
  @objc (scrollToPoint:) func scroll(to: CGPoint)

  /**
    - jsName: viewBoundsChanged
    - name: viewBoundsChanged:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func viewBoundsChanged(_: Notification)

  /**
    - jsName: viewFrameChanged
    - name: viewFrameChanged:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func viewFrameChanged(_: Notification)

  // Own Instance Properties

  /**
    - jsName: automaticallyAdjustsContentInsets
    - name: automaticallyAdjustsContentInsets
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var automaticallyAdjustsContentInsets: Bool { @objc get @objc (setAutomaticallyAdjustsContentInsets:) set }

  /**
    - jsName: backgroundColor
    - name: backgroundColor
    - argLabels: 
  */
  @objc var backgroundColor: NSColor { @objc get @objc (setBackgroundColor:) set }

  /**
    - jsName: contentInsets
    - name: contentInsets
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentInsets: NSEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - jsName: copiesOnScroll
    - name: copiesOnScroll
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Setting this property has no effect.  NSClipView will always minimize the area of the document view that is invalidated.  To force invalidation of the document view, use -[NSView setNeedsDisplayInRect:].
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: NSClipView will always minimize the area of the document view that is invalidated.  To force invalidation of the document view, use -[NSView setNeedsDisplayInRect:].
  */
  @objc @available(OSX 10.0, *) var copiesOnScroll: Bool { @objc get @objc (setCopiesOnScroll:) set }

  /**
    - jsName: documentCursor
    - name: documentCursor
    - argLabels: 
  */
  @objc var documentCursor: NSCursor? { @objc get @objc (setDocumentCursor:) set }

  /**
    - jsName: documentRect
    - name: documentRect
    - argLabels: 
  */
  @objc var documentRect: CGRect { @objc get }

  /**
    - jsName: documentView
    - name: documentView
    - argLabels: 
  */
  @objc var documentView: NSView? { @objc get @objc (setDocumentView:) set }

  /**
    - jsName: documentVisibleRect
    - name: documentVisibleRect
    - argLabels: 
  */
  @objc var documentVisibleRect: CGRect { @objc get }

  /**
    - jsName: drawsBackground
    - name: drawsBackground
    - argLabels: 
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
