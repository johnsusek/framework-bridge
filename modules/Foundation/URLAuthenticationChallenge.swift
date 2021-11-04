import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSURLAuthenticationChallenge
  */

@objc(URLAuthenticationChallenge) protocol URLAuthenticationChallengeExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithAuthenticationChallenge:sender:
  */
  @objc static func createWithAuthenticationChallenge(_: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender) -> Self

  /**
    - Selector: initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:sender:
  */
  @objc static func createWithProtectionSpace(_: URLProtectionSpace, proposedCredential: URLCredential?, previousFailureCount: Int, failureResponse: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender) -> Self

  // Own Instance Properties

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: failureResponse
  */
  @objc var failureResponse: URLResponse? { @objc get }

  /**
    - Selector: previousFailureCount
  */
  @objc var previousFailureCount: Int { @objc get }

  /**
    - Selector: proposedCredential
  */
  @objc var proposedCredential: URLCredential? { @objc get }

  /**
    - Selector: protectionSpace
  */
  @objc var protectionSpace: URLProtectionSpace { @objc get }

  /**
    - Selector: sender
  */
  @objc var sender: URLAuthenticationChallengeSender? { @objc get }
}

extension URLAuthenticationChallenge: URLAuthenticationChallengeExports {
  @objc public static func createWithAuthenticationChallenge(_ authenticationChallenge: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender) -> Self {
    return self.init(authenticationChallenge: authenticationChallenge, sender: sender)
  }

  @objc public static func createWithProtectionSpace(_ protectionSpace: URLProtectionSpace, proposedCredential: URLCredential?, previousFailureCount: Int, failureResponse: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender) -> Self {
    return self.init(protectionSpace: protectionSpace, proposedCredential: proposedCredential, previousFailureCount: previousFailureCount, failureResponse: failureResponse, error: error, sender: sender)
  }

}
