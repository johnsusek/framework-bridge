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
    - Selector: NSURLAuthenticationChallenge
  */

@objc(URLAuthenticationChallenge) protocol URLAuthenticationChallengeExports: JSExport, NSObjectExports {
  // Static Methods

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
}
