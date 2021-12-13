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
    - Selector: NSError
  */

@objc(NSError) protocol NSErrorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: errorWithDomain:code:userInfo:
  */
  @objc static func createWithDomain_Code_UserInfo(_ domain: String, _ code: Int, _ userInfo: [String: Any]?) -> Self

  /**
    - Selector: setUserInfoValueProviderForDomain:provider:
    - Introduced: 10.11
  */
// jsvalue   @objc @available(OSX 10.11, *) static func setUserInfoValueProvider(forDomain: NSErrorDomain, provider: JSValue)

  /**
    - Selector: userInfoValueProviderForDomain:
    - Introduced: 10.11
  */
// jsvalue   @objc (userInfoValueProviderForDomain:) @available(OSX 10.11, *) static func userInfoValueProvider(forDomain: NSErrorDomain) -> JSValue

  // Own Instance Properties

  /**
    - Selector: code
  */
  @objc var code: Int { @objc get }

  /**
    - Selector: domain
  */
  @objc var domain: String { @objc get }

  /**
    - Selector: helpAnchor
  */
  @objc var helpAnchor: String? { @objc get }

  /**
    - Selector: localizedDescription
  */
  @objc var localizedDescription: String { @objc get }

  /**
    - Selector: localizedFailureReason
  */
  @objc var localizedFailureReason: String? { @objc get }

  /**
    - Selector: localizedRecoveryOptions
  */
  @objc var localizedRecoveryOptions: [String]? { @objc get }

  /**
    - Selector: localizedRecoverySuggestion
  */
  @objc var localizedRecoverySuggestion: String? { @objc get }

  /**
    - Selector: recoveryAttempter
  */
  @objc var recoveryAttempter: Any? { @objc get }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [String: Any] { @objc get }
}

extension NSError: NSErrorExports {

  /**
    - Selector: errorWithDomain:code:userInfo:
  */
  @objc public static func createWithDomain_Code_UserInfo(_ domain: String, _ code: Int, _ userInfo: [String: Any]?) -> Self {
    return self.init(domain: domain, code: code, userInfo: userInfo)
  }

}
