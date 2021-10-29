import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSBackgroundActivityScheduler
    - name: NSBackgroundActivityScheduler
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSBackgroundActivityScheduler) protocol NSBackgroundActivitySchedulerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: invalidate
    - name: invalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidate()

  /**
    - jsName: schedule
    - name: scheduleWithBlock:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: schedule(_:)
  */
  // jsvalue - @objc (scheduleWithBlock:) func schedule(_: JSValue)

  // Own Instance Properties

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: String { @objc get }

  /**
    - jsName: interval
    - name: interval
    - argLabels: 
  */
  @objc var interval: TimeInterval { @objc get @objc (setInterval:) set }

  /**
    - jsName: qualityOfService
    - name: qualityOfService
    - argLabels: 
  */
  @objc var qualityOfService: QualityOfService { @objc get @objc (setQualityOfService:) set }

  /**
    - jsName: repeats
    - name: repeats
    - argLabels: 
  */
  @objc var repeats: Bool { @objc get @objc (setRepeats:) set }

  /**
    - jsName: shouldDefer
    - name: shouldDefer
    - argLabels: 
  */
  @objc var shouldDefer: Bool { @objc get }

  /**
    - jsName: tolerance
    - name: tolerance
    - argLabels: 
  */
  @objc var tolerance: TimeInterval { @objc get @objc (setTolerance:) set }
}

extension NSBackgroundActivityScheduler: NSBackgroundActivitySchedulerExports {
}
