import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLAuthenticationChallenge
    - name: NSURLAuthenticationChallenge
    - argLabels: 
  */

@objc(URLAuthenticationChallenge) protocol URLAuthenticationChallengeExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithAuthenticationChallenge
    - name: initWithAuthenticationChallenge:sender:
    - argLabels: sender
    - constructorTokens: authenticationChallenge, sender
  */
  @objc static func createWithAuthenticationChallenge(_: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender) -> Self

  /**
    - jsName: createWithProtectionSpace
    - name: initWithProtectionSpace:proposedCredential:previousFailureCount:failureResponse:error:sender:
    - argLabels: proposedCredential, previousFailureCount, failureResponse, error, sender
    - constructorTokens: protectionSpace, proposedCredential, previousFailureCount, failureResponse, error, sender
  */
  @objc static func createWithProtectionSpace(_: URLProtectionSpace, proposedCredential: URLCredential?, previousFailureCount: Int, failureResponse: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender) -> Self

  // Own Instance Properties

  /**
    - jsName: error
    - name: error
    - argLabels: 
  */
  @objc var error: Error? { @objc get }

  /**
    - jsName: failureResponse
    - name: failureResponse
    - argLabels: 
  */
  @objc var failureResponse: URLResponse? { @objc get }

  /**
    - jsName: previousFailureCount
    - name: previousFailureCount
    - argLabels: 
  */
  @objc var previousFailureCount: Int { @objc get }

  /**
    - jsName: proposedCredential
    - name: proposedCredential
    - argLabels: 
  */
  @objc var proposedCredential: URLCredential? { @objc get }

  /**
    - jsName: protectionSpace
    - name: protectionSpace
    - argLabels: 
  */
  @objc var protectionSpace: URLProtectionSpace { @objc get }

  /**
    - jsName: sender
    - name: sender
    - argLabels: 
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
