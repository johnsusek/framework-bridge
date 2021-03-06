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
    - Selector: NSURLCredentialStorage
  */

@objc(URLCredentialStorage) protocol URLCredentialStorageExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedCredentialStorage
  */
  @objc static var shared: URLCredentialStorage { @objc (sharedCredentialStorage) get }

  // Instance Methods

  /**
    - Selector: credentialsForProtectionSpace:
  */
  @objc (credentialsForProtectionSpace:) func credentials(`for`: URLProtectionSpace) -> [String: URLCredential]?

  /**
    - Selector: defaultCredentialForProtectionSpace:
  */
  @objc (defaultCredentialForProtectionSpace:) func defaultCredential(`for`: URLProtectionSpace) -> URLCredential?

  /**
    - Selector: getCredentialsForProtectionSpace:task:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func getCredentials(`for`: URLProtectionSpace, task: URLSessionTask, completionHandler: JSValue)

  /**
    - Selector: getDefaultCredentialForProtectionSpace:task:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func getDefaultCredential(`for`: URLProtectionSpace, task: URLSessionTask, completionHandler: JSValue)

  /**
    - Selector: removeCredential:forProtectionSpace:
  */
  @objc (removeCredential:forProtectionSpace:) func remove(_ p0: URLCredential, `for`: URLProtectionSpace)

  /**
    - Selector: removeCredential:forProtectionSpace:options:
    - Introduced: 10.9
  */
  @objc (removeCredential:forProtectionSpace:options:) @available(OSX 10.9, *) func remove(_ p0: URLCredential, `for`: URLProtectionSpace, options: [String: Any]?)

  /**
    - Selector: removeCredential:forProtectionSpace:options:task:
    - Introduced: 10.10
  */
  @objc (removeCredential:forProtectionSpace:options:task:) @available(OSX 10.10, *) func remove(_ p0: URLCredential, `for`: URLProtectionSpace, options: [String: Any]?, task: URLSessionTask)

  /**
    - Selector: setCredential:forProtectionSpace:
  */
  @objc (setCredential:forProtectionSpace:) func set(_ p0: URLCredential, `for`: URLProtectionSpace)

  /**
    - Selector: setCredential:forProtectionSpace:task:
    - Introduced: 10.10
  */
  @objc (setCredential:forProtectionSpace:task:) @available(OSX 10.10, *) func set(_ p0: URLCredential, `for`: URLProtectionSpace, task: URLSessionTask)

  /**
    - Selector: setDefaultCredential:forProtectionSpace:
  */
  @objc (setDefaultCredential:forProtectionSpace:) func setDefaultCredential(_ p0: URLCredential, `for`: URLProtectionSpace)

  /**
    - Selector: setDefaultCredential:forProtectionSpace:task:
    - Introduced: 10.10
  */
  @objc (setDefaultCredential:forProtectionSpace:task:) @available(OSX 10.10, *) func setDefaultCredential(_ p0: URLCredential, `for`: URLProtectionSpace, task: URLSessionTask)

  // Own Instance Properties

  /**
    - Selector: allCredentials
  */
  @objc var allCredentials: [URLProtectionSpace: [String: URLCredential]] { @objc get }
}

extension URLCredentialStorage: URLCredentialStorageExports {
}
