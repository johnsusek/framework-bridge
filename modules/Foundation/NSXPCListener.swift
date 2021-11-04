import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSXPCListener
    - Introduced: 10.8
  */

@objc(NSXPCListener) protocol NSXPCListenerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: anonymousListener
  */
  @objc (anonymousListener) static func anonymous() -> NSXPCListener

  /**
    - Selector: serviceListener
  */
  @objc (serviceListener) static func service() -> NSXPCListener

  // Instance Methods

  /**
    - Selector: initWithMachServiceName:
  */
  @objc static func createWithMachServiceName(_: String) -> Self

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  /**
    - Selector: resume
  */
  @objc func resume()

  /**
    - Selector: suspend
  */
  @objc func suspend()

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSXPCListenerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: endpoint
  */
  @objc var endpoint: NSXPCListenerEndpoint { @objc get }
}

extension NSXPCListener: NSXPCListenerExports {
  @objc public static func createWithMachServiceName(_ machServiceName: String) -> Self {
    return self.init(machServiceName: machServiceName)
  }

}
