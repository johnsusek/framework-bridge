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
    - Selector: NSHost
  */

@objc(Host) protocol HostExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: hostWithAddress:
  */
  @objc static func createWithAddress(_ address: String) -> Self

  /**
    - Selector: hostWithName:
  */
  @objc static func createWithName(_ name: String?) -> Self

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

  /**
    - Selector: hostWithAddress:
  */
  @objc public static func createWithAddress(_ address: String) -> Self {
    return self.init(address: address)
  }


  /**
    - Selector: hostWithName:
  */
  @objc public static func createWithName(_ name: String?) -> Self {
    return self.init(name: name)
  }

}
