import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSAlignmentFeedbackFilter
    - name: NSAlignmentFeedbackFilter
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSAlignmentFeedbackFilter) protocol NSAlignmentFeedbackFilterExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: inputEventMask
    - name: inputEventMask
    - argLabels: 
  */
  @objc static var inputEventMask: NSEvent.EventTypeMask { @objc get }

  // Instance Methods

  /**
    - jsName: alignmentFeedbackTokenForHorizontalMovement
    - name: alignmentFeedbackTokenForHorizontalMovementInView:previousX:alignedX:defaultX:
    - argLabels: in, previousX, alignedX, defaultX
    - constructorTokens: 
    - obsoleted: 3
    - renamed: alignmentFeedbackTokenForHorizontalMovement(in:previousX:alignedX:defaultX:)
  */
  @objc (alignmentFeedbackTokenForHorizontalMovementInView:previousX:alignedX:defaultX:) func alignmentFeedbackTokenForHorizontalMovement(in: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?

  /**
    - jsName: alignmentFeedbackTokenForMovement
    - name: alignmentFeedbackTokenForMovementInView:previousPoint:alignedPoint:defaultPoint:
    - argLabels: in, previousPoint, alignedPoint, defaultPoint
    - constructorTokens: 
    - obsoleted: 3
    - renamed: alignmentFeedbackTokenForMovement(in:previousPoint:alignedPoint:defaultPoint:)
  */
  @objc (alignmentFeedbackTokenForMovementInView:previousPoint:alignedPoint:defaultPoint:) func alignmentFeedbackTokenForMovement(in: NSView?, previousPoint: CGPoint, alignedPoint: CGPoint, defaultPoint: CGPoint) -> NSAlignmentFeedbackToken?

  /**
    - jsName: alignmentFeedbackTokenForVerticalMovement
    - name: alignmentFeedbackTokenForVerticalMovementInView:previousY:alignedY:defaultY:
    - argLabels: in, previousY, alignedY, defaultY
    - constructorTokens: 
    - obsoleted: 3
    - renamed: alignmentFeedbackTokenForVerticalMovement(in:previousY:alignedY:defaultY:)
  */
  @objc (alignmentFeedbackTokenForVerticalMovementInView:previousY:alignedY:defaultY:) func alignmentFeedbackTokenForVerticalMovement(in: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?

  /**
    - jsName: performFeedback
    - name: performFeedback:performanceTime:
    - argLabels: performanceTime
    - constructorTokens: 
  */
  @objc func performFeedback(_: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackManager.PerformanceTime)

  /**
    - jsName: update
    - name: updateWithEvent:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: update(with:)
  */
  @objc (updateWithEvent:) func update(with: NSEvent)

  /**
    - jsName: update
    - name: updateWithPanRecognizer:
    - argLabels: withPanRecognizer
    - constructorTokens: 
    - obsoleted: 3
    - renamed: update(withPanRecognizer:)
  */
  @objc (updateWithPanRecognizer:) func update(withPanRecognizer: NSPanGestureRecognizer)
}

extension NSAlignmentFeedbackFilter: NSAlignmentFeedbackFilterExports {
}
