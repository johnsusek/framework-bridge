import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSBackgroundActivityScheduler
    - Introduced: 10.10
  */

@objc(NSBackgroundActivityScheduler) protocol NSBackgroundActivitySchedulerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  /**
    - Selector: scheduleWithBlock:
  */
  // jsvalue @objc func schedule(_ p0: JSValue)

  // Own Instance Properties

  /**
    - Selector: identifier
  */
  @objc var identifier: String { @objc get }

  /**
    - Selector: interval
  */
  @objc var interval: TimeInterval { @objc get @objc (setInterval:) set }

  /**
    - Selector: qualityOfService
  */
  @objc var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - Selector: repeats
  */
  @objc var repeats: Bool { @objc get @objc (setRepeats:) set }

  /**
    - Selector: shouldDefer
  */
  @objc var shouldDefer: Bool { @objc get }

  /**
    - Selector: tolerance
  */
  @objc var tolerance: TimeInterval { @objc get @objc (setTolerance:) set }
}

extension NSBackgroundActivityScheduler: NSBackgroundActivitySchedulerExports {
}
