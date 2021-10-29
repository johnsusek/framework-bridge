import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: HTTPCookieStorage
    - name: NSHTTPCookieStorage
    - argLabels: 
  */

@objc(HTTPCookieStorage) protocol HTTPCookieStorageExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: sharedCookieStorage
    - name: sharedCookieStorageForGroupContainerIdentifier:
    - argLabels: forGroupContainerIdentifier
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: sharedCookieStorage(forGroupContainerIdentifier:)
    - Introduced: 10.11
  */
  @objc (sharedCookieStorageForGroupContainerIdentifier:) @available(OSX 10.11, *) static func sharedCookieStorage(forGroupContainerIdentifier: String) -> HTTPCookieStorage

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedHTTPCookieStorage
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: HTTPCookieStorage { @objc (sharedHTTPCookieStorage) get }

  // Instance Methods

  /**
    - jsName: cookies
    - name: cookiesForURL:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cookies(for:)
  */
  @objc (cookiesForURL:) func cookies(`for`: URL) -> [HTTPCookie]?

  /**
    - jsName: deleteCookie
    - name: deleteCookie:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deleteCookie(_: HTTPCookie)

  /**
    - jsName: getCookiesFor
    - name: getCookiesForTask:completionHandler:
    - argLabels: _, completionHandler
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: getCookiesFor(_:completionHandler:)
    - Introduced: 10.10
  */
  // jsvalue - @objc (getCookiesForTask:completionHandler:) @available(OSX 10.10, *) func getCookiesFor(_: URLSessionTask, completionHandler: JSValue)

  /**
    - jsName: removeCookies
    - name: removeCookiesSinceDate:
    - argLabels: since
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: removeCookies(since:)
    - Introduced: 10.10
  */
  @objc (removeCookiesSinceDate:) @available(OSX 10.10, *) func removeCookies(since: Date)

  /**
    - jsName: setCookie
    - name: setCookie:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setCookie(_: HTTPCookie)

  /**
    - jsName: setCookies
    - name: setCookies:forURL:mainDocumentURL:
    - argLabels: _, for, mainDocumentURL
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setCookies(_:for:mainDocumentURL:)
  */
  @objc (setCookies:forURL:mainDocumentURL:) func setCookies(_: [HTTPCookie], `for`: URL?, mainDocumentURL: URL?)

  /**
    - jsName: sortedCookies
    - name: sortedCookiesUsingDescriptors:
    - argLabels: using
    - constructorTokens: 
    - available: 10.7
    - obsoleted: 3
    - renamed: sortedCookies(using:)
    - Introduced: 10.7
  */
  @objc (sortedCookiesUsingDescriptors:) @available(OSX 10.7, *) func sortedCookies(using: [NSSortDescriptor]) -> [HTTPCookie]

  /**
    - jsName: storeCookies
    - name: storeCookies:forTask:
    - argLabels: _, for
    - constructorTokens: 
    - available: 10.10
    - obsoleted: 3
    - renamed: storeCookies(_:for:)
    - Introduced: 10.10
  */
  @objc (storeCookies:forTask:) @available(OSX 10.10, *) func storeCookies(_: [HTTPCookie], `for`: URLSessionTask)

  // Own Instance Properties

  /**
    - jsName: cookieAcceptPolicy
    - name: cookieAcceptPolicy
    - argLabels: 
  */
  @objc var cookieAcceptPolicy: HTTPCookie.AcceptPolicy { @objc get @objc (setCookieAcceptPolicy:) set }

  /**
    - jsName: cookies
    - name: cookies
    - argLabels: 
  */
  @objc var cookies: [HTTPCookie]? { @objc get }
}

extension HTTPCookieStorage: HTTPCookieStorageExports {
}
