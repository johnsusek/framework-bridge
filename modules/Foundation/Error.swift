import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: Error
    - name: NSError
    - argLabels: 
  */

@objc(NSError) protocol NSErrorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: setUserInfoValueProviderForDomain
    - name: setUserInfoValueProviderForDomain:provider:
    - argLabels: provider
    - constructorTokens: 
    - Introduced: 10.11
  */
  // jsvalue - @objc @available(OSX 10.11, *) static func setUserInfoValueProviderForDomain(_: NSErrorDomain, provider: JSValue)

  /**
    - jsName: userInfoValueProviderForDomain
    - name: userInfoValueProviderForDomain:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.11
  */
  // jsvalue - @objc @available(OSX 10.11, *) static func userInfoValueProviderForDomain(_: NSErrorDomain) -> JSValue

  // Instance Methods

  /**
    - jsName: createWithDomain
    - name: initWithDomain:code:userInfo:
    - argLabels: code, userInfo
    - constructorTokens: domain, code, userInfo
  */
  @objc static func createWithDomain(_: String, code: Int, userInfo: [String: Any]?) -> Self

  // Own Instance Properties

  /**
    - jsName: code
    - name: code
    - argLabels: 
  */
  @objc var code: Int { @objc get }

  /**
    - jsName: domain
    - name: domain
    - argLabels: 
  */
  @objc var domain: String { @objc get }

  /**
    - jsName: helpAnchor
    - name: helpAnchor
    - argLabels: 
  */
  @objc var helpAnchor: String? { @objc get }

  /**
    - jsName: localizedDescription
    - name: localizedDescription
    - argLabels: 
  */
  @objc var localizedDescription: String { @objc get }

  /**
    - jsName: localizedFailureReason
    - name: localizedFailureReason
    - argLabels: 
  */
  @objc var localizedFailureReason: String? { @objc get }

  /**
    - jsName: localizedRecoveryOptions
    - name: localizedRecoveryOptions
    - argLabels: 
  */
  @objc var localizedRecoveryOptions: [String]? { @objc get }

  /**
    - jsName: localizedRecoverySuggestion
    - name: localizedRecoverySuggestion
    - argLabels: 
  */
  @objc var localizedRecoverySuggestion: String? { @objc get }

  /**
    - jsName: recoveryAttempter
    - name: recoveryAttempter
    - argLabels: 
  */
  @objc var recoveryAttempter: Any? { @objc get }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: [String: Any] { @objc get }
}

extension NSError: NSErrorExports {
  @objc public static func createWithDomain(_ domain: String, code: Int, userInfo: [String: Any]?) -> Self {
    return self.init(domain: domain, code: code, userInfo: userInfo)
  }

}
