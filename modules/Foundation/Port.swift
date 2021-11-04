import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSPort
  */

@objc(Port) protocol PortExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: delegate
  */
  @objc func delegate() -> PortDelegate?

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  /**
    - Selector: removeFromRunLoop:forMode:
  */
  @objc (removeFromRunLoop:forMode:) func remove(from: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: scheduleInRunLoop:forMode:
  */
  @objc (scheduleInRunLoop:forMode:) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: sendBeforeDate:components:from:reserved:
  */
  @objc (sendBeforeDate:components:from:reserved:) func send(before: Date, components: NSMutableArray?, from: Port?, reserved: Int) -> Bool

  /**
    - Selector: sendBeforeDate:msgid:components:from:reserved:
  */
  @objc (sendBeforeDate:msgid:components:from:reserved:) func send(before: Date, msgid: Int, components: NSMutableArray?, from: Port?, reserved: Int) -> Bool

  /**
    - Selector: setDelegate:
  */
  @objc func setDelegate(_: PortDelegate?)

  // Own Instance Properties

  /**
    - Selector: reservedSpaceLength
  */
  @objc var reservedSpaceLength: Int { @objc get }

  /**
    - Selector: valid
  */
  @objc var isValid: Bool { @objc get }
}

extension Port: PortExports {
}
