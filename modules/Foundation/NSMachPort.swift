import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSMachPort
    - name: NSMachPort
    - argLabels: 
  */

@objc(NSMachPort) protocol NSMachPortExports: JSExport, PortExports {
  // Static Methods

  /**
    - jsName: port
    - name: portWithMachPort:
    - argLabels: withMachPort
    - constructorTokens: 
    - obsoleted: 3
    - renamed: port(withMachPort:)
  */
  @objc (portWithMachPort:) static func port(withMachPort: UInt32) -> Port

  /**
    - jsName: port
    - name: portWithMachPort:options:
    - argLabels: withMachPort, options
    - constructorTokens: 
    - available: 10.5
    - obsoleted: 3
    - renamed: port(withMachPort:options:)
    - Introduced: 10.5
  */
  @objc (portWithMachPort:options:) @available(OSX 10.5, *) static func port(withMachPort: UInt32, options: NSMachPort.Options) -> Port

  // Instance Methods

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func delegate() -> NSMachPortDelegate?

  /**
    - jsName: createWithMachPort
    - name: initWithMachPort:
    - argLabels: 
    - constructorTokens: machPort
  */
  @objc static func createWithMachPort(_: UInt32) -> Self

  /**
    - jsName: createWithMachPort
    - name: initWithMachPort:options:
    - argLabels: options
    - constructorTokens: machPort, options
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func createWithMachPort(_: UInt32, options: NSMachPort.Options) -> Self

  /**
    - jsName: setDelegate
    - name: setDelegate:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setDelegate(_: NSMachPortDelegate?)

  // Own Instance Properties

  /**
    - jsName: machPort
    - name: machPort
    - argLabels: 
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
