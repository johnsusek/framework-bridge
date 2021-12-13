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
    - Selector: setDelegate:
  */
  @objc func setDelegate(_ p0: NSMachPortDelegate?)

  // Own Instance Properties

  /**
    - Selector: machPort
  */
  @objc var machPort: UInt32 { @objc get }
}

extension NSMachPort: NSMachPortExports {
}
