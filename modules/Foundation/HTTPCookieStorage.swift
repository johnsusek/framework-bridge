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
    - Selector: NSHTTPCookieStorage
  */

@objc(HTTPCookieStorage) protocol HTTPCookieStorageExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: sharedCookieStorageForGroupContainerIdentifier:
    - Introduced: 10.11
  */
  @objc (sharedCookieStorageForGroupContainerIdentifier:) @available(OSX 10.11, *) static func sharedCookieStorage(forGroupContainerIdentifier: String) -> HTTPCookieStorage

  // Own Static Properties

  /**
    - Selector: sharedHTTPCookieStorage
  */
  @objc static var shared: HTTPCookieStorage { @objc (sharedHTTPCookieStorage) get }

  // Instance Methods

  /**
    - Selector: cookiesForURL:
  */
  @objc (cookiesForURL:) func cookies(`for`: URL) -> [HTTPCookie]?

  /**
    - Selector: deleteCookie:
  */
  @objc func deleteCookie(_ p0: HTTPCookie)

  /**
    - Selector: getCookiesForTask:completionHandler:
    - Introduced: 10.10
  */
  // jsvalue @objc @available(OSX 10.10, *) func getCookiesFor(_ p0: URLSessionTask, completionHandler: JSValue)

  /**
    - Selector: removeCookiesSinceDate:
    - Introduced: 10.10
  */
  @objc (removeCookiesSinceDate:) @available(OSX 10.10, *) func removeCookies(since: Date)

  /**
    - Selector: setCookie:
  */
  @objc func setCookie(_ p0: HTTPCookie)

  /**
    - Selector: setCookies:forURL:mainDocumentURL:
  */
  @objc (setCookies:forURL:mainDocumentURL:) func setCookies(_ p0: [HTTPCookie], `for`: URL?, mainDocumentURL: URL?)

  /**
    - Selector: sortedCookiesUsingDescriptors:
    - Introduced: 10.7
  */
  @objc (sortedCookiesUsingDescriptors:) @available(OSX 10.7, *) func sortedCookies(using: [NSSortDescriptor]) -> [HTTPCookie]

  /**
    - Selector: storeCookies:forTask:
    - Introduced: 10.10
  */
  @objc (storeCookies:forTask:) @available(OSX 10.10, *) func storeCookies(_ p0: [HTTPCookie], `for`: URLSessionTask)

  // Own Instance Properties

  /**
    - Selector: cookieAcceptPolicy
  */
  @objc var cookieAcceptPolicy: HTTPCookie.AcceptPolicy { @objc get @objc (setCookieAcceptPolicy:) set }

  /**
    - Selector: cookies
  */
  @objc var cookies: [HTTPCookie]? { @objc get }
}

extension HTTPCookieStorage: HTTPCookieStorageExports {
}
