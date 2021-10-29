import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Host
    - name: NSHost
    - argLabels: 
  */

@objc(Host) protocol HostExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: current
    - name: currentHost
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: current()
  */
  @objc static func current() -> Self

  /**
    - jsName: create
    - name: hostWithAddress:
    - argLabels: address
    - constructorTokens: 
    - unavailable: true
    - renamed: init(address:)
    - message: Not available in Swift
  */
  @objc static func create(address: String) -> Self

  // Instance Methods

  /**
    - jsName: isEqual
    - name: isEqualToHost:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: isEqual(to:)
  */
  @objc (isEqualToHost:) func isEqual(to: Host) -> Bool

  // Own Instance Properties

  /**
    - jsName: address
    - name: address
    - argLabels: 
  */
  @objc var address: String? { @objc get }

  /**
    - jsName: addresses
    - name: addresses
    - argLabels: 
  */
  @objc var addresses: [String] { @objc get }

  /**
    - jsName: localizedName
    - name: localizedName
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var localizedName: String? { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: String? { @objc get }

  /**
    - jsName: names
    - name: names
    - argLabels: 
  */
  @objc var names: [String] { @objc get }
}

extension Host: HostExports {
  @objc public static func current() -> Self {
    return self.current()
  }

  @objc public static func create(address: String) -> Self {
    return self.init(address: address)
  }

}
