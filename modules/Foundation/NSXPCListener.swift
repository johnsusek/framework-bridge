import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSXPCListener
    - name: NSXPCListener
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSXPCListener) protocol NSXPCListenerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: anonymous
    - name: anonymousListener
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: anonymous()
  */
  @objc (anonymousListener) static func anonymous() -> NSXPCListener

  /**
    - jsName: service
    - name: serviceListener
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: service()
  */
  @objc (serviceListener) static func service() -> NSXPCListener

  // Instance Methods

  /**
    - jsName: createWithMachServiceName
    - name: initWithMachServiceName:
    - argLabels: 
    - constructorTokens: machServiceName
  */
  @objc static func createWithMachServiceName(_: String) -> Self

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
    - jsName: suspend
    - name: suspend
    - argLabels: 
    - constructorTokens: 
  */
  @objc func suspend()

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSXPCListenerDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: endpoint
    - name: endpoint
    - argLabels: 
  */
  @objc var endpoint: NSXPCListenerEndpoint { @objc get }
}

extension NSXPCListener: NSXPCListenerExports {
  @objc public static func createWithMachServiceName(_ machServiceName: String) -> Self {
    return self.init(machServiceName: machServiceName)
  }

}
