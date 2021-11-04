import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSHost
  */

@objc(Host) protocol HostExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: currentHost
  */
  @objc static func current() -> Self

  /**
    - Selector: hostWithAddress:
  */
  @objc static func create(address: String) -> Self

  // Instance Methods

  /**
    - Selector: isEqualToHost:
  */
  @objc (isEqualToHost:) func isEqual(to: Host) -> Bool

  // Own Instance Properties

  /**
    - Selector: address
  */
  @objc var address: String? { @objc get }

  /**
    - Selector: addresses
  */
  @objc var addresses: [String] { @objc get }

  /**
    - Selector: localizedName
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var localizedName: String? { @objc get }

  /**
    - Selector: name
  */
  @objc var name: String? { @objc get }

  /**
    - Selector: names
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
