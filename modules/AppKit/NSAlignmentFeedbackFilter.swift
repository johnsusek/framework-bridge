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
    - Selector: NSAlignmentFeedbackFilter
    - Introduced: 10.11
  */

@objc(NSAlignmentFeedbackFilter) protocol NSAlignmentFeedbackFilterExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: inputEventMask
  */
  @objc static var inputEventMask: NSEvent.EventTypeMask { @objc get }

  // Instance Methods

  /**
    - Selector: alignmentFeedbackTokenForHorizontalMovementInView:previousX:alignedX:defaultX:
  */
  @objc (alignmentFeedbackTokenForHorizontalMovementInView:previousX:alignedX:defaultX:) func alignmentFeedbackTokenForHorizontalMovement(in: NSView?, previousX: CGFloat, alignedX: CGFloat, defaultX: CGFloat) -> NSAlignmentFeedbackToken?

  /**
    - Selector: alignmentFeedbackTokenForMovementInView:previousPoint:alignedPoint:defaultPoint:
  */
  @objc (alignmentFeedbackTokenForMovementInView:previousPoint:alignedPoint:defaultPoint:) func alignmentFeedbackTokenForMovement(in: NSView?, previousPoint: CGPoint, alignedPoint: CGPoint, defaultPoint: CGPoint) -> NSAlignmentFeedbackToken?

  /**
    - Selector: alignmentFeedbackTokenForVerticalMovementInView:previousY:alignedY:defaultY:
  */
  @objc (alignmentFeedbackTokenForVerticalMovementInView:previousY:alignedY:defaultY:) func alignmentFeedbackTokenForVerticalMovement(in: NSView?, previousY: CGFloat, alignedY: CGFloat, defaultY: CGFloat) -> NSAlignmentFeedbackToken?

  /**
    - Selector: performFeedback:performanceTime:
  */
  @objc func performFeedback(_: [NSAlignmentFeedbackToken], performanceTime: NSHapticFeedbackManager.PerformanceTime)

  /**
    - Selector: updateWithEvent:
  */
  @objc (updateWithEvent:) func update(with: NSEvent)

  /**
    - Selector: updateWithPanRecognizer:
  */
  @objc (updateWithPanRecognizer:) func update(withPanRecognizer: NSPanGestureRecognizer)
}

extension NSAlignmentFeedbackFilter: NSAlignmentFeedbackFilterExports {
}
