import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Port
    - name: NSPort
    - argLabels: 
  */

@objc(Port) protocol PortExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func delegate() -> PortDelegate?

  /**
    - jsName: invalidate
    - name: invalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidate()

  /**
    - jsName: remove
    - name: removeFromRunLoop:forMode:
    - argLabels: from, forMode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: remove(from:forMode:)
  */
  @objc (removeFromRunLoop:forMode:) func remove(from: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: schedule
    - name: scheduleInRunLoop:forMode:
    - argLabels: in, forMode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: schedule(in:forMode:)
  */
  @objc (scheduleInRunLoop:forMode:) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: send
    - name: sendBeforeDate:components:from:reserved:
    - argLabels: before, components, from, reserved
    - constructorTokens: 
    - obsoleted: 3
    - renamed: send(before:components:from:reserved:)
  */
  @objc (sendBeforeDate:components:from:reserved:) func send(before: Date, components: NSMutableArray?, from: Port?, reserved: Int) -> Bool

  /**
    - jsName: send
    - name: sendBeforeDate:msgid:components:from:reserved:
    - argLabels: before, msgid, components, from, reserved
    - constructorTokens: 
    - obsoleted: 3
    - renamed: send(before:msgid:components:from:reserved:)
  */
  @objc (sendBeforeDate:msgid:components:from:reserved:) func send(before: Date, msgid: Int, components: NSMutableArray?, from: Port?, reserved: Int) -> Bool

  /**
    - jsName: setDelegate
    - name: setDelegate:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setDelegate(_: PortDelegate?)

  // Own Instance Properties

  /**
    - jsName: reservedSpaceLength
    - name: reservedSpaceLength
    - argLabels: 
  */
  @objc var reservedSpaceLength: Int { @objc get }

  /**
    - jsName: isValid
    - name: valid
    - argLabels: 
    - obsoleted: 3
    - renamed: isValid
  */
  @objc var isValid: Bool { @objc get }
}

extension Port: PortExports {
}
