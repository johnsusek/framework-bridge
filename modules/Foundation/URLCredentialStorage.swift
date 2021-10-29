import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: URLCredentialStorage
    - name: NSURLCredentialStorage
    - argLabels: 
  */

@objc(URLCredentialStorage) protocol URLCredentialStorageExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedCredentialStorage
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: URLCredentialStorage { @objc (sharedCredentialStorage) get }

  // Instance Methods

  /**
    - jsName: credentials
    - name: credentialsForProtectionSpace:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: credentials(for:)
  */
  @objc (credentialsForProtectionSpace:) func credentials(`for`: URLProtectionSpace) -> [String: URLCredential]?

  /**
    - jsName: defaultCredential
    - name: defaultCredentialForProtectionSpace:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: defaultCredential(for:)
  */
  @objc (defaultCredentialForProtectionSpace:) func defaultCredential(`for`: URLProtectionSpace) -> URLCredential?

  /**
    - jsName: getCredentials
    - name: getCredentialsForProtectionSpace:task:completionHandler:
    - argLabels: for, task, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getCredentials(for:task:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (getCredentialsForProtectionSpace:task:completionHandler:) @available(OSX 10.10, *) func getCredentials(`for`: URLProtectionSpace, task: URLSessionTask, completionHandler: JSValue)

  /**
    - jsName: getDefaultCredential
    - name: getDefaultCredentialForProtectionSpace:task:completionHandler:
    - argLabels: for, task, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getDefaultCredential(for:task:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (getDefaultCredentialForProtectionSpace:task:completionHandler:) @available(OSX 10.10, *) func getDefaultCredential(`for`: URLProtectionSpace, task: URLSessionTask, completionHandler: JSValue)

  /**
    - jsName: remove
    - name: removeCredential:forProtectionSpace:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: remove(_:for:)
  */
  @objc (removeCredential:forProtectionSpace:) func remove(_: URLCredential, `for`: URLProtectionSpace)

  /**
    - jsName: remove
    - name: removeCredential:forProtectionSpace:options:
    - argLabels: _, for, options
    - constructorTokens: 
    - available: 10.9
    - obsoleted: 3
    - renamed: remove(_:for:options:)
    - Introduced: 10.9
  */
  @objc (removeCredential:forProtectionSpace:options:) @available(OSX 10.9, *) func remove(_: URLCredential, `for`: URLProtectionSpace, options: [String: Any]?)

  /**
    - jsName: remove
    - name: removeCredential:forProtectionSpace:options:task:
    - argLabels: _, for, options, task
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: remove(_:for:options:task:)
    - Introduced: 10.10
  */
  @objc (removeCredential:forProtectionSpace:options:task:) @available(OSX 10.10, *) func remove(_: URLCredential, `for`: URLProtectionSpace, options: [String: Any]?, task: URLSessionTask)

  /**
    - jsName: set
    - name: setCredential:forProtectionSpace:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:for:)
  */
  @objc (setCredential:forProtectionSpace:) func set(_: URLCredential, `for`: URLProtectionSpace)

  /**
    - jsName: set
    - name: setCredential:forProtectionSpace:task:
    - argLabels: _, for, task
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: set(_:for:task:)
    - Introduced: 10.10
  */
  @objc (setCredential:forProtectionSpace:task:) @available(OSX 10.10, *) func set(_: URLCredential, `for`: URLProtectionSpace, task: URLSessionTask)

  /**
    - jsName: setDefaultCredential
    - name: setDefaultCredential:forProtectionSpace:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setDefaultCredential(_:for:)
  */
  @objc (setDefaultCredential:forProtectionSpace:) func setDefaultCredential(_: URLCredential, `for`: URLProtectionSpace)

  /**
    - jsName: setDefaultCredential
    - name: setDefaultCredential:forProtectionSpace:task:
    - argLabels: _, for, task
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: setDefaultCredential(_:for:task:)
    - Introduced: 10.10
  */
  @objc (setDefaultCredential:forProtectionSpace:task:) @available(OSX 10.10, *) func setDefaultCredential(_: URLCredential, `for`: URLProtectionSpace, task: URLSessionTask)

  // Own Instance Properties

  /**
    - jsName: allCredentials
    - name: allCredentials
    - argLabels: 
  */
  @objc var allCredentials: [URLProtectionSpace: [String: URLCredential]] { @objc get }
}

extension URLCredentialStorage: URLCredentialStorageExports {
}
