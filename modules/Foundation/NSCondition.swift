import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCondition
    - Introduced: 10.5
  */

@objc(NSCondition) protocol NSConditionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: broadcast
  */
  @objc func broadcast()

  /**
    - Selector: signal
  */
  @objc func signal()

  /**
    - Selector: wait
  */
  @objc func wait()

  /**
    - Selector: waitUntilDate:
  */
  @objc (waitUntilDate:) func wait(until: Date) -> Bool

  // Own Instance Properties

  /**
    - Selector: name
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var name: String? { @objc get @objc (setName:) set }
}

extension NSCondition: NSConditionExports {
}
