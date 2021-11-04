import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSView
  */

@objc(NSView) protocol NSViewExports: JSExport, NSResponderExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: compatibleWithResponsiveScrolling
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static var isCompatibleWithResponsiveScrolling: Bool { @objc get }

  /**
    - Selector: defaultFocusRingType
  */
  @objc static var defaultFocusRingType: NSFocusRingType { @objc get }

  /**
    - Selector: defaultMenu
  */
  @objc static var defaultMenu: NSMenu? { @objc get }

  /**
    - Selector: focusView
  */
  @objc static var focusView: NSView? { @objc get }

  /**
    - Selector: requiresConstraintBasedLayout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var requiresConstraintBasedLayout: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: acceptsFirstMouse:
  */
  @objc (acceptsFirstMouse:) func acceptsFirstMouse(`for`: NSEvent?) -> Bool

  /**
    - Selector: addConstraint:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func addConstraint(_: NSLayoutConstraint)

  /**
    - Selector: addConstraints:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func addConstraints(_: [NSLayoutConstraint])

  /**
    - Selector: addCursorRect:cursor:
  */
  @objc func addCursorRect(_: CGRect, cursor: NSCursor)

  /**
    - Selector: addGestureRecognizer:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func addGestureRecognizer(_: NSGestureRecognizer)

  /**
    - Selector: addLayoutGuide:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func addLayoutGuide(_: NSLayoutGuide)

  /**
    - Selector: addSubview:
  */
  @objc func addSubview(_: NSView)

  /**
    - Selector: addSubview:positioned:relativeTo:
  */
  @objc func addSubview(_: NSView, positioned: NSWindow.OrderingMode, relativeTo: NSView?)

  /**
    - Selector: addToolTipRect:owner:userData:
  */
  @objc (addToolTipRect:owner:userData:) func addToolTip(_: CGRect, owner: Any, userData: UnsafeMutableRawPointer?) -> NSView.ToolTipTag

  /**
    - Selector: addTrackingArea:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func addTrackingArea(_: NSTrackingArea)

  /**
    - Selector: addTrackingRect:owner:userData:assumeInside:
  */
  @objc func addTrackingRect(_: CGRect, owner: Any, userData: UnsafeMutableRawPointer?, assumeInside: Bool) -> NSView.TrackingRectTag

  /**
    - Selector: adjustPageHeightNew:top:bottom:limit:
  */
  @objc func adjustPageHeightNew(_: UnsafeMutablePointer<CGFloat>, top: CGFloat, bottom: CGFloat, limit: CGFloat)

  /**
    - Selector: adjustPageWidthNew:left:right:limit:
  */
  @objc func adjustPageWidthNew(_: UnsafeMutablePointer<CGFloat>, left: CGFloat, right: CGFloat, limit: CGFloat)

  /**
    - Selector: adjustScroll:
  */
  @objc func adjustScroll(_: CGRect) -> CGRect

  /**
    - Selector: alignmentRectForFrame:
    - Introduced: 10.7
  */
  @objc (alignmentRectForFrame:) @available(OSX 10.7, *) func alignmentRect(forFrame: CGRect) -> CGRect

  /**
    - Selector: ancestorSharedWithView:
  */
  @objc (ancestorSharedWithView:) func ancestorShared(with: NSView) -> NSView?

  /**
    - Selector: autoscroll:
  */
  @objc (autoscroll:) func autoscroll(with: NSEvent) -> Bool

  /**
    - Selector: backingAlignedRect:options:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func backingAlignedRect(_: CGRect, options: AlignmentOptions) -> CGRect

  /**
    - Selector: beginDocument
  */
  @objc func beginDocument()

  /**
    - Selector: beginDraggingSessionWithItems:event:source:
    - Introduced: 10.7
  */
  @objc (beginDraggingSessionWithItems:event:source:) @available(OSX 10.7, *) func beginDraggingSession(with: [NSDraggingItem], event: NSEvent, source: NSDraggingSource) -> NSDraggingSession

  /**
    - Selector: beginPageInRect:atPlacement:
  */
  @objc (beginPageInRect:atPlacement:) func beginPage(in: CGRect, atPlacement: CGPoint)

  /**
    - Selector: bitmapImageRepForCachingDisplayInRect:
  */
  @objc (bitmapImageRepForCachingDisplayInRect:) func bitmapImageRepForCachingDisplay(in: CGRect) -> NSBitmapImageRep?

  /**
    - Selector: cacheDisplayInRect:toBitmapImageRep:
  */
  @objc (cacheDisplayInRect:toBitmapImageRep:) func cacheDisplay(in: CGRect, to: NSBitmapImageRep)

  /**
    - Selector: centerScanRect:
  */
  @objc func centerScanRect(_: CGRect) -> CGRect

  /**
    - Selector: constraintsAffectingLayoutForOrientation:
    - Introduced: 10.7
  */
  @objc (constraintsAffectingLayoutForOrientation:) @available(OSX 10.7, *) func constraintsAffectingLayout(`for`: NSLayoutConstraint.Orientation) -> [NSLayoutConstraint]

  /**
    - Selector: contentCompressionResistancePriorityForOrientation:
    - Introduced: 10.7
  */
  @objc (contentCompressionResistancePriorityForOrientation:) @available(OSX 10.7, *) func contentCompressionResistancePriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - Selector: contentHuggingPriorityForOrientation:
    - Introduced: 10.7
  */
  @objc (contentHuggingPriorityForOrientation:) @available(OSX 10.7, *) func contentHuggingPriority(`for`: NSLayoutConstraint.Orientation) -> NSLayoutConstraint.Priority

  /**
    - Selector: convertPoint:fromView:
  */
  @objc (convertPoint:fromView:) func convert(_: CGPoint, from: NSView?) -> CGPoint

  /**
    - Selector: convertPoint:toView:
  */
  @objc (convertPoint:toView:) func convert(_: CGPoint, to: NSView?) -> CGPoint

  /**
    - Selector: convertPointFromBacking:
    - Introduced: 10.7
  */
  @objc (convertPointFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGPoint) -> CGPoint

  /**
    - Selector: convertPointFromLayer:
    - Introduced: 10.7
  */
  @objc (convertPointFromLayer:) @available(OSX 10.7, *) func convertFromLayer(_: CGPoint) -> CGPoint

  /**
    - Selector: convertPointToBacking:
    - Introduced: 10.7
  */
  @objc (convertPointToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGPoint) -> CGPoint

  /**
    - Selector: convertPointToLayer:
    - Introduced: 10.7
  */
  @objc (convertPointToLayer:) @available(OSX 10.7, *) func convertToLayer(_: CGPoint) -> CGPoint

  /**
    - Selector: convertRect:fromView:
  */
  @objc (convertRect:fromView:) func convert(_: CGRect, from: NSView?) -> CGRect

  /**
    - Selector: convertRect:toView:
  */
  @objc (convertRect:toView:) func convert(_: CGRect, to: NSView?) -> CGRect

  /**
    - Selector: convertRectFromBacking:
    - Introduced: 10.7
  */
  @objc (convertRectFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGRect) -> CGRect

  /**
    - Selector: convertRectFromLayer:
    - Introduced: 10.7
  */
  @objc (convertRectFromLayer:) @available(OSX 10.7, *) func convertFromLayer(_: CGRect) -> CGRect

  /**
    - Selector: convertRectToBacking:
    - Introduced: 10.7
  */
  @objc (convertRectToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGRect) -> CGRect

  /**
    - Selector: convertRectToLayer:
    - Introduced: 10.7
  */
  @objc (convertRectToLayer:) @available(OSX 10.7, *) func convertToLayer(_: CGRect) -> CGRect

  /**
    - Selector: convertSize:fromView:
  */
  @objc (convertSize:fromView:) func convert(_: CGSize, from: NSView?) -> CGSize

  /**
    - Selector: convertSize:toView:
  */
  @objc (convertSize:toView:) func convert(_: CGSize, to: NSView?) -> CGSize

  /**
    - Selector: convertSizeFromBacking:
    - Introduced: 10.7
  */
  @objc (convertSizeFromBacking:) @available(OSX 10.7, *) func convertFromBacking(_: CGSize) -> CGSize

  /**
    - Selector: convertSizeFromLayer:
    - Introduced: 10.7
  */
  @objc (convertSizeFromLayer:) @available(OSX 10.7, *) func convertFromLayer(_: CGSize) -> CGSize

  /**
    - Selector: convertSizeToBacking:
    - Introduced: 10.7
  */
  @objc (convertSizeToBacking:) @available(OSX 10.7, *) func convertToBacking(_: CGSize) -> CGSize

  /**
    - Selector: convertSizeToLayer:
    - Introduced: 10.7
  */
  @objc (convertSizeToLayer:) @available(OSX 10.7, *) func convertToLayer(_: CGSize) -> CGSize

  /**
    - Selector: dataWithEPSInsideRect:
  */
  @objc (dataWithEPSInsideRect:) func dataWithEPS(inside: CGRect) -> Data

  /**
    - Selector: dataWithPDFInsideRect:
  */
  @objc (dataWithPDFInsideRect:) func dataWithPDF(inside: CGRect) -> Data

  /**
    - Selector: didAddSubview:
  */
  @objc func didAddSubview(_: NSView)

  /**
    - Selector: didCloseMenu:withEvent:
    - Introduced: 10.11
  */
  @objc (didCloseMenu:withEvent:) @available(OSX 10.11, *) func didCloseMenu(_: NSMenu, with: NSEvent?)

  /**
    - Selector: discardCursorRects
  */
  @objc func discardCursorRects()

  /**
    - Selector: display
  */
  @objc func display()

  /**
    - Selector: displayIfNeeded
  */
  @objc func displayIfNeeded()

  /**
    - Selector: displayIfNeededIgnoringOpacity
  */
  @objc func displayIfNeededIgnoringOpacity()

  /**
    - Selector: displayIfNeededInRect:
  */
  @objc (displayIfNeededInRect:) func displayIfNeeded(_: CGRect)

  /**
    - Selector: displayIfNeededInRectIgnoringOpacity:
  */
  @objc (displayIfNeededInRectIgnoringOpacity:) func displayIfNeededIgnoringOpacity(_: CGRect)

  /**
    - Selector: displayRect:
  */
  @objc (displayRect:) func display(_: CGRect)

  /**
    - Selector: displayRectIgnoringOpacity:
  */
  @objc (displayRectIgnoringOpacity:) func displayIgnoringOpacity(_: CGRect)

  /**
    - Selector: displayRectIgnoringOpacity:inContext:
  */
  @objc (displayRectIgnoringOpacity:inContext:) func displayIgnoringOpacity(_: CGRect, in: NSGraphicsContext)

  /**
    - Selector: drawFocusRingMask
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func drawFocusRingMask()

  /**
    - Selector: drawPageBorderWithSize:
  */
  @objc (drawPageBorderWithSize:) func drawPageBorder(with: CGSize)

  /**
    - Selector: drawRect:
  */
  @objc (drawRect:) func draw(_: CGRect)

  /**
    - Selector: endDocument
  */
  @objc func endDocument()

  /**
    - Selector: endPage
  */
  @objc func endPage()

  /**
    - Selector: enterFullScreenMode:withOptions:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func enterFullScreenMode(_: NSScreen, withOptions: [NSView.FullScreenModeOptionKey: Any]?) -> Bool

  /**
    - Selector: exerciseAmbiguityInLayout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func exerciseAmbiguityInLayout()

  /**
    - Selector: exitFullScreenModeWithOptions:
    - Introduced: 10.5
  */
  @objc (exitFullScreenModeWithOptions:) @available(OSX 10.5, *) func exitFullScreenMode(options: [NSView.FullScreenModeOptionKey: Any]?)

  /**
    - Selector: frameForAlignmentRect:
    - Introduced: 10.7
  */
  @objc (frameForAlignmentRect:) @available(OSX 10.7, *) func frame(forAlignmentRect: CGRect) -> CGRect

  /**
    - Selector: getRectsBeingDrawn:count:
  */
  @objc func getRectsBeingDrawn(_: UnsafeMutablePointer<UnsafePointer<NSRect>?>?, count: UnsafeMutablePointer<NSInteger>?)

  /**
    - Selector: getRectsExposedDuringLiveResize:count:
  */
  @objc func getRectsExposedDuringLiveResize(_: UnsafeMutablePointer<CGRect>, count: UnsafeMutablePointer<NSInteger>)

  /**
    - Selector: hitTest:
  */
  @objc func hitTest(_: CGPoint) -> NSView?

  /**
    - Selector: invalidateIntrinsicContentSize
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func invalidateIntrinsicContentSize()

  /**
    - Selector: isDescendantOf:
  */
  @objc (isDescendantOf:) func isDescendant(of: NSView) -> Bool

  /**
    - Selector: knowsPageRange:
  */
  @objc func knowsPageRange(_: NSRangePointer) -> Bool

  /**
    - Selector: layout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func layout()

  /**
    - Selector: layoutSubtreeIfNeeded
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func layoutSubtreeIfNeeded()

  /**
    - Selector: locationOfPrintRect:
  */
  @objc (locationOfPrintRect:) func locationOfPrintRect(_: CGRect) -> CGPoint

  /**
    - Selector: makeBackingLayer
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) func makeBackingLayer() -> CALayer

  /**
    - Selector: menuForEvent:
  */
  @objc (menuForEvent:) func menu(`for`: NSEvent) -> NSMenu?

  /**
    - Selector: mouse:inRect:
  */
  @objc (mouse:inRect:) func isMousePoint(_: CGPoint, in: CGRect) -> Bool

  /**
    - Selector: needsToDrawRect:
  */
  @objc (needsToDrawRect:) func needsToDraw(_: CGRect) -> Bool

  /**
    - Selector: noteFocusRingMaskChanged
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func noteFocusRingMaskChanged()

  /**
    - Selector: prepareContentInRect:
    - Introduced: 10.9
  */
  @objc (prepareContentInRect:) @available(OSX 10.9, *) func prepareContent(in: CGRect)

  /**
    - Selector: prepareForReuse
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func prepareForReuse()

  /**
    - Selector: print:
  */
  @objc (print:) func printView(_: Any?)

  /**
    - Selector: rectForPage:
  */
  @objc (rectForPage:) func rectForPage(_: Int) -> CGRect

  /**
    - Selector: rectForSmartMagnificationAtPoint:inRect:
    - Introduced: 10.8
  */
  @objc (rectForSmartMagnificationAtPoint:inRect:) @available(OSX 10.8, *) func rectForSmartMagnification(at: CGPoint, in: CGRect) -> CGRect

  /**
    - Selector: reflectScrolledClipView:
  */
  @objc func reflectScrolledClipView(_: NSClipView)

  /**
    - Selector: registerForDraggedTypes:
  */
  @objc (registerForDraggedTypes:) func registerForDraggedTypes(_: [NSPasteboard.PasteboardType])

  /**
    - Selector: removeAllToolTips
  */
  @objc func removeAllToolTips()

  /**
    - Selector: removeConstraint:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func removeConstraint(_: NSLayoutConstraint)

  /**
    - Selector: removeConstraints:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func removeConstraints(_: [NSLayoutConstraint])

  /**
    - Selector: removeCursorRect:cursor:
  */
  @objc func removeCursorRect(_: CGRect, cursor: NSCursor)

  /**
    - Selector: removeFromSuperview
  */
  @objc func removeFromSuperview()

  /**
    - Selector: removeFromSuperviewWithoutNeedingDisplay
  */
  @objc func removeFromSuperviewWithoutNeedingDisplay()

  /**
    - Selector: removeGestureRecognizer:
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) func removeGestureRecognizer(_: NSGestureRecognizer)

  /**
    - Selector: removeLayoutGuide:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) func removeLayoutGuide(_: NSLayoutGuide)

  /**
    - Selector: removeToolTip:
  */
  @objc func removeToolTip(_: NSView.ToolTipTag)

  /**
    - Selector: removeTrackingArea:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func removeTrackingArea(_: NSTrackingArea)

  /**
    - Selector: removeTrackingRect:
  */
  @objc func removeTrackingRect(_: NSView.TrackingRectTag)

  /**
    - Selector: replaceSubview:with:
  */
  @objc func replaceSubview(_: NSView, with: NSView)

  /**
    - Selector: resetCursorRects
  */
  @objc func resetCursorRects()

  /**
    - Selector: resizeSubviewsWithOldSize:
  */
  @objc (resizeSubviewsWithOldSize:) func resizeSubviews(withOldSize: CGSize)

  /**
    - Selector: resizeWithOldSuperviewSize:
  */
  @objc (resizeWithOldSuperviewSize:) func resize(withOldSuperviewSize: CGSize)

  /**
    - Selector: rotateByAngle:
  */
  @objc (rotateByAngle:) func rotate(byDegrees: CGFloat)

  /**
    - Selector: rulerView:didAddMarker:
  */
  @objc (rulerView:didAddMarker:) func rulerView(_: NSRulerView, didAdd: NSRulerMarker)

  /**
    - Selector: rulerView:didMoveMarker:
  */
  @objc (rulerView:didMoveMarker:) func rulerView(_: NSRulerView, didMove: NSRulerMarker)

  /**
    - Selector: rulerView:didRemoveMarker:
  */
  @objc (rulerView:didRemoveMarker:) func rulerView(_: NSRulerView, didRemove: NSRulerMarker)

  /**
    - Selector: rulerView:handleMouseDown:
  */
  @objc (rulerView:handleMouseDown:) func rulerView(_: NSRulerView, handleMouseDownWith: NSEvent)

  /**
    - Selector: rulerView:locationForPoint:
    - Introduced: 10.7
  */
  @objc (rulerView:locationForPoint:) @available(OSX 10.7, *) func rulerView(_: NSRulerView, locationFor: CGPoint) -> CGFloat

  /**
    - Selector: rulerView:pointForLocation:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func rulerView(_: NSRulerView, pointForLocation: CGFloat) -> CGPoint

  /**
    - Selector: rulerView:shouldAddMarker:
  */
  @objc (rulerView:shouldAddMarker:) func rulerView(_: NSRulerView, shouldAdd: NSRulerMarker) -> Bool

  /**
    - Selector: rulerView:shouldMoveMarker:
  */
  @objc (rulerView:shouldMoveMarker:) func rulerView(_: NSRulerView, shouldMove: NSRulerMarker) -> Bool

  /**
    - Selector: rulerView:shouldRemoveMarker:
  */
  @objc (rulerView:shouldRemoveMarker:) func rulerView(_: NSRulerView, shouldRemove: NSRulerMarker) -> Bool

  /**
    - Selector: rulerView:willAddMarker:atLocation:
  */
  @objc (rulerView:willAddMarker:atLocation:) func rulerView(_: NSRulerView, willAdd: NSRulerMarker, atLocation: CGFloat) -> CGFloat

  /**
    - Selector: rulerView:willMoveMarker:toLocation:
  */
  @objc (rulerView:willMoveMarker:toLocation:) func rulerView(_: NSRulerView, willMove: NSRulerMarker, toLocation: CGFloat) -> CGFloat

  /**
    - Selector: rulerView:willSetClientView:
  */
  @objc func rulerView(_: NSRulerView, willSetClientView: NSView)

  /**
    - Selector: scaleUnitSquareToSize:
  */
  @objc (scaleUnitSquareToSize:) func scaleUnitSquare(to: CGSize)

  /**
    - Selector: scrollClipView:toPoint:
  */
  @objc (scrollClipView:toPoint:) func scroll(_: NSClipView, to: CGPoint)

  /**
    - Selector: scrollPoint:
  */
  @objc (scrollPoint:) func scroll(_: CGPoint)

  /**
    - Selector: scrollRectToVisible:
  */
  @objc (scrollRectToVisible:) func scrollToVisible(_: CGRect) -> Bool

  /**
    - Selector: setBoundsOrigin:
  */
  @objc func setBoundsOrigin(_: CGPoint)

  /**
    - Selector: setBoundsSize:
  */
  @objc func setBoundsSize(_: CGSize)

  /**
    - Selector: setContentCompressionResistancePriority:forOrientation:
    - Introduced: 10.7
  */
  @objc (setContentCompressionResistancePriority:forOrientation:) @available(OSX 10.7, *) func setContentCompressionResistancePriority(_: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - Selector: setContentHuggingPriority:forOrientation:
    - Introduced: 10.7
  */
  @objc (setContentHuggingPriority:forOrientation:) @available(OSX 10.7, *) func setContentHuggingPriority(_: NSLayoutConstraint.Priority, `for`: NSLayoutConstraint.Orientation)

  /**
    - Selector: setFrameOrigin:
  */
  @objc func setFrameOrigin(_: CGPoint)

  /**
    - Selector: setFrameSize:
  */
  @objc func setFrameSize(_: CGSize)

  /**
    - Selector: setKeyboardFocusRingNeedsDisplayInRect:
  */
  @objc (setKeyboardFocusRingNeedsDisplayInRect:) func setKeyboardFocusRingNeedsDisplay(_: CGRect)

  /**
    - Selector: shouldDelayWindowOrderingForEvent:
  */
  @objc (shouldDelayWindowOrderingForEvent:) func shouldDelayWindowOrdering(`for`: NSEvent) -> Bool

  /**
    - Selector: showDefinitionForAttributedString:atPoint:
    - Introduced: 10.6
  */
  @objc (showDefinitionForAttributedString:atPoint:) @available(OSX 10.6, *) func showDefinition(`for`: NSAttributedString?, at: CGPoint)

  /**
    - Selector: showDefinitionForAttributedString:range:options:baselineOriginProvider:
    - Introduced: 10.6
  */
  // jsvalue @objc @available(OSX 10.6, *) func showDefinition(`for`: NSAttributedString?, range: NSRange, options: [NSView.DefinitionOptionKey: Any]?, baselineOriginProvider: JSValue)

  /**
    - Selector: sortSubviewsUsingFunction:context:
  */
  // jsvalue @objc (sortSubviewsUsingFunction:context:) func sortSubviews(_: JSValue, context: UnsafeMutableRawPointer?)

  /**
    - Selector: translateOriginToPoint:
  */
  @objc (translateOriginToPoint:) func translateOrigin(to: CGPoint)

  /**
    - Selector: translateRectsNeedingDisplayInRect:by:
    - Introduced: 10.5
  */
  @objc (translateRectsNeedingDisplayInRect:by:) @available(OSX 10.5, *) func translateRectsNeedingDisplay(in: CGRect, by: CGSize)

  /**
    - Selector: unregisterDraggedTypes
  */
  @objc func unregisterDraggedTypes()

  /**
    - Selector: updateConstraints
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateConstraints()

  /**
    - Selector: updateConstraintsForSubtreeIfNeeded
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func updateConstraintsForSubtreeIfNeeded()

  /**
    - Selector: updateLayer
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func updateLayer()

  /**
    - Selector: updateTrackingAreas
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func updateTrackingAreas()

  /**
    - Selector: viewDidChangeBackingProperties
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func viewDidChangeBackingProperties()

  /**
    - Selector: viewDidChangeEffectiveAppearance
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) func viewDidChangeEffectiveAppearance()

  /**
    - Selector: viewDidEndLiveResize
  */
  @objc func viewDidEndLiveResize()

  /**
    - Selector: viewDidHide
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func viewDidHide()

  /**
    - Selector: viewDidMoveToSuperview
  */
  @objc func viewDidMoveToSuperview()

  /**
    - Selector: viewDidMoveToWindow
  */
  @objc func viewDidMoveToWindow()

  /**
    - Selector: viewDidUnhide
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func viewDidUnhide()

  /**
    - Selector: viewWillDraw
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) func viewWillDraw()

  /**
    - Selector: viewWillMoveToSuperview:
  */
  @objc (viewWillMoveToSuperview:) func viewWillMove(toSuperview: NSView?)

  /**
    - Selector: viewWillMoveToWindow:
  */
  @objc (viewWillMoveToWindow:) func viewWillMove(toWindow: NSWindow?)

  /**
    - Selector: viewWillStartLiveResize
  */
  @objc func viewWillStartLiveResize()

  /**
    - Selector: viewWithTag:
  */
  @objc (viewWithTag:) func viewWithTag(_: Int) -> NSView?

  /**
    - Selector: willOpenMenu:withEvent:
    - Introduced: 10.11
  */
  @objc (willOpenMenu:withEvent:) @available(OSX 10.11, *) func willOpenMenu(_: NSMenu, with: NSEvent)

  /**
    - Selector: willRemoveSubview:
  */
  @objc func willRemoveSubview(_: NSView)

  /**
    - Selector: writeEPSInsideRect:toPasteboard:
  */
  @objc (writeEPSInsideRect:toPasteboard:) func writeEPS(inside: CGRect, to: NSPasteboard)

  /**
    - Selector: writePDFInsideRect:toPasteboard:
  */
  @objc (writePDFInsideRect:toPasteboard:) func writePDF(inside: CGRect, to: NSPasteboard)

  // Protocol Inherited Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: NSUserInterfaceItemIdentifier? { @objc get @objc (setIdentifier:) set }

  // Own Instance Properties

  /**
    - Selector: alignmentRectInsets
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var alignmentRectInsets: NSEdgeInsets { @objc get }

  /**
    - Selector: allowedTouchTypes
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var allowedTouchTypes: NSTouch.TouchTypeMask { @objc get @objc (setAllowedTouchTypes:) set }

  /**
    - Selector: allowsVibrancy
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var allowsVibrancy: Bool { @objc get }

  /**
    - Selector: alphaValue
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var alphaValue: CGFloat { @objc get @objc (setAlphaValue:) set }

  /**
    - Selector: autoresizesSubviews
  */
  @objc var autoresizesSubviews: Bool { @objc get @objc (setAutoresizesSubviews:) set }

  /**
    - Selector: autoresizingMask
  */
  @objc var autoresizingMask: NSView.AutoresizingMask { @objc get @objc (setAutoresizingMask:) set }

  /**
    - Selector: backgroundFilters
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var backgroundFilters: [CIFilter] { @objc get @objc (setBackgroundFilters:) set }

  /**
    - Selector: baselineOffsetFromBottom
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var baselineOffsetFromBottom: CGFloat { @objc get }

  /**
    - Selector: bottomAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var bottomAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: bounds
  */
  @objc var bounds: CGRect { @objc get @objc (setBounds:) set }

  /**
    - Selector: boundsRotation
  */
  @objc var boundsRotation: CGFloat { @objc get @objc (setBoundsRotation:) set }

  /**
    - Selector: canBecomeKeyView
  */
  @objc var canBecomeKeyView: Bool { @objc get }

  /**
    - Selector: canDrawConcurrently
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var canDrawConcurrently: Bool { @objc get @objc (setCanDrawConcurrently:) set }

  /**
    - Selector: canDrawSubviewsIntoLayer
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var canDrawSubviewsIntoLayer: Bool { @objc get @objc (setCanDrawSubviewsIntoLayer:) set }

  /**
    - Selector: candidateListTouchBarItem
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) var candidateListTouchBarItem: NSCandidateListTouchBarItem<AnyObject>? { @objc get }

  /**
    - Selector: centerXAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var centerXAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: centerYAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var centerYAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: compositingFilter
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var compositingFilter: CIFilter? { @objc get @objc (setCompositingFilter:) set }

  /**
    - Selector: constraints
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var constraints: [NSLayoutConstraint] { @objc get }

  /**
    - Selector: contentFilters
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var contentFilters: [CIFilter] { @objc get @objc (setContentFilters:) set }

  /**
    - Selector: drawingFindIndicator
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isDrawingFindIndicator: Bool { @objc get }

  /**
    - Selector: enclosingMenuItem
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var enclosingMenuItem: NSMenuItem? { @objc get }

  /**
    - Selector: enclosingScrollView
  */
  @objc var enclosingScrollView: NSScrollView? { @objc get }

  /**
    - Selector: firstBaselineAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var firstBaselineAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: firstBaselineOffsetFromTop
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var firstBaselineOffsetFromTop: CGFloat { @objc get }

  /**
    - Selector: fittingSize
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var fittingSize: CGSize { @objc get }

  /**
    - Selector: flipped
  */
  @objc var isFlipped: Bool { @objc get }

  /**
    - Selector: focusRingMaskBounds
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var focusRingMaskBounds: CGRect { @objc get }

  /**
    - Selector: focusRingType
  */
  @objc var focusRingType: NSFocusRingType { @objc get @objc (setFocusRingType:) set }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get @objc (setFrame:) set }

  /**
    - Selector: frameCenterRotation
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var frameCenterRotation: CGFloat { @objc get @objc (setFrameCenterRotation:) set }

  /**
    - Selector: frameRotation
  */
  @objc var frameRotation: CGFloat { @objc get @objc (setFrameRotation:) set }

  /**
    - Selector: gestureRecognizers
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var gestureRecognizers: [NSGestureRecognizer] { @objc get @objc (setGestureRecognizers:) set }

  /**
    - Selector: hasAmbiguousLayout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var hasAmbiguousLayout: Bool { @objc get }

  /**
    - Selector: heightAdjustLimit
  */
  @objc var heightAdjustLimit: CGFloat { @objc get }

  /**
    - Selector: heightAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var heightAnchor: NSLayoutDimension { @objc get }

  /**
    - Selector: hidden
  */
  @objc var isHidden: Bool { @objc get @objc (setHidden:) set }

  /**
    - Selector: hiddenOrHasHiddenAncestor
  */
  @objc var isHiddenOrHasHiddenAncestor: Bool { @objc get }

  /**
    - Selector: horizontalContentSizeConstraintActive
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isHorizontalContentSizeConstraintActive: Bool { @objc get @objc (setHorizontalContentSizeConstraintActive:) set }

  /**
    - Selector: inFullScreenMode
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var isInFullScreenMode: Bool { @objc get }

  /**
    - Selector: inLiveResize
  */
  @objc var inLiveResize: Bool { @objc get }

  /**
    - Selector: inputContext
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var inputContext: NSTextInputContext? { @objc get }

  /**
    - Selector: intrinsicContentSize
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var intrinsicContentSize: CGSize { @objc get }

  /**
    - Selector: lastBaselineAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var lastBaselineAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: lastBaselineOffsetFromBottom
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var lastBaselineOffsetFromBottom: CGFloat { @objc get }

  /**
    - Selector: layer
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var layer: CALayer? { @objc get @objc (setLayer:) set }

  /**
    - Selector: layerContentsPlacement
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var layerContentsPlacement: NSView.LayerContentsPlacement { @objc get @objc (setLayerContentsPlacement:) set }

  /**
    - Selector: layerContentsRedrawPolicy
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var layerContentsRedrawPolicy: NSView.LayerContentsRedrawPolicy { @objc get @objc (setLayerContentsRedrawPolicy:) set }

  /**
    - Selector: layerUsesCoreImageFilters
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var layerUsesCoreImageFilters: Bool { @objc get @objc (setLayerUsesCoreImageFilters:) set }

  /**
    - Selector: layoutGuides
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var layoutGuides: [NSLayoutGuide] { @objc get }

  /**
    - Selector: leadingAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var leadingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: leftAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var leftAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: mouseDownCanMoveWindow
  */
  @objc var mouseDownCanMoveWindow: Bool { @objc get }

  /**
    - Selector: needsDisplay
  */
  @objc var needsDisplay: Bool { @objc get @objc (setNeedsDisplay:) set }

  /**
    - Selector: needsLayout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var needsLayout: Bool { @objc get @objc (setNeedsLayout:) set }

  /**
    - Selector: needsPanelToBecomeKey
  */
  @objc var needsPanelToBecomeKey: Bool { @objc get }

  /**
    - Selector: needsUpdateConstraints
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var needsUpdateConstraints: Bool { @objc get @objc (setNeedsUpdateConstraints:) set }

  /**
    - Selector: nextKeyView
  */
  @objc var nextKeyView: NSView? { @objc get @objc (setNextKeyView:) set }

  /**
    - Selector: nextValidKeyView
  */
  @objc var nextValidKeyView: NSView? { @objc get }

  /**
    - Selector: opaque
  */
  @objc var isOpaque: Bool { @objc get }

  /**
    - Selector: opaqueAncestor
  */
  @objc var opaqueAncestor: NSView? { @objc get }

  /**
    - Selector: pageFooter
  */
  @objc var pageFooter: NSAttributedString { @objc get }

  /**
    - Selector: pageHeader
  */
  @objc var pageHeader: NSAttributedString { @objc get }

  /**
    - Selector: postsBoundsChangedNotifications
  */
  @objc var postsBoundsChangedNotifications: Bool { @objc get @objc (setPostsBoundsChangedNotifications:) set }

  /**
    - Selector: postsFrameChangedNotifications
  */
  @objc var postsFrameChangedNotifications: Bool { @objc get @objc (setPostsFrameChangedNotifications:) set }

  /**
    - Selector: preparedContentRect
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var preparedContentRect: CGRect { @objc get @objc (setPreparedContentRect:) set }

  /**
    - Selector: preservesContentDuringLiveResize
  */
  @objc var preservesContentDuringLiveResize: Bool { @objc get }

  /**
    - Selector: pressureConfiguration
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var pressureConfiguration: NSPressureConfiguration? { @objc get @objc (setPressureConfiguration:) set }

  /**
    - Selector: previousKeyView
  */
  @objc var previousKeyView: NSView? { @objc get }

  /**
    - Selector: previousValidKeyView
  */
  @objc var previousValidKeyView: NSView? { @objc get }

  /**
    - Selector: printJobTitle
  */
  @objc var printJobTitle: String { @objc get }

  /**
    - Selector: rectPreservedDuringLiveResize
  */
  @objc var rectPreservedDuringLiveResize: CGRect { @objc get }

  /**
    - Selector: registeredDraggedTypes
  */
  @objc var registeredDraggedTypes: [NSPasteboard.PasteboardType] { @objc get }

  /**
    - Selector: rightAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var rightAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: rotatedFromBase
  */
  @objc var isRotatedFromBase: Bool { @objc get }

  /**
    - Selector: rotatedOrScaledFromBase
  */
  @objc var isRotatedOrScaledFromBase: Bool { @objc get }

  /**
    - Selector: shadow
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var shadow: NSShadow? { @objc get @objc (setShadow:) set }

  /**
    - Selector: subviews
  */
  @objc var subviews: [NSView] { @objc get @objc (setSubviews:) set }

  /**
    - Selector: superview
  */
  @objc var superview: NSView? { @objc get }

  /**
    - Selector: tag
  */
  @objc var tag: Int { @objc get }

  /**
    - Selector: toolTip
  */
  @objc var toolTip: String? { @objc get @objc (setToolTip:) set }

  /**
    - Selector: topAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var topAnchor: NSLayoutYAxisAnchor { @objc get }

  /**
    - Selector: trackingAreas
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var trackingAreas: [NSTrackingArea] { @objc get }

  /**
    - Selector: trailingAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var trailingAnchor: NSLayoutXAxisAnchor { @objc get }

  /**
    - Selector: translatesAutoresizingMaskIntoConstraints
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var translatesAutoresizingMaskIntoConstraints: Bool { @objc get @objc (setTranslatesAutoresizingMaskIntoConstraints:) set }

  /**
    - Selector: userInterfaceLayoutDirection
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var userInterfaceLayoutDirection: NSUserInterfaceLayoutDirection { @objc get @objc (setUserInterfaceLayoutDirection:) set }

  /**
    - Selector: verticalContentSizeConstraintActive
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isVerticalContentSizeConstraintActive: Bool { @objc get @objc (setVerticalContentSizeConstraintActive:) set }

  /**
    - Selector: visibleRect
  */
  @objc var visibleRect: CGRect { @objc get }

  /**
    - Selector: wantsDefaultClipping
  */
  @objc var wantsDefaultClipping: Bool { @objc get }

  /**
    - Selector: wantsLayer
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var wantsLayer: Bool { @objc get @objc (setWantsLayer:) set }

  /**
    - Selector: wantsRestingTouches
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var wantsRestingTouches: Bool { @objc get @objc (setWantsRestingTouches:) set }

  /**
    - Selector: wantsUpdateLayer
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var wantsUpdateLayer: Bool { @objc get }

  /**
    - Selector: widthAdjustLimit
  */
  @objc var widthAdjustLimit: CGFloat { @objc get }

  /**
    - Selector: widthAnchor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var widthAnchor: NSLayoutDimension { @objc get }

  /**
    - Selector: window
  */
  @objc var window: NSWindow? { @objc get }
}

extension NSView: NSViewExports {
}
