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
    - Selector: NSScrollView
  */

@objc(NSScrollView) protocol NSScrollViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: contentSizeForFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:
    - Introduced: 10.7
  */
  @objc (contentSizeForFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:) @available(OSX 10.7, *) static func contentSize(forFrameSize: CGSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType: NSBorderType, controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGSize

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: frameSizeForContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:
    - Introduced: 10.7
  */
  @objc (frameSizeForContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:) @available(OSX 10.7, *) static func frameSize(forContentSize: CGSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType: NSBorderType, controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGSize

  // Own Static Properties

  /**
    - Selector: rulerViewClass
  */
  @objc static var rulerViewClass: AnyClass! { @objc get @objc (setRulerViewClass:) set }

  // Instance Methods

  /**
    - Selector: addFloatingSubview:forAxis:
    - Introduced: 10.9
  */
  @objc (addFloatingSubview:forAxis:) @available(OSX 10.9, *) func addFloatingSubview(_: NSView, `for`: NSEvent.GestureAxis)

  /**
    - Selector: flashScrollers
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func flashScrollers()

  /**
    - Selector: magnifyToFitRect:
    - Introduced: 10.8
  */
  @objc (magnifyToFitRect:) @available(OSX 10.8, *) func magnify(toFit: CGRect)

  /**
    - Selector: tile
  */
  @objc func tile()

  // Own Instance Properties

  /**
    - Selector: allowsMagnification
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsMagnification: Bool { @objc get @objc (setAllowsMagnification:) set }

  /**
    - Selector: autohidesScrollers
  */
  @objc var autohidesScrollers: Bool { @objc get @objc (setAutohidesScrollers:) set }

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
    - Selector: borderType
  */
  @objc var borderType: NSBorderType { @objc get @objc (setBorderType:) set }

  /**
    - Selector: contentInsets
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentInsets: NSEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - Selector: contentSize
  */
  @objc var contentSize: CGSize { @objc get }

  /**
    - Selector: contentView
  */
  @objc var contentView: NSClipView { @objc get @objc (setContentView:) set }

  /**
    - Selector: documentCursor
  */
  @objc var documentCursor: NSCursor? { @objc get @objc (setDocumentCursor:) set }

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

  /**
    - Selector: findBarPosition
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var findBarPosition: NSScrollView.FindBarPosition { @objc get @objc (setFindBarPosition:) set }

  /**
    - Selector: hasHorizontalRuler
  */
  @objc var hasHorizontalRuler: Bool { @objc get @objc (setHasHorizontalRuler:) set }

  /**
    - Selector: hasHorizontalScroller
  */
  @objc var hasHorizontalScroller: Bool { @objc get @objc (setHasHorizontalScroller:) set }

  /**
    - Selector: hasVerticalRuler
  */
  @objc var hasVerticalRuler: Bool { @objc get @objc (setHasVerticalRuler:) set }

  /**
    - Selector: hasVerticalScroller
  */
  @objc var hasVerticalScroller: Bool { @objc get @objc (setHasVerticalScroller:) set }

  /**
    - Selector: horizontalLineScroll
  */
  @objc var horizontalLineScroll: CGFloat { @objc get @objc (setHorizontalLineScroll:) set }

  /**
    - Selector: horizontalPageScroll
  */
  @objc var horizontalPageScroll: CGFloat { @objc get @objc (setHorizontalPageScroll:) set }

  /**
    - Selector: horizontalRulerView
  */
  @objc var horizontalRulerView: NSRulerView? { @objc get @objc (setHorizontalRulerView:) set }

  /**
    - Selector: horizontalScrollElasticity
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var horizontalScrollElasticity: NSScrollView.Elasticity { @objc get @objc (setHorizontalScrollElasticity:) set }

  /**
    - Selector: horizontalScroller
  */
  @objc var horizontalScroller: NSScroller? { @objc get @objc (setHorizontalScroller:) set }

  /**
    - Selector: lineScroll
  */
  @objc var lineScroll: CGFloat { @objc get @objc (setLineScroll:) set }

  /**
    - Selector: magnification
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var magnification: CGFloat { @objc get @objc (setMagnification:) set }

  /**
    - Selector: maxMagnification
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var maxMagnification: CGFloat { @objc get @objc (setMaxMagnification:) set }

  /**
    - Selector: minMagnification
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var minMagnification: CGFloat { @objc get @objc (setMinMagnification:) set }

  /**
    - Selector: pageScroll
  */
  @objc var pageScroll: CGFloat { @objc get @objc (setPageScroll:) set }

  /**
    - Selector: rulersVisible
  */
  @objc var rulersVisible: Bool { @objc get @objc (setRulersVisible:) set }

  /**
    - Selector: scrollerInsets
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var scrollerInsets: NSEdgeInsets { @objc get @objc (setScrollerInsets:) set }

  /**
    - Selector: scrollerKnobStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var scrollerKnobStyle: NSScroller.KnobStyle { @objc get @objc (setScrollerKnobStyle:) set }

  /**
    - Selector: scrollerStyle
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var scrollerStyle: NSScroller.Style { @objc get @objc (setScrollerStyle:) set }

  /**
    - Selector: scrollsDynamically
  */
  @objc var scrollsDynamically: Bool { @objc get @objc (setScrollsDynamically:) set }

  /**
    - Selector: usesPredominantAxisScrolling
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var usesPredominantAxisScrolling: Bool { @objc get @objc (setUsesPredominantAxisScrolling:) set }

  /**
    - Selector: verticalLineScroll
  */
  @objc var verticalLineScroll: CGFloat { @objc get @objc (setVerticalLineScroll:) set }

  /**
    - Selector: verticalPageScroll
  */
  @objc var verticalPageScroll: CGFloat { @objc get @objc (setVerticalPageScroll:) set }

  /**
    - Selector: verticalRulerView
  */
  @objc var verticalRulerView: NSRulerView? { @objc get @objc (setVerticalRulerView:) set }

  /**
    - Selector: verticalScrollElasticity
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var verticalScrollElasticity: NSScrollView.Elasticity { @objc get @objc (setVerticalScrollElasticity:) set }

  /**
    - Selector: verticalScroller
  */
  @objc var verticalScroller: NSScroller? { @objc get @objc (setVerticalScroller:) set }
}

@objc protocol ScrollViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(ScrollView) public class ScrollView: NSScrollView, ScrollViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSScrollView: NSScrollViewExports {
}
