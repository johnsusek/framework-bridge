import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSException
  */

@objc(NSException) protocol NSExceptionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: exceptionWithName:reason:userInfo:
  */
  @objc static func create(name: NSExceptionName, reason: String?, userInfo: [AnyHashable: Any]?) -> NSException

  // Instance Methods

  /**
    - Selector: raise
  */
  @objc func raise()

  // Own Instance Properties

  /**
    - Selector: callStackReturnAddresses
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var callStackReturnAddresses: [NSNumber] { @objc get }

  /**
    - Selector: callStackSymbols
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var callStackSymbols: [String] { @objc get }

  /**
    - Selector: name
  */
  @objc var name: NSExceptionName { @objc get }

  /**
    - Selector: reason
  */
  @objc var reason: String? { @objc get }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get }
}

extension NSException: NSExceptionExports {
  @objc public static func create(name: NSExceptionName, reason: String?, userInfo: [AnyHashable: Any]?) -> NSException {
    return self.init(name: name, reason: reason, userInfo: userInfo)
  }

}
