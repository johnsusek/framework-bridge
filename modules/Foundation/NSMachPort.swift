import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSMachPort
  */

@objc(NSMachPort) protocol NSMachPortExports: JSExport, PortExports {
  // Static Methods

  /**
    - Selector: portWithMachPort:
  */
  @objc (portWithMachPort:) static func port(withMachPort: UInt32) -> Port

  /**
    - Selector: portWithMachPort:options:
    - Introduced: 10.5
  */
  @objc (portWithMachPort:options:) @available(OSX 10.5, *) static func port(withMachPort: UInt32, options: NSMachPort.Options) -> Port

  // Instance Methods

  /**
    - Selector: delegate
  */
  @objc func delegate() -> NSMachPortDelegate?

  /**
    - Selector: initWithMachPort:
  */
  @objc static func createWithMachPort(_: UInt32) -> Self

  /**
    - Selector: initWithMachPort:options:
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func createWithMachPort(_: UInt32, options: NSMachPort.Options) -> Self

  /**
    - Selector: setDelegate:
  */
  @objc func setDelegate(_: NSMachPortDelegate?)

  // Own Instance Properties

  /**
    - Selector: machPort
  */
  @objc var machPort: UInt32 { @objc get }
}

extension NSMachPort: NSMachPortExports {
  @objc public static func createWithMachPort(_ machPort: UInt32) -> Self {
    return self.init(machPort: machPort)
  }

  @objc public static func createWithMachPort(_ machPort: UInt32, options: NSMachPort.Options) -> Self {
    return self.init(machPort: machPort, options: options)
  }

}
