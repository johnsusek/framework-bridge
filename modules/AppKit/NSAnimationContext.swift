import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSAnimationContext
    - name: NSAnimationContext
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSAnimationContext) protocol NSAnimationContextExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: beginGrouping
    - name: beginGrouping
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func beginGrouping()

  /**
    - jsName: endGrouping
    - name: endGrouping
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func endGrouping()

  /**
    - jsName: runAnimationGroup
    - name: runAnimationGroup:
    - argLabels: 
    - constructorTokens: 
    - available: 10.12
    - Introduced: 10.12
  */
  // jsvalue - @objc @available(OSX 10.12, *) static func runAnimationGroup(_: JSValue)

  /**
    - jsName: runAnimationGroup
    - name: runAnimationGroup:completionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  // jsvalue - @objc @available(OSX 10.7, *) static func runAnimationGroup(_: JSValue, completionHandler: JSValue)

  // Own Static Properties

  /**
    - jsName: current
    - name: currentContext
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSAnimationContext { @objc (currentContext) get }

  // Own Instance Properties

  /**
    - jsName: allowsImplicitAnimation
    - name: allowsImplicitAnimation
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var allowsImplicitAnimation: Bool { @objc get @objc (setAllowsImplicitAnimation:) set }

  /**
    - jsName: completionHandler
    - name: completionHandler
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
// jsvalue   @objc @available(OSX 10.7, *) var completionHandler: JSValue? { @objc get @objc (setCompletionHandler:) set }

  /**
    - jsName: duration
    - name: duration
    - argLabels: 
  */
  @objc var duration: TimeInterval { @objc get @objc (setDuration:) set }

  /**
    - jsName: timingFunction
    - name: timingFunction
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var timingFunction: CAMediaTimingFunction? { @objc get @objc (setTimingFunction:) set }
}

extension NSAnimationContext: NSAnimationContextExports {
}
