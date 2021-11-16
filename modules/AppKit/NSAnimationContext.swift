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
    - Selector: NSAnimationContext
    - Introduced: 10.5
  */

@objc(NSAnimationContext) protocol NSAnimationContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: beginGrouping
  */
  @objc static func beginGrouping()

  /**
    - Selector: endGrouping
  */
  @objc static func endGrouping()

  /**
    - Selector: runAnimationGroup:
    - Introduced: 10.12
  */
// jsvalue   @objc @available(OSX 10.12, *) static func runAnimationGroup(_ p0: JSValue)

  /**
    - Selector: runAnimationGroup:completionHandler:
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) static func runAnimationGroupCompletionHandler(_ completionHandler: JSValue, _ completionHandler1: JSValue)

  // Own Static Properties

  /**
    - Selector: currentContext
  */
  @objc static var current: NSAnimationContext { @objc (currentContext) get }

  // Own Instance Properties

  /**
    - Selector: allowsImplicitAnimation
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsImplicitAnimation: Bool { @objc get @objc (setAllowsImplicitAnimation:) set }

  /**
    - Selector: completionHandler
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var completionHandler: JSValue? { @objc get @objc (setCompletionHandler:) set }

  /**
    - Selector: duration
  */
  @objc var duration: TimeInterval { @objc get @objc (setDuration:) set }

  /**
    - Selector: timingFunction
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timingFunction: CAMediaTimingFunction? { @objc get @objc (setTimingFunction:) set }
}

extension NSAnimationContext: NSAnimationContextExports {
}
