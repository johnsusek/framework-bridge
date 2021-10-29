import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSXPCConnection
    - name: NSXPCConnection
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSXPCConnection) protocol NSXPCConnectionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: current
    - name: currentConnection
    - argLabels: 
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: current()
    - Introduced: 10.8
  */
  @objc (currentConnection) @available(OSX 10.8, *) static func current() -> NSXPCConnection?

  // Instance Methods

  /**
    - jsName: createWithListenerEndpoint
    - name: initWithListenerEndpoint:
    - argLabels: 
    - constructorTokens: listenerEndpoint
  */
  @objc static func createWithListenerEndpoint(_: NSXPCListenerEndpoint) -> Self

  /**
    - jsName: createWithMachServiceName
    - name: initWithMachServiceName:options:
    - argLabels: options
    - constructorTokens: machServiceName, options
  */
  @objc static func createWithMachServiceName(_: String, options: NSXPCConnection.Options) -> Self

  /**
    - jsName: createWithServiceName
    - name: initWithServiceName:
    - argLabels: 
    - constructorTokens: serviceName
  */
  @objc static func createWithServiceName(_: String) -> Self

  /**
    - jsName: invalidate
    - name: invalidate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidate()

  /**
    - jsName: resume
    - name: resume
    - argLabels: 
    - constructorTokens: 
  */
  @objc func resume()

  /**
    - jsName: scheduleSendBarrierBlock
    - name: scheduleSendBarrierBlock:
    - argLabels: 
    - constructorTokens: 
    - available: 10.15
    - Introduced: 10.15
  */
  // jsvalue - @objc @available(OSX 10.15, *) func scheduleSendBarrierBlock(_: JSValue)

  /**
    - jsName: suspend
    - name: suspend
    - argLabels: 
    - constructorTokens: 
  */
  @objc func suspend()

  // Own Instance Properties

  /**
    - jsName: auditSessionIdentifier
    - name: auditSessionIdentifier
    - argLabels: 
  */
  @objc var auditSessionIdentifier: Int32 { @objc get }

  /**
    - jsName: effectiveGroupIdentifier
    - name: effectiveGroupIdentifier
    - argLabels: 
  */
  @objc var effectiveGroupIdentifier: gid_t { @objc get }

  /**
    - jsName: effectiveUserIdentifier
    - name: effectiveUserIdentifier
    - argLabels: 
  */
  @objc var effectiveUserIdentifier: uid_t { @objc get }

  /**
    - jsName: endpoint
    - name: endpoint
    - argLabels: 
  */
  @objc var endpoint: NSXPCListenerEndpoint { @objc get }

  /**
    - jsName: exportedInterface
    - name: exportedInterface
    - argLabels: 
  */
  @objc var exportedInterface: NSXPCInterface? { @objc get @objc (setExportedInterface:) set }

  /**
    - jsName: exportedObject
    - name: exportedObject
    - argLabels: 
  */
  @objc var exportedObject: Any? { @objc get @objc (setExportedObject:) set }

  /**
    - jsName: interruptionHandler
    - name: interruptionHandler
    - argLabels: 
  */
// jsvalue   @objc var interruptionHandler: JSValue? { @objc get @objc (setInterruptionHandler:) set }

  /**
    - jsName: invalidationHandler
    - name: invalidationHandler
    - argLabels: 
  */
// jsvalue   @objc var invalidationHandler: JSValue? { @objc get @objc (setInvalidationHandler:) set }

  /**
    - jsName: processIdentifier
    - name: processIdentifier
    - argLabels: 
  */
  @objc var processIdentifier: Int32 { @objc get }

  /**
    - jsName: remoteObjectInterface
    - name: remoteObjectInterface
    - argLabels: 
  */
  @objc var remoteObjectInterface: NSXPCInterface? { @objc get @objc (setRemoteObjectInterface:) set }

  /**
    - jsName: remoteObjectProxy
    - name: remoteObjectProxy
    - argLabels: 
    - available: 10.8
  */
  @objc var remoteObjectProxy: Any { @objc get }

  /**
    - jsName: serviceName
    - name: serviceName
    - argLabels: 
  */
  @objc var serviceName: String? { @objc get }
}

extension NSXPCConnection: NSXPCConnectionExports {
  @objc public static func createWithListenerEndpoint(_ listenerEndpoint: NSXPCListenerEndpoint) -> Self {
    return self.init(listenerEndpoint: listenerEndpoint)
  }

  @objc public static func createWithMachServiceName(_ machServiceName: String, options: NSXPCConnection.Options) -> Self {
    return self.init(machServiceName: machServiceName, options: options)
  }

  @objc public static func createWithServiceName(_ serviceName: String) -> Self {
    return self.init(serviceName: serviceName)
  }

}
