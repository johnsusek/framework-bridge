import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSException
    - name: NSException
    - argLabels: 
  */

@objc(NSException) protocol NSExceptionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: exceptionWithName:reason:userInfo:
    - argLabels: name, reason, userInfo
    - constructorTokens: 
    - unavailable: true
    - renamed: init(name:reason:userInfo:)
    - message: Not available in Swift
  */
  @objc static func create(name: NSExceptionName, reason: String?, userInfo: [AnyHashable: Any]?) -> NSException

  // Instance Methods

  /**
    - jsName: raise
    - name: raise
    - argLabels: 
    - constructorTokens: 
  */
  @objc func raise()

  // Own Instance Properties

  /**
    - jsName: callStackReturnAddresses
    - name: callStackReturnAddresses
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var callStackReturnAddresses: [NSNumber] { @objc get }

  /**
    - jsName: callStackSymbols
    - name: callStackSymbols
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var callStackSymbols: [String] { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: NSExceptionName { @objc get }

  /**
    - jsName: reason
    - name: reason
    - argLabels: 
  */
  @objc var reason: String? { @objc get }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get }
}

extension NSException: NSExceptionExports {
  @objc public static func create(name: NSExceptionName, reason: String?, userInfo: [AnyHashable: Any]?) -> NSException {
    return self.init(name: name, reason: reason, userInfo: userInfo)
  }

}
