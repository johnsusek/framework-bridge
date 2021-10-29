import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSCondition
    - name: NSCondition
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSCondition) protocol NSConditionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: broadcast
    - name: broadcast
    - argLabels: 
    - constructorTokens: 
  */
  @objc func broadcast()

  /**
    - jsName: signal
    - name: signal
    - argLabels: 
    - constructorTokens: 
  */
  @objc func signal()

  /**
    - jsName: wait
    - name: wait
    - argLabels: 
    - constructorTokens: 
  */
  @objc func wait()

  /**
    - jsName: wait
    - name: waitUntilDate:
    - argLabels: until
    - constructorTokens: 
    - obsoleted: 3
    - renamed: wait(until:)
  */
  @objc (waitUntilDate:) func wait(until: Date) -> Bool

  // Own Instance Properties

  /**
    - jsName: name
    - name: name
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var name: String? { @objc get @objc (setName:) set }
}

extension NSCondition: NSConditionExports {
}
