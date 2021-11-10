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
    - Selector: NSXPCConnection
    - Introduced: 10.8
  */

@objc(NSXPCConnection) protocol NSXPCConnectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: currentConnection
    - Introduced: 10.8
  */
  @objc (currentConnection) @available(OSX 10.8, *) static func current() -> NSXPCConnection?

  // Instance Methods

  /**
    - Selector: invalidate
  */
  @objc func invalidate()

  /**
    - Selector: resume
  */
  @objc func resume()

  /**
    - Selector: scheduleSendBarrierBlock:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func scheduleSendBarrierBlock(_ p0: JSValue)

  /**
    - Selector: suspend
  */
  @objc func suspend()

  // Own Instance Properties

  /**
    - Selector: auditSessionIdentifier
  */
  @objc var auditSessionIdentifier: Int32 { @objc get }

  /**
    - Selector: effectiveGroupIdentifier
  */
  @objc var effectiveGroupIdentifier: gid_t { @objc get }

  /**
    - Selector: effectiveUserIdentifier
  */
  @objc var effectiveUserIdentifier: uid_t { @objc get }

  /**
    - Selector: endpoint
  */
  @objc var endpoint: NSXPCListenerEndpoint { @objc get }

  /**
    - Selector: exportedInterface
  */
  @objc var exportedInterface: NSXPCInterface? { @objc get @objc (setExportedInterface:) set }

  /**
    - Selector: exportedObject
  */
  @objc var exportedObject: Any? { @objc get @objc (setExportedObject:) set }

  /**
    - Selector: interruptionHandler
  */
// jsvalue   @objc var interruptionHandler: JSValue? { @objc get @objc (setInterruptionHandler:) set }

  /**
    - Selector: invalidationHandler
  */
// jsvalue   @objc var invalidationHandler: JSValue? { @objc get @objc (setInvalidationHandler:) set }

  /**
    - Selector: processIdentifier
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - Selector: remoteObjectInterface
  */
  @objc var remoteObjectInterface: NSXPCInterface? { @objc get @objc (setRemoteObjectInterface:) set }

  /**
    - Selector: remoteObjectProxy
  */
  @objc var remoteObjectProxy: Any { @objc get }

  /**
    - Selector: serviceName
  */
  @objc var serviceName: String? { @objc get }
}

extension NSXPCConnection: NSXPCConnectionExports {
}
