import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrollView
    - name: NSScrollView
    - argLabels: 
  */

@objc(NSScrollView) protocol NSScrollViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - jsName: contentSize
    - name: contentSizeForFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:
    - argLabels: forFrameSize, horizontalScrollerClass, verticalScrollerClass, borderType, controlSize, scrollerStyle
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: contentSize(forFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:)
    - Introduced: 10.7
  */
  @objc (contentSizeForFrameSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:) @available(OSX 10.7, *) static func contentSize(forFrameSize: CGSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType: NSBorderType, controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGSize

  /**
    - jsName: frameSize
    - name: frameSizeForContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:
    - argLabels: forContentSize, horizontalScrollerClass, verticalScrollerClass, borderType, controlSize, scrollerStyle
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: frameSize(forContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:)
    - Introduced: 10.7
  */
  @objc (frameSizeForContentSize:horizontalScrollerClass:verticalScrollerClass:borderType:controlSize:scrollerStyle:) @available(OSX 10.7, *) static func frameSize(forContentSize: CGSize, horizontalScrollerClass: AnyClass?, verticalScrollerClass: AnyClass?, borderType: NSBorderType, controlSize: NSControl.ControlSize, scrollerStyle: NSScroller.Style) -> CGSize

  // Own Static Properties

  /**
    - jsName: rulerViewClass
    - name: rulerViewClass
    - argLabels: 
  */
  @objc static var rulerViewClass: AnyClass! { @objc get @objc (setRulerViewClass:) set }

  // Instance Methods

  /**
    - jsName: addFloatingSubview
    - name: addFloatingSubview:forAxis:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: addFloatingSubview(_:for:)
    - Introduced: 10.9
  */
  @objc (addFloatingSubview:forAxis:) @available(OSX 10.9, *) func addFloatingSubview(_: NSView, `for`: NSEvent.GestureAxis)

  /**
    - jsName: flashScrollers
    - name: flashScrollers
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func flashScrollers()

  /**
    - jsName: magnify
    - name: magnifyToFitRect:
    - argLabels: toFit
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: magnify(toFit:)
    - Introduced: 10.8
  */
  @objc (magnifyToFitRect:) @available(OSX 10.8, *) func magnify(toFit: CGRect)

  /**
    - jsName: tile
    - name: tile
    - argLabels: 
    - constructorTokens: 
  */
  @objc func tile()

  // Own Instance Properties

  /**
    - jsName: allowsMagnification
    - name: allowsMagnification
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsMagnification: Bool { @objc get @objc (setAllowsMagnification:) set }

  /**
    - jsName: autohidesScrollers
    - name: autohidesScrollers
    - argLabels: 
  */
  @objc var autohidesScrollers: Bool { @objc get @objc (setAutohidesScrollers:) set }

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
    - jsName: borderType
    - name: borderType
    - argLabels: 
  */
  @objc var borderType: NSBorderType { @objc get @objc (setBorderType:) set }

  /**
    - jsName: contentInsets
    - name: contentInsets
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentInsets: NSEdgeInsets { @objc get @objc (setContentInsets:) set }

  /**
    - jsName: contentSize
    - name: contentSize
    - argLabels: 
  */
  @objc var contentSize: CGSize { @objc get }

  /**
    - jsName: contentView
    - name: contentView
    - argLabels: 
  */
  @objc var contentView: NSClipView { @objc get @objc (setContentView:) set }

  /**
    - jsName: documentCursor
    - name: documentCursor
    - argLabels: 
  */
  @objc var documentCursor: NSCursor? { @objc get @objc (setDocumentCursor:) set }

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

  /**
    - jsName: findBarPosition
    - name: findBarPosition
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var findBarPosition: NSScrollView.FindBarPosition { @objc get @objc (setFindBarPosition:) set }

  /**
    - jsName: hasHorizontalRuler
    - name: hasHorizontalRuler
    - argLabels: 
  */
  @objc var hasHorizontalRuler: Bool { @objc get @objc (setHasHorizontalRuler:) set }

  /**
    - jsName: hasHorizontalScroller
    - name: hasHorizontalScroller
    - argLabels: 
  */
  @objc var hasHorizontalScroller: Bool { @objc get @objc (setHasHorizontalScroller:) set }

  /**
    - jsName: hasVerticalRuler
    - name: hasVerticalRuler
    - argLabels: 
  */
  @objc var hasVerticalRuler: Bool { @objc get @objc (setHasVerticalRuler:) set }

  /**
    - jsName: hasVerticalScroller
    - name: hasVerticalScroller
    - argLabels: 
  */
  @objc var hasVerticalScroller: Bool { @objc get @objc (setHasVerticalScroller:) set }

  /**
    - jsName: horizontalLineScroll
    - name: horizontalLineScroll
    - argLabels: 
  */
  @objc var horizontalLineScroll: CGFloat { @objc get @objc (setHorizontalLineScroll:) set }

  /**
    - jsName: horizontalPageScroll
    - name: horizontalPageScroll
    - argLabels: 
  */
  @objc var horizontalPageScroll: CGFloat { @objc get @objc (setHorizontalPageScroll:) set }

  /**
    - jsName: horizontalRulerView
    - name: horizontalRulerView
    - argLabels: 
  */
  @objc var horizontalRulerView: NSRulerView? { @objc get @objc (setHorizontalRulerView:) set }

  /**
    - jsName: horizontalScrollElasticity
    - name: horizontalScrollElasticity
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var horizontalScrollElasticity: NSScrollView.Elasticity { @objc get @objc (setHorizontalScrollElasticity:) set }

  /**
    - jsName: horizontalScroller
    - name: horizontalScroller
    - argLabels: 
  */
  @objc var horizontalScroller: NSScroller? { @objc get @objc (setHorizontalScroller:) set }

  /**
    - jsName: lineScroll
    - name: lineScroll
    - argLabels: 
  */
  @objc var lineScroll: CGFloat { @objc get @objc (setLineScroll:) set }

  /**
    - jsName: magnification
    - name: magnification
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var magnification: CGFloat { @objc get @objc (setMagnification:) set }

  /**
    - jsName: maxMagnification
    - name: maxMagnification
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var maxMagnification: CGFloat { @objc get @objc (setMaxMagnification:) set }

  /**
    - jsName: minMagnification
    - name: minMagnification
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var minMagnification: CGFloat { @objc get @objc (setMinMagnification:) set }

  /**
    - jsName: pageScroll
    - name: pageScroll
    - argLabels: 
  */
  @objc var pageScroll: CGFloat { @objc get @objc (setPageScroll:) set }

  /**
    - jsName: rulersVisible
    - name: rulersVisible
    - argLabels: 
  */
  @objc var rulersVisible: Bool { @objc get @objc (setRulersVisible:) set }

  /**
    - jsName: scrollerInsets
    - name: scrollerInsets
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var scrollerInsets: NSEdgeInsets { @objc get @objc (setScrollerInsets:) set }

  /**
    - jsName: scrollerKnobStyle
    - name: scrollerKnobStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var scrollerKnobStyle: NSScroller.KnobStyle { @objc get @objc (setScrollerKnobStyle:) set }

  /**
    - jsName: scrollerStyle
    - name: scrollerStyle
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var scrollerStyle: NSScroller.Style { @objc get @objc (setScrollerStyle:) set }

  /**
    - jsName: scrollsDynamically
    - name: scrollsDynamically
    - argLabels: 
  */
  @objc var scrollsDynamically: Bool { @objc get @objc (setScrollsDynamically:) set }

  /**
    - jsName: usesPredominantAxisScrolling
    - name: usesPredominantAxisScrolling
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var usesPredominantAxisScrolling: Bool { @objc get @objc (setUsesPredominantAxisScrolling:) set }

  /**
    - jsName: verticalLineScroll
    - name: verticalLineScroll
    - argLabels: 
  */
  @objc var verticalLineScroll: CGFloat { @objc get @objc (setVerticalLineScroll:) set }

  /**
    - jsName: verticalPageScroll
    - name: verticalPageScroll
    - argLabels: 
  */
  @objc var verticalPageScroll: CGFloat { @objc get @objc (setVerticalPageScroll:) set }

  /**
    - jsName: verticalRulerView
    - name: verticalRulerView
    - argLabels: 
  */
  @objc var verticalRulerView: NSRulerView? { @objc get @objc (setVerticalRulerView:) set }

  /**
    - jsName: verticalScrollElasticity
    - name: verticalScrollElasticity
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var verticalScrollElasticity: NSScrollView.Elasticity { @objc get @objc (setVerticalScrollElasticity:) set }

  /**
    - jsName: verticalScroller
    - name: verticalScroller
    - argLabels: 
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
