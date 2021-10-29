import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSView
    - name: NSView
    - argLabels: 
  */

@objc(NSView) protocol NSViewExports: JSExport, NSResponderExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: isCompatibleWithResponsiveScrolling
    - name: compatibleWithResponsiveScrolling
    - argLabels: 
    - available: 10.9
    - obsoleted: 3
    - renamed: isCompatibleWithResponsiveScrolling
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static var isCompatibleWithResponsiveScrolling: Bool { @objc get }

  /**
    - jsName: defaultFocusRingType
    - name: defaultFocusRingType
    - argLabels: 
  */
  @objc static var defaultFocusRingType: NSFocusRingType { @objc get }

  /**
    - jsName: defaultMenu
    - name: defaultMenu
    - argLabels: 
  */
  @objc static var defaultMenu: NSMenu? { @objc get }

  /**
    - jsName: focusView
    - name: focusView
    - argLabels: 
  */
  @objc static var focusView: NSView? { @objc get }

  /**
    - jsName: requiresConstraintBasedLayout
    - name: requiresConstraintBasedLayout
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var requiresConstraintBasedLayout: Bool { @objc get }

  // Instance Methods

  /**
    - jsName: acceptsFirstMouse
    - name: acceptsFirstMouse:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: acceptsFirstMouse(for:)
  */
  @objc (acceptsFirstMouse:) func acceptsFirstMouse(`for`: NSEvent?) -> Bool

  /**
    - jsName: addConstraint
    - name: addConstraint:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func addConstraint(_: NSLayoutConstraint)

  /**
    - jsName: addConstraints
    - name: addConstraints:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func addConstraints(_: [NSLayoutConstraint])

  /**
    - jsName: addCursorRect
    - name: addCursorRect:cursor:
    - argLabels: cursor
    - constructorTokens: 
  */
  @objc func addCursorRect(_: CGRect, cursor: NSCursor)

  /**
    - jsName: addGestureRecognizer
    - name: addGestureRecognizer:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func addGestureRecognizer(_: NSGestureRecognizer)

  /**
    - jsName: addLayoutGuide
    - name: addLayoutGuide:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func addLayoutGuide(_: NSLayoutGuide)

  /**
    - jsName: addSubview
    - name: addSubview:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addSubview(_: NSView)

  /**
    - jsName: addSubview
    - name: addSubview:positioned:relativeTo:
    - argLabels: positioned, relativeTo
    - constructorTokens: 
  */
  @objc func addSubview(_: NSView, positioned: NSWindow.OrderingMode, relativeTo: NSView?)

  /**
    - jsName: addToolTip
    - name: addToolTipRect:owner:userData:
    - argLabels: _, owner, userData
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addToolTip(_:owner:userData:)
  */
  @objc (addToolTipRect:owner:userData:) func addToolTip(_: CGRect, owner: Any, userData: UnsafeMutableRawPointer?) -> NSView.ToolTipTag

  /**
    - jsName: addTrackingArea
    - name: addTrackingArea:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addTrackingArea(_: NSTrackingArea)

  /**
    - jsName: addTrackingRect
    - name: addTrackingRect:owner:userData:assumeInside:
    - argLabels: owner, userData, assumeInside
    - constructorTokens: 
  */
  @objc func addTrackingRect(_: CGRect, owner: Any, userData: UnsafeMutableRawPointer?, assumeInside: Bool) -> NSView.TrackingRectTag

  /**
    - jsName: adjustPageHeightNew
    - name: adjustPageHeightNew:top:bottom:limit:
    - argLabels: top, bottom, limit
    - constructorTokens: 
  */
  @objc func adjustPageHeightNew(_: UnsafeMutablePointer<CGFloat>, top: CGFloat, bottom: CGFloat, limit: CGFloat)

  /**
    - jsName: adjustPageWidthNew
    - name: adjustPageWidthNew:left:right:limit:
    - argLabels: left, right, limit
    - constructorTokens: 
  */
  @objc func adjustPageWidthNew(_: UnsafeMutablePointer<CGFloat>, left: CGFloat, right: CGFloat, limit: CGFloat)

  /**
    - jsName: adjustScroll
    - name: adjustScroll:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func adjustScroll(_: CGRect) -> CGRect

  /**
    - jsName: alignmentRect
    - name: alignmentRectForFrame:
    - argLabels: forFrame
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: alignmentRect(forFrame:)
    - Introduced: 10.7
  */
  @objc (alignmentRectForFrame:) @available(OSX 10.7, *) func alignmentRect(forFrame: CGRect) -> CGRect

  /**
    - jsName: ancestorShared
    - name: ancestorSharedWithView:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: ancestorShared(with:)
  */
  @objc (ancestorSharedWithView:) func ancestorShared(with: NSView) -> NSView?

  /**
    - jsName: autoscroll
    - name: autoscroll:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: autoscroll(with:)
  */
  @objc (autoscroll:) func autoscroll(with: NSEvent) -> Bool

  /**
    - jsName: backingAlignedRect
    - name: backingAlignedRect:options:
    - argLabels: options
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func backingAlignedRect(_: CGRect, options: AlignmentOptions) -> CGRect

  /**
    - jsName: beginDocument
    - name: beginDocument
    - argLabels: 
    - constructorTokens: 
  */
  @objc func beginDocument()

  /**
    - jsName: beginDraggingSession
    - name: beginDraggingSessionWithItems:event:source:
    - argLabels: with, event, source
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: beginDraggingSession(with:event:source:)
    - Introduced: 10.7
  */
  @objc (beginDraggingSessionWithItems:event:source:) @available(OSX 10.7, *) func beginDraggingSession(with: [NSDraggingItem], event: NSEvent, source: NSDraggingSource) -> NSDraggingSession

  /**
    - jsName: beginPage
    - name: beginPageInRect:atPlacement:
    - argLabels: in, atPlacement
    - constructorTokens: 
    - obsoleted: 3
    - renamed: beginPage(in:atPlacement:)
  */
  @objc (beginPageInRect:atPlacement:) func beginPage(in: CGRect, atPlacement: CGPoint)

  /**
    - jsName: bitmapImageRepForCachingDisplay
    - name: bitmapImageRepForCachingDisplayInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: bitmapImageRepForCachingDisplay(in:)
  */
  @objc (bitmapImageRepForCachingDisplayInRect:) func bitmapImageRepForCachingDisplay(in: CGRect) -> NSBitmapImageRep?

  /**
    - jsName: cacheDisplay
    - name: cacheDisplayInRect:toBitmapImageRep:
    - argLabels: in, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cacheDisplay(in:to:)
  */
  @objc (cacheDisplayInRect:toBitmapImageRep:) func cacheDisplay(in: CGRect, to: NSBitmapImageRep)

  /**
    - jsName: centerScanRect
    - name: centerScanRect:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func centerScanRect(_: CGRect) -> CGRect

  /**
    - jsName: constraintsAffectingLayout
    - name: constraintsAffectingLayoutForOrientation:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: constraintsAffectingLayout(for:)
    - Introduced: 10.7
  */
  @objc (constraintsAffectingLayoutForOrientation:) @available(OSX 10.7, *) func constraintsAffectingLayout(`for`: NSLayoutConstraint.Orientation) -> [NSLayoutConstraint]

  /**
    - jsName: contentCompressionResistancePriority
    - name: contentCompressionResistancePriorityForOrientation:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: contentCompressionResistancePriority(for:)
    - Introduced: 10.7
  */
  @objc (contentCompressionResistancePriorityForOrientation:) @available(OSX 10.7, *) func contentCompressionResistancePriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - jsName: contentHuggingPriority
    - name: contentHuggingPriorityForOrientation:
    - argLabels: for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: contentHuggingPriority(for:)
    - Introduced: 10.7
  */
  @objc (contentHuggingPriorityForOrientation:) @available(OSX 10.7, *) func contentHuggingPriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - jsName: convert
    - name: convertPoint:fromView:
    - argLabels: _, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:from:)
  */
  @objc (convertPoint:fromView:) func convert(_: CGPoint, from: NSView?) -> CGPoint

  /**
    - jsName: convert
    - name: convertPoint:toView:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:to:)
  */
  @objc (convertPoint:toView:) func convert(_: CGPoint, to: NSView?) -> CGPoint

  /**
    - jsName: convertFromBacking
    - name: convertPointFromBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertPointFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGPoint) -> CGPoint

  /**
    - jsName: convertFromLayer
    - name: convertPointFromLayer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromLayer(_:)
    - Introduced: 10.7
  */
  @objc (convertPointFromLayer:) @available(OSX 10.7, *) func convertFromLayer(_: CGPoint) -> CGPoint

  /**
    - jsName: convertToBacking
    - name: convertPointToBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertPointToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGPoint) -> CGPoint

  /**
    - jsName: convertToLayer
    - name: convertPointToLayer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToLayer(_:)
    - Introduced: 10.7
  */
  @objc (convertPointToLayer:) @available(OSX 10.7, *) func convertToLayer(_: CGPoint) -> CGPoint

  /**
    - jsName: convert
    - name: convertRect:fromView:
    - argLabels: _, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:from:)
  */
  @objc (convertRect:fromView:) func convert(_: CGRect, from: NSView?) -> CGRect

  /**
    - jsName: convert
    - name: convertRect:toView:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:to:)
  */
  @objc (convertRect:toView:) func convert(_: CGRect, to: NSView?) -> CGRect

  /**
    - jsName: convertFromBacking
    - name: convertRectFromBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertRectFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGRect) -> CGRect

  /**
    - jsName: convertFromLayer
    - name: convertRectFromLayer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromLayer(_:)
    - Introduced: 10.7
  */
  @objc (convertRectFromLayer:) @available(OSX 10.7, *) func convertFromLayer(_: CGRect) -> CGRect

  /**
    - jsName: convertToBacking
    - name: convertRectToBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertRectToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGRect) -> CGRect

  /**
    - jsName: convertToLayer
    - name: convertRectToLayer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToLayer(_:)
    - Introduced: 10.7
  */
  @objc (convertRectToLayer:) @available(OSX 10.7, *) func convertToLayer(_: CGRect) -> CGRect

  /**
    - jsName: convert
    - name: convertSize:fromView:
    - argLabels: _, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:from:)
  */
  @objc (convertSize:fromView:) func convert(_: CGSize, from: NSView?) -> CGSize

  /**
    - jsName: convert
    - name: convertSize:toView:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:to:)
  */
  @objc (convertSize:toView:) func convert(_: CGSize, to: NSView?) -> CGSize

  /**
    - jsName: convertFromBacking
    - name: convertSizeFromBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertSizeFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGSize) -> CGSize

  /**
    - jsName: convertFromLayer
    - name: convertSizeFromLayer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertFromLayer(_:)
    - Introduced: 10.7
  */
  @objc (convertSizeFromLayer:) @available(OSX 10.7, *) func convertFromLayer(_: CGSize) -> CGSize

  /**
    - jsName: convertToBacking
    - name: convertSizeToBacking:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToBacking(_:)
    - Introduced: 10.7
  */
  @objc (convertSizeToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGSize) -> CGSize

  /**
    - jsName: convertToLayer
    - name: convertSizeToLayer:
    - argLabels: _
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: convertToLayer(_:)
    - Introduced: 10.7
  */
  @objc (convertSizeToLayer:) @available(OSX 10.7, *) func convertToLayer(_: CGSize) -> CGSize

  /**
    - jsName: dataWithEPS
    - name: dataWithEPSInsideRect:
    - argLabels: inside
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataWithEPS(inside:)
  */
  @objc (dataWithEPSInsideRect:) func dataWithEPS(inside: CGRect) -> Data

  /**
    - jsName: dataWithPDF
    - name: dataWithPDFInsideRect:
    - argLabels: inside
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dataWithPDF(inside:)
  */
  @objc (dataWithPDFInsideRect:) func dataWithPDF(inside: CGRect) -> Data

  /**
    - jsName: didAddSubview
    - name: didAddSubview:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func didAddSubview(_: NSView)

  /**
    - jsName: didCloseMenu
    - name: didCloseMenu:withEvent:
    - argLabels: _, with
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: didCloseMenu(_:with:)
    - Introduced: 10.11
  */
  @objc (didCloseMenu:withEvent:) @available(OSX 10.11, *) func didCloseMenu(_: NSMenu, with: NSEvent?)

  /**
    - jsName: discardCursorRects
    - name: discardCursorRects
    - argLabels: 
    - constructorTokens: 
  */
  @objc func discardCursorRects()

  /**
    - jsName: display
    - name: display
    - argLabels: 
    - constructorTokens: 
  */
  @objc func display()

  /**
    - jsName: displayIfNeeded
    - name: displayIfNeeded
    - argLabels: 
    - constructorTokens: 
  */
  @objc func displayIfNeeded()

  /**
    - jsName: displayIfNeededIgnoringOpacity
    - name: displayIfNeededIgnoringOpacity
    - argLabels: 
    - constructorTokens: 
  */
  @objc func displayIfNeededIgnoringOpacity()

  /**
    - jsName: displayIfNeeded
    - name: displayIfNeededInRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayIfNeeded(_:)
  */
  @objc (displayIfNeededInRect:) func displayIfNeeded(_: CGRect)

  /**
    - jsName: displayIfNeededIgnoringOpacity
    - name: displayIfNeededInRectIgnoringOpacity:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayIfNeededIgnoringOpacity(_:)
  */
  @objc (displayIfNeededInRectIgnoringOpacity:) func displayIfNeededIgnoringOpacity(_: CGRect)

  /**
    - jsName: display
    - name: displayRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: display(_:)
  */
  @objc (displayRect:) func display(_: CGRect)

  /**
    - jsName: displayIgnoringOpacity
    - name: displayRectIgnoringOpacity:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayIgnoringOpacity(_:)
  */
  @objc (displayRectIgnoringOpacity:) func displayIgnoringOpacity(_: CGRect)

  /**
    - jsName: displayIgnoringOpacity
    - name: displayRectIgnoringOpacity:inContext:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: displayIgnoringOpacity(_:in:)
  */
  @objc (displayRectIgnoringOpacity:inContext:) func displayIgnoringOpacity(_: CGRect, in: NSGraphicsContext)

  /**
    - jsName: drawFocusRingMask
    - name: drawFocusRingMask
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func drawFocusRingMask()

  /**
    - jsName: drawPageBorder
    - name: drawPageBorderWithSize:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawPageBorder(with:)
  */
  @objc (drawPageBorderWithSize:) func drawPageBorder(with: CGSize)

  /**
    - jsName: draw
    - name: drawRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: draw(_:)
  */
  @objc (drawRect:) func draw(_: CGRect)

  /**
    - jsName: endDocument
    - name: endDocument
    - argLabels: 
    - constructorTokens: 
  */
  @objc func endDocument()

  /**
    - jsName: endPage
    - name: endPage
    - argLabels: 
    - constructorTokens: 
  */
  @objc func endPage()

  /**
    - jsName: enterFullScreenMode
    - name: enterFullScreenMode:withOptions:
    - argLabels: withOptions
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func enterFullScreenMode(_: NSScreen, withOptions: [NSView.FullScreenModeOptionKey: Any]?) -> Bool

  /**
    - jsName: exerciseAmbiguityInLayout
    - name: exerciseAmbiguityInLayout
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func exerciseAmbiguityInLayout()

  /**
    - jsName: exitFullScreenMode
    - name: exitFullScreenModeWithOptions:
    - argLabels: options
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: exitFullScreenMode(options:)
    - Introduced: 10.5
  */
  @objc (exitFullScreenModeWithOptions:) @available(OSX 10.5, *) func exitFullScreenMode(options: [NSView.FullScreenModeOptionKey: Any]?)

  /**
    - jsName: frame
    - name: frameForAlignmentRect:
    - argLabels: forAlignmentRect
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: frame(forAlignmentRect:)
    - Introduced: 10.7
  */
  @objc (frameForAlignmentRect:) @available(OSX 10.7, *) func frame(forAlignmentRect: CGRect) -> CGRect

  /**
    - jsName: getRectsBeingDrawn
    - name: getRectsBeingDrawn:count:
    - argLabels: count
    - constructorTokens: 
  */
  @objc func getRectsBeingDrawn(_: UnsafeMutablePointer<UnsafePointer<NSRect>?>?, count: UnsafeMutablePointer<NSInteger>?)

  /**
    - jsName: getRectsExposedDuringLiveResize
    - name: getRectsExposedDuringLiveResize:count:
    - argLabels: count
    - constructorTokens: 
  */
  @objc func getRectsExposedDuringLiveResize(_: UnsafeMutablePointer<CGRect>, count: UnsafeMutablePointer<NSInteger>)

  /**
    - jsName: hitTest
    - name: hitTest:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func hitTest(_: CGPoint) -> NSView?

  /**
    - jsName: invalidateIntrinsicContentSize
    - name: invalidateIntrinsicContentSize
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func invalidateIntrinsicContentSize()

  /**
    - jsName: isDescendant
    - name: isDescendantOf:
    - argLabels: of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isDescendant(of:)
  */
  @objc (isDescendantOf:) func isDescendant(of: NSView) -> Bool

  /**
    - jsName: knowsPageRange
    - name: knowsPageRange:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func knowsPageRange(_: NSRangePointer) -> Bool

  /**
    - jsName: layout
    - name: layout
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func layout()

  /**
    - jsName: layoutSubtreeIfNeeded
    - name: layoutSubtreeIfNeeded
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func layoutSubtreeIfNeeded()

  /**
    - jsName: locationOfPrintRect
    - name: locationOfPrintRect:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (locationOfPrintRect:) func locationOfPrintRect(_: CGRect) -> CGPoint

  /**
    - jsName: makeBackingLayer
    - name: makeBackingLayer
    - argLabels: 
    - constructorTokens: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func makeBackingLayer() -> CALayer

  /**
    - jsName: menu
    - name: menuForEvent:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: menu(for:)
  */
  @objc (menuForEvent:) func menu(`for`: NSEvent) -> NSMenu?

  /**
    - jsName: isMousePoint
    - name: mouse:inRect:
    - argLabels: _, in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isMousePoint(_:in:)
  */
  @objc (mouse:inRect:) func isMousePoint(_: CGPoint, in: CGRect) -> Bool

  /**
    - jsName: needsToDraw
    - name: needsToDrawRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: needsToDraw(_:)
  */
  @objc (needsToDrawRect:) func needsToDraw(_: CGRect) -> Bool

  /**
    - jsName: noteFocusRingMaskChanged
    - name: noteFocusRingMaskChanged
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func noteFocusRingMaskChanged()

  /**
    - jsName: prepareContent
    - name: prepareContentInRect:
    - argLabels: in
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: prepareContent(in:)
    - Introduced: 10.9
  */
  @objc (prepareContentInRect:) @available(OSX 10.9, *) func prepareContent(in: CGRect)

  /**
    - jsName: prepareForReuse
    - name: prepareForReuse
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func prepareForReuse()

  /**
    - jsName: printView
    - name: print:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (print:) func printView(_: Any?)

  /**
    - jsName: rectForPage
    - name: rectForPage:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (rectForPage:) func rectForPage(_: Int) -> CGRect

  /**
    - jsName: rectForSmartMagnification
    - name: rectForSmartMagnificationAtPoint:inRect:
    - argLabels: at, in
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: rectForSmartMagnification(at:in:)
    - Introduced: 10.8
  */
  @objc (rectForSmartMagnificationAtPoint:inRect:) @available(OSX 10.8, *) func rectForSmartMagnification(at: CGPoint, in: CGRect) -> CGRect

  /**
    - jsName: reflectScrolledClipView
    - name: reflectScrolledClipView:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reflectScrolledClipView(_: NSClipView)

  /**
    - jsName: registerForDraggedTypes
    - name: registerForDraggedTypes:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (registerForDraggedTypes:) func registerForDraggedTypes(_: [NSPasteboard.PasteboardType])

  /**
    - jsName: removeAllToolTips
    - name: removeAllToolTips
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeAllToolTips()

  /**
    - jsName: removeConstraint
    - name: removeConstraint:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func removeConstraint(_: NSLayoutConstraint)

  /**
    - jsName: removeConstraints
    - name: removeConstraints:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func removeConstraints(_: [NSLayoutConstraint])

  /**
    - jsName: removeCursorRect
    - name: removeCursorRect:cursor:
    - argLabels: cursor
    - constructorTokens: 
  */
  @objc func removeCursorRect(_: CGRect, cursor: NSCursor)

  /**
    - jsName: removeFromSuperview
    - name: removeFromSuperview
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeFromSuperview()

  /**
    - jsName: removeFromSuperviewWithoutNeedingDisplay
    - name: removeFromSuperviewWithoutNeedingDisplay
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeFromSuperviewWithoutNeedingDisplay()

  /**
    - jsName: removeGestureRecognizer
    - name: removeGestureRecognizer:
    - argLabels: 
    - constructorTokens: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func removeGestureRecognizer(_: NSGestureRecognizer)

  /**
    - jsName: removeLayoutGuide
    - name: removeLayoutGuide:
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func removeLayoutGuide(_: NSLayoutGuide)

  /**
    - jsName: removeToolTip
    - name: removeToolTip:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeToolTip(_: NSView.ToolTipTag)

  /**
    - jsName: removeTrackingArea
    - name: removeTrackingArea:
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func removeTrackingArea(_: NSTrackingArea)

  /**
    - jsName: removeTrackingRect
    - name: removeTrackingRect:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeTrackingRect(_: NSView.TrackingRectTag)

  /**
    - jsName: replaceSubview
    - name: replaceSubview:with:
    - argLabels: with
    - constructorTokens: 
  */
  @objc func replaceSubview(_: NSView, with: NSView)

  /**
    - jsName: resetCursorRects
    - name: resetCursorRects
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resetCursorRects()

  /**
    - jsName: resizeSubviews
    - name: resizeSubviewsWithOldSize:
    - argLabels: withOldSize
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resizeSubviews(withOldSize:)
  */
  @objc (resizeSubviewsWithOldSize:) func resizeSubviews(withOldSize: CGSize)

  /**
    - jsName: resize
    - name: resizeWithOldSuperviewSize:
    - argLabels: withOldSuperviewSize
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resize(withOldSuperviewSize:)
  */
  @objc (resizeWithOldSuperviewSize:) func resize(withOldSuperviewSize: CGSize)

  /**
    - jsName: rotate
    - name: rotateByAngle:
    - argLabels: byDegrees
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rotate(byDegrees:)
  */
  @objc (rotateByAngle:) func rotate(byDegrees: CGFloat)

  /**
    - jsName: rulerView
    - name: rulerView:didAddMarker:
    - argLabels: _, didAdd
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:didAdd:)
  */
  @objc (rulerView:didAddMarker:) func rulerView(_: NSRulerView, didAdd: NSRulerMarker)

  /**
    - jsName: rulerView
    - name: rulerView:didMoveMarker:
    - argLabels: _, didMove
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:didMove:)
  */
  @objc (rulerView:didMoveMarker:) func rulerView(_: NSRulerView, didMove: NSRulerMarker)

  /**
    - jsName: rulerView
    - name: rulerView:didRemoveMarker:
    - argLabels: _, didRemove
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:didRemove:)
  */
  @objc (rulerView:didRemoveMarker:) func rulerView(_: NSRulerView, didRemove: NSRulerMarker)

  /**
    - jsName: rulerView
    - name: rulerView:handleMouseDown:
    - argLabels: _, handleMouseDownWith
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:handleMouseDownWith:)
  */
  @objc (rulerView:handleMouseDown:) func rulerView(_: NSRulerView, handleMouseDownWith: NSEvent)

  /**
    - jsName: rulerView
    - name: rulerView:locationForPoint:
    - argLabels: _, locationFor
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: rulerView(_:locationFor:)
    - Introduced: 10.7
  */
  @objc (rulerView:locationForPoint:) @available(OSX 10.7, *) func rulerView(_: NSRulerView, locationFor: CGPoint) -> CGFloat

  /**
    - jsName: rulerView
    - name: rulerView:pointForLocation:
    - argLabels: pointForLocation
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func rulerView(_: NSRulerView, pointForLocation: CGFloat) -> CGPoint

  /**
    - jsName: rulerView
    - name: rulerView:shouldAddMarker:
    - argLabels: _, shouldAdd
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:shouldAdd:)
  */
  @objc (rulerView:shouldAddMarker:) func rulerView(_: NSRulerView, shouldAdd: NSRulerMarker) -> Bool

  /**
    - jsName: rulerView
    - name: rulerView:shouldMoveMarker:
    - argLabels: _, shouldMove
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:shouldMove:)
  */
  @objc (rulerView:shouldMoveMarker:) func rulerView(_: NSRulerView, shouldMove: NSRulerMarker) -> Bool

  /**
    - jsName: rulerView
    - name: rulerView:shouldRemoveMarker:
    - argLabels: _, shouldRemove
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:shouldRemove:)
  */
  @objc (rulerView:shouldRemoveMarker:) func rulerView(_: NSRulerView, shouldRemove: NSRulerMarker) -> Bool

  /**
    - jsName: rulerView
    - name: rulerView:willAddMarker:atLocation:
    - argLabels: _, willAdd, atLocation
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:willAdd:atLocation:)
  */
  @objc (rulerView:willAddMarker:atLocation:) func rulerView(_: NSRulerView, willAdd: NSRulerMarker, atLocation: CGFloat) -> CGFloat

  /**
    - jsName: rulerView
    - name: rulerView:willMoveMarker:toLocation:
    - argLabels: _, willMove, toLocation
    - constructorTokens: 
    - obsoleted: 3
    - renamed: rulerView(_:willMove:toLocation:)
  */
  @objc (rulerView:willMoveMarker:toLocation:) func rulerView(_: NSRulerView, willMove: NSRulerMarker, toLocation: CGFloat) -> CGFloat

  /**
    - jsName: rulerView
    - name: rulerView:willSetClientView:
    - argLabels: willSetClientView
    - constructorTokens: 
  */
  @objc func rulerView(_: NSRulerView, willSetClientView: NSView)

  /**
    - jsName: scaleUnitSquare
    - name: scaleUnitSquareToSize:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scaleUnitSquare(to:)
  */
  @objc (scaleUnitSquareToSize:) func scaleUnitSquare(to: CGSize)

  /**
    - jsName: scroll
    - name: scrollClipView:toPoint:
    - argLabels: _, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scroll(_:to:)
  */
  @objc (scrollClipView:toPoint:) func scroll(_: NSClipView, to: CGPoint)

  /**
    - jsName: scroll
    - name: scrollPoint:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scroll(_:)
  */
  @objc (scrollPoint:) func scroll(_: CGPoint)

  /**
    - jsName: scrollToVisible
    - name: scrollRectToVisible:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: scrollToVisible(_:)
  */
  @objc (scrollRectToVisible:) func scrollToVisible(_: CGRect) -> Bool

  /**
    - jsName: setBoundsOrigin
    - name: setBoundsOrigin:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setBoundsOrigin(_: CGPoint)

  /**
    - jsName: setBoundsSize
    - name: setBoundsSize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setBoundsSize(_: CGSize)

  /**
    - jsName: setContentCompressionResistancePriority
    - name: setContentCompressionResistancePriority:forOrientation:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: setContentCompressionResistancePriority(_:for:)
    - Introduced: 10.7
  */
  @objc (setContentCompressionResistancePriority:forOrientation:) @available(OSX 10.7, *) func setContentCompressionResistancePriority(_: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - jsName: setContentHuggingPriority
    - name: setContentHuggingPriority:forOrientation:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: setContentHuggingPriority(_:for:)
    - Introduced: 10.7
  */
  @objc (setContentHuggingPriority:forOrientation:) @available(OSX 10.7, *) func setContentHuggingPriority(_: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - jsName: setFrameOrigin
    - name: setFrameOrigin:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameOrigin(_: CGPoint)

  /**
    - jsName: setFrameSize
    - name: setFrameSize:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFrameSize(_: CGSize)

  /**
    - jsName: setKeyboardFocusRingNeedsDisplay
    - name: setKeyboardFocusRingNeedsDisplayInRect:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setKeyboardFocusRingNeedsDisplay(_:)
  */
  @objc (setKeyboardFocusRingNeedsDisplayInRect:) func setKeyboardFocusRingNeedsDisplay(_: CGRect)

  /**
    - jsName: shouldDelayWindowOrdering
    - name: shouldDelayWindowOrderingForEvent:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shouldDelayWindowOrdering(for:)
  */
  @objc (shouldDelayWindowOrderingForEvent:) func shouldDelayWindowOrdering(`for`: NSEvent) -> Bool

  /**
    - jsName: showDefinition
    - name: showDefinitionForAttributedString:atPoint:
    - argLabels: for, at
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: showDefinition(for:at:)
    - Introduced: 10.6
  */
  @objc (showDefinitionForAttributedString:atPoint:) @available(OSX 10.6, *) func showDefinition(`for`: NSAttributedString?, at: CGPoint)

  /**
    - jsName: showDefinition
    - name: showDefinitionForAttributedString:range:options:baselineOriginProvider:
    - argLabels: for, range, options, baselineOriginProvider
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: showDefinition(for:range:options:baselineOriginProvider:)
    - Introduced: 10.6
  */
  // jsvalue - @objc (showDefinitionForAttributedString:range:options:baselineOriginProvider:) @available(OSX 10.6, *) func showDefinition(`for`: NSAttributedString?, range: NSRange, options: [NSView.DefinitionOptionKey: Any]?, baselineOriginProvider: JSValue)

  /**
    - jsName: sortSubviews
    - name: sortSubviewsUsingFunction:context:
    - argLabels: _, context
    - constructorTokens: 
    - obsoleted: 3
    - renamed: sortSubviews(_:context:)
  */
  // jsvalue - @objc (sortSubviewsUsingFunction:context:) func sortSubviews(_: JSValue, context: UnsafeMutableRawPointer?)

  /**
    - jsName: translateOrigin
    - name: translateOriginToPoint:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: translateOrigin(to:)
  */
  @objc (translateOriginToPoint:) func translateOrigin(to: CGPoint)

  /**
    - jsName: translateRectsNeedingDisplay
    - name: translateRectsNeedingDisplayInRect:by:
    - argLabels: in, by
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: translateRectsNeedingDisplay(in:by:)
    - Introduced: 10.5
  */
  @objc (translateRectsNeedingDisplayInRect:by:) @available(OSX 10.5, *) func translateRectsNeedingDisplay(in: CGRect, by: CGSize)

  /**
    - jsName: unregisterDraggedTypes
    - name: unregisterDraggedTypes
    - argLabels: 
    - constructorTokens: 
  */
  @objc func unregisterDraggedTypes()

  /**
    - jsName: updateConstraints
    - name: updateConstraints
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateConstraints()

  /**
    - jsName: updateConstraintsForSubtreeIfNeeded
    - name: updateConstraintsForSubtreeIfNeeded
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateConstraintsForSubtreeIfNeeded()

  /**
    - jsName: updateLayer
    - name: updateLayer
    - argLabels: 
    - constructorTokens: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func updateLayer()

  /**
    - jsName: updateTrackingAreas
    - name: updateTrackingAreas
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func updateTrackingAreas()

  /**
    - jsName: viewDidChangeBackingProperties
    - name: viewDidChangeBackingProperties
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func viewDidChangeBackingProperties()

  /**
    - jsName: viewDidChangeEffectiveAppearance
    - name: viewDidChangeEffectiveAppearance
    - argLabels: 
    - constructorTokens: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func viewDidChangeEffectiveAppearance()

  /**
    - jsName: viewDidEndLiveResize
    - name: viewDidEndLiveResize
    - argLabels: 
    - constructorTokens: 
  */
  @objc func viewDidEndLiveResize()

  /**
    - jsName: viewDidHide
    - name: viewDidHide
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func viewDidHide()

  /**
    - jsName: viewDidMoveToSuperview
    - name: viewDidMoveToSuperview
    - argLabels: 
    - constructorTokens: 
  */
  @objc func viewDidMoveToSuperview()

  /**
    - jsName: viewDidMoveToWindow
    - name: viewDidMoveToWindow
    - argLabels: 
    - constructorTokens: 
  */
  @objc func viewDidMoveToWindow()

  /**
    - jsName: viewDidUnhide
    - name: viewDidUnhide
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func viewDidUnhide()

  /**
    - jsName: viewWillDraw
    - name: viewWillDraw
    - argLabels: 
    - constructorTokens: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func viewWillDraw()

  /**
    - jsName: viewWillMove
    - name: viewWillMoveToSuperview:
    - argLabels: toSuperview
    - constructorTokens: 
    - obsoleted: 3
    - renamed: viewWillMove(toSuperview:)
  */
  @objc (viewWillMoveToSuperview:) func viewWillMove(toSuperview: NSView?)

  /**
    - jsName: viewWillMove
    - name: viewWillMoveToWindow:
    - argLabels: toWindow
    - constructorTokens: 
    - obsoleted: 3
    - renamed: viewWillMove(toWindow:)
  */
  @objc (viewWillMoveToWindow:) func viewWillMove(toWindow: NSWindow?)

  /**
    - jsName: viewWillStartLiveResize
    - name: viewWillStartLiveResize
    - argLabels: 
    - constructorTokens: 
  */
  @objc func viewWillStartLiveResize()

  /**
    - jsName: viewWithTag
    - name: viewWithTag:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (viewWithTag:) func viewWithTag(_: Int) -> NSView?

  /**
    - jsName: willOpenMenu
    - name: willOpenMenu:withEvent:
    - argLabels: _, with
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: willOpenMenu(_:with:)
    - Introduced: 10.11
  */
  @objc (willOpenMenu:withEvent:) @available(OSX 10.11, *) func willOpenMenu(_: NSMenu, with: NSEvent)

  /**
    - jsName: willRemoveSubview
    - name: willRemoveSubview:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func willRemoveSubview(_: NSView)

  /**
    - jsName: writeEPS
    - name: writeEPSInsideRect:toPasteboard:
    - argLabels: inside, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writeEPS(inside:to:)
  */
  @objc (writeEPSInsideRect:toPasteboard:) func writeEPS(inside: CGRect, to: NSPasteboard)

  /**
    - jsName: writePDF
    - name: writePDFInsideRect:toPasteboard:
    - argLabels: inside, to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writePDF(inside:to:)
  */
  @objc (writePDFInsideRect:toPasteboard:) func writePDF(inside: CGRect, to: NSPasteboard)

  // Protocol Inherited Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - jsName: alignmentRectInsets
    - name: alignmentRectInsets
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var alignmentRectInsets: NSEdgeInsets { @objc get }

  /**
    - jsName: allowedTouchTypes
    - name: allowedTouchTypes
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowedTouchTypes: NSTouch.TouchTypeMask { @objc get @objc (setAllowedTouchTypes:) set }

  /**
    - jsName: allowsVibrancy
    - name: allowsVibrancy
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowsVibrancy: Bool { @objc get }

  /**
    - jsName: alphaValue
    - name: alphaValue
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var alphaValue: CGFloat { @objc get @objc (setAlphaValue:) set }

  /**
    - jsName: autoresizesSubviews
    - name: autoresizesSubviews
    - argLabels: 
  */
  @objc var autoresizesSubviews: Bool { @objc get @objc (setAutoresizesSubviews:) set }

  /**
    - jsName: autoresizingMask
    - name: autoresizingMask
    - argLabels: 
  */
  @objc var autoresizingMask: NSView.AutoresizingMask { @objc get @objc (setAutoresizingMask:) set }

  /**
    - jsName: backgroundFilters
    - name: backgroundFilters
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var backgroundFilters: [CIFilter] { @objc get @objc (setBackgroundFilters:) set }

  /**
    - jsName: baselineOffsetFromBottom
    - name: baselineOffsetFromBottom
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var baselineOffsetFromBottom: CGFloat { @objc get }

  /**
    - jsName: bottomAnchor
    - name: bottomAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var bottomAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: bounds
    - name: bounds
    - argLabels: 
  */
  @objc var bounds: CGRect { @objc get @objc (setBounds:) set }

  /**
    - jsName: boundsRotation
    - name: boundsRotation
    - argLabels: 
  */
  @objc var boundsRotation: CGFloat { @objc get @objc (setBoundsRotation:) set }

  /**
    - jsName: canBecomeKeyView
    - name: canBecomeKeyView
    - argLabels: 
  */
  @objc var canBecomeKeyView: Bool { @objc get }

  /**
    - jsName: canDrawConcurrently
    - name: canDrawConcurrently
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var canDrawConcurrently: Bool { @objc get @objc (setCanDrawConcurrently:) set }

  /**
    - jsName: canDrawSubviewsIntoLayer
    - name: canDrawSubviewsIntoLayer
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var canDrawSubviewsIntoLayer: Bool { @objc get @objc (setCanDrawSubviewsIntoLayer:) set }

  /**
    - jsName: candidateListTouchBarItem
    - name: candidateListTouchBarItem
    - argLabels: 
    - available: 10.12.2
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var candidateListTouchBarItem: NSCandidateListTouchBarItem<AnyObject>? { @objc get }

  /**
    - jsName: centerXAnchor
    - name: centerXAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var centerXAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: centerYAnchor
    - name: centerYAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var centerYAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: compositingFilter
    - name: compositingFilter
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var compositingFilter: CIFilter? { @objc get @objc (setCompositingFilter:) set }

  /**
    - jsName: constraints
    - name: constraints
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var constraints: [NSLayoutConstraint] { @objc get }

  /**
    - jsName: contentFilters
    - name: contentFilters
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var contentFilters: [CIFilter] { @objc get @objc (setContentFilters:) set }

  /**
    - jsName: isDrawingFindIndicator
    - name: drawingFindIndicator
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: isDrawingFindIndicator
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isDrawingFindIndicator: Bool { @objc get }

  /**
    - jsName: enclosingMenuItem
    - name: enclosingMenuItem
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var enclosingMenuItem: NSMenuItem? { @objc get }

  /**
    - jsName: enclosingScrollView
    - name: enclosingScrollView
    - argLabels: 
  */
  @objc var enclosingScrollView: NSScrollView? { @objc get }

  /**
    - jsName: firstBaselineAnchor
    - name: firstBaselineAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var firstBaselineAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: firstBaselineOffsetFromTop
    - name: firstBaselineOffsetFromTop
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var firstBaselineOffsetFromTop: CGFloat { @objc get }

  /**
    - jsName: fittingSize
    - name: fittingSize
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var fittingSize: CGSize { @objc get }

  /**
    - jsName: isFlipped
    - name: flipped
    - argLabels: 
    - obsoleted: 3
    - renamed: isFlipped
  */
  @objc var isFlipped: Bool { @objc get }

  /**
    - jsName: focusRingMaskBounds
    - name: focusRingMaskBounds
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var focusRingMaskBounds: CGRect { @objc get }

  /**
    - jsName: focusRingType
    - name: focusRingType
    - argLabels: 
  */
  @objc var focusRingType: NSFocusRingType { @objc get @objc (setFocusRingType:) set }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - jsName: frameCenterRotation
    - name: frameCenterRotation
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var frameCenterRotation: CGFloat { @objc get @objc (setFrameCenterRotation:) set }

  /**
    - jsName: frameRotation
    - name: frameRotation
    - argLabels: 
  */
  @objc var frameRotation: CGFloat { @objc get @objc (setFrameRotation:) set }

  /**
    - jsName: gestureRecognizers
    - name: gestureRecognizers
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var gestureRecognizers: [NSGestureRecognizer] { @objc get @objc (setGestureRecognizers:) set }

  /**
    - jsName: hasAmbiguousLayout
    - name: hasAmbiguousLayout
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var hasAmbiguousLayout: Bool { @objc get }

  /**
    - jsName: heightAdjustLimit
    - name: heightAdjustLimit
    - argLabels: 
  */
  @objc var heightAdjustLimit: CGFloat { @objc get }

  /**
    - jsName: heightAnchor
    - name: heightAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var heightAnchor: NSLayoutDimension { @objc get }

  /**
    - jsName: isHidden
    - name: hidden
    - argLabels: 
    - obsoleted: 3
    - renamed: isHidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - jsName: isHiddenOrHasHiddenAncestor
    - name: hiddenOrHasHiddenAncestor
    - argLabels: 
    - obsoleted: 3
    - renamed: isHiddenOrHasHiddenAncestor
  */
  @objc var isHiddenOrHasHiddenAncestor: Bool { @objc get }

  /**
    - jsName: isHorizontalContentSizeConstraintActive
    - name: horizontalContentSizeConstraintActive
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: isHorizontalContentSizeConstraintActive
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isHorizontalContentSizeConstraintActive: Bool { @objc get @objc (setHorizontalContentSizeConstraintActive:) set }

  /**
    - jsName: isInFullScreenMode
    - name: inFullScreenMode
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: isInFullScreenMode
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isInFullScreenMode: Bool { @objc get }

  /**
    - jsName: inLiveResize
    - name: inLiveResize
    - argLabels: 
  */
  @objc var inLiveResize: Bool { @objc get }

  /**
    - jsName: inputContext
    - name: inputContext
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var inputContext: NSTextInputContext? { @objc get }

  /**
    - jsName: intrinsicContentSize
    - name: intrinsicContentSize
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var intrinsicContentSize: CGSize { @objc get }

  /**
    - jsName: lastBaselineAnchor
    - name: lastBaselineAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var lastBaselineAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: lastBaselineOffsetFromBottom
    - name: lastBaselineOffsetFromBottom
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var lastBaselineOffsetFromBottom: CGFloat { @objc get }

  /**
    - jsName: layer
    - name: layer
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var layer: CALayer? { @objc get @objc (setLayer:) set }

  /**
    - jsName: layerContentsPlacement
    - name: layerContentsPlacement
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var layerContentsPlacement: NSView.LayerContentsPlacement { @objc get @objc (setLayerContentsPlacement:) set }

  /**
    - jsName: layerContentsRedrawPolicy
    - name: layerContentsRedrawPolicy
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var layerContentsRedrawPolicy: NSView.LayerContentsRedrawPolicy { @objc get @objc (setLayerContentsRedrawPolicy:) set }

  /**
    - jsName: layerUsesCoreImageFilters
    - name: layerUsesCoreImageFilters
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var layerUsesCoreImageFilters: Bool { @objc get @objc (setLayerUsesCoreImageFilters:) set }

  /**
    - jsName: layoutGuides
    - name: layoutGuides
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var layoutGuides: [NSLayoutGuide] { @objc get }

  /**
    - jsName: leadingAnchor
    - name: leadingAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var leadingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: leftAnchor
    - name: leftAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var leftAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: mouseDownCanMoveWindow
    - name: mouseDownCanMoveWindow
    - argLabels: 
  */
  @objc var mouseDownCanMoveWindow: Bool { @objc get }

  /**
    - jsName: needsDisplay
    - name: needsDisplay
    - argLabels: 
  */
  @objc var needsDisplay: Bool { @objc get @objc (setNeedsDisplay:) set }

  /**
    - jsName: needsLayout
    - name: needsLayout
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var needsLayout: Bool { @objc get @objc (setNeedsLayout:) set }

  /**
    - jsName: needsPanelToBecomeKey
    - name: needsPanelToBecomeKey
    - argLabels: 
  */
  @objc var needsPanelToBecomeKey: Bool { @objc get }

  /**
    - jsName: needsUpdateConstraints
    - name: needsUpdateConstraints
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var needsUpdateConstraints: Bool { @objc get @objc (setNeedsUpdateConstraints:) set }

  /**
    - jsName: nextKeyView
    - name: nextKeyView
    - argLabels: 
  */
  @objc var nextKeyView: NSView? { @objc get @objc (setNextKeyView:) set }

  /**
    - jsName: nextValidKeyView
    - name: nextValidKeyView
    - argLabels: 
  */
  @objc var nextValidKeyView: NSView? { @objc get }

  /**
    - jsName: isOpaque
    - name: opaque
    - argLabels: 
    - obsoleted: 3
    - renamed: isOpaque
  */
  @objc var isOpaque: Bool { @objc get }

  /**
    - jsName: opaqueAncestor
    - name: opaqueAncestor
    - argLabels: 
  */
  @objc var opaqueAncestor: NSView? { @objc get }

  /**
    - jsName: pageFooter
    - name: pageFooter
    - argLabels: 
  */
  @objc var pageFooter: NSAttributedString { @objc get }

  /**
    - jsName: pageHeader
    - name: pageHeader
    - argLabels: 
  */
  @objc var pageHeader: NSAttributedString { @objc get }

  /**
    - jsName: postsBoundsChangedNotifications
    - name: postsBoundsChangedNotifications
    - argLabels: 
  */
  @objc var postsBoundsChangedNotifications: Bool { @objc get @objc (setPostsBoundsChangedNotifications:) set }

  /**
    - jsName: postsFrameChangedNotifications
    - name: postsFrameChangedNotifications
    - argLabels: 
  */
  @objc var postsFrameChangedNotifications: Bool { @objc get @objc (setPostsFrameChangedNotifications:) set }

  /**
    - jsName: preparedContentRect
    - name: preparedContentRect
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var preparedContentRect: CGRect { @objc get @objc (setPreparedContentRect:) set }

  /**
    - jsName: preservesContentDuringLiveResize
    - name: preservesContentDuringLiveResize
    - argLabels: 
  */
  @objc var preservesContentDuringLiveResize: Bool { @objc get }

  /**
    - jsName: pressureConfiguration
    - name: pressureConfiguration
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var pressureConfiguration: NSPressureConfiguration? { @objc get @objc (setPressureConfiguration:) set }

  /**
    - jsName: previousKeyView
    - name: previousKeyView
    - argLabels: 
  */
  @objc var previousKeyView: NSView? { @objc get }

  /**
    - jsName: previousValidKeyView
    - name: previousValidKeyView
    - argLabels: 
  */
  @objc var previousValidKeyView: NSView? { @objc get }

  /**
    - jsName: printJobTitle
    - name: printJobTitle
    - argLabels: 
  */
  @objc var printJobTitle: String { @objc get }

  /**
    - jsName: rectPreservedDuringLiveResize
    - name: rectPreservedDuringLiveResize
    - argLabels: 
  */
  @objc var rectPreservedDuringLiveResize: CGRect { @objc get }

  /**
    - jsName: registeredDraggedTypes
    - name: registeredDraggedTypes
    - argLabels: 
  */
  @objc var registeredDraggedTypes: [NSPasteboard.PasteboardType] { @objc get }

  /**
    - jsName: rightAnchor
    - name: rightAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rightAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: isRotatedFromBase
    - name: rotatedFromBase
    - argLabels: 
    - obsoleted: 3
    - renamed: isRotatedFromBase
  */
  @objc var isRotatedFromBase: Bool { @objc get }

  /**
    - jsName: isRotatedOrScaledFromBase
    - name: rotatedOrScaledFromBase
    - argLabels: 
    - obsoleted: 3
    - renamed: isRotatedOrScaledFromBase
  */
  @objc var isRotatedOrScaledFromBase: Bool { @objc get }

  /**
    - jsName: shadow
    - name: shadow
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var shadow: NSShadow? { @objc get @objc (setShadow:) set }

  /**
    - jsName: subviews
    - name: subviews
    - argLabels: 
  */
  @objc var subviews: [NSView] { @objc get @objc (setSubviews:) set }

  /**
    - jsName: superview
    - name: superview
    - argLabels: 
  */
  @objc var superview: NSView? { @objc get }

  /**
    - jsName: tag
    - name: tag
    - argLabels: 
  */
  @objc var tag: Int { @objc get }

  /**
    - jsName: toolTip
    - name: toolTip
    - argLabels: 
  */
  @objc var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - jsName: topAnchor
    - name: topAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var topAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - jsName: trackingAreas
    - name: trackingAreas
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var trackingAreas: [NSTrackingArea] { @objc get }

  /**
    - jsName: trailingAnchor
    - name: trailingAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var trailingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - jsName: translatesAutoresizingMaskIntoConstraints
    - name: translatesAutoresizingMaskIntoConstraints
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var translatesAutoresizingMaskIntoConstraints: Bool { @objc get @objc (setTranslatesAutoresizingMaskIntoConstraints:) set }

  /**
    - jsName: userInterfaceLayoutDirection
    - name: userInterfaceLayoutDirection
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setUserInterfaceLayoutDirection:) set }

  /**
    - jsName: isVerticalContentSizeConstraintActive
    - name: verticalContentSizeConstraintActive
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: isVerticalContentSizeConstraintActive
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isVerticalContentSizeConstraintActive: Bool { @objc get @objc (setVerticalContentSizeConstraintActive:) set }

  /**
    - jsName: visibleRect
    - name: visibleRect
    - argLabels: 
  */
  @objc var visibleRect: CGRect { @objc get }

  /**
    - jsName: wantsDefaultClipping
    - name: wantsDefaultClipping
    - argLabels: 
  */
  @objc var wantsDefaultClipping: Bool { @objc get }

  /**
    - jsName: wantsLayer
    - name: wantsLayer
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var wantsLayer: Bool { @objc get @objc (setWantsLayer:) set }

  /**
    - jsName: wantsRestingTouches
    - name: wantsRestingTouches
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var wantsRestingTouches: Bool { @objc get @objc (setWantsRestingTouches:) set }

  /**
    - jsName: wantsUpdateLayer
    - name: wantsUpdateLayer
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var wantsUpdateLayer: Bool { @objc get }

  /**
    - jsName: widthAdjustLimit
    - name: widthAdjustLimit
    - argLabels: 
  */
  @objc var widthAdjustLimit: CGFloat { @objc get }

  /**
    - jsName: widthAnchor
    - name: widthAnchor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var widthAnchor: NSLayoutDimension { @objc get }

  /**
    - jsName: window
    - name: window
    - argLabels: 
  */
  @objc var window: NSWindow? { @objc get }
}

extension NSView: NSViewExports {
}
