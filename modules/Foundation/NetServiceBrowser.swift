import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NetServiceBrowser
    - name: NSNetServiceBrowser
    - argLabels: 
  */

@objc(NetServiceBrowser) protocol NetServiceBrowserExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: remove
    - name: removeFromRunLoop:forMode:
    - argLabels: from, forMode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: remove(from:forMode:)
  */
  @objc (removeFromRunLoop:forMode:) func remove(from: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: schedule
    - name: scheduleInRunLoop:forMode:
    - argLabels: in, forMode
    - constructorTokens: 
    - obsoleted: 3
    - renamed: schedule(in:forMode:)
  */
  @objc (scheduleInRunLoop:forMode:) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - jsName: searchForBrowsableDomains
    - name: searchForBrowsableDomains
    - argLabels: 
    - constructorTokens: 
  */
  @objc func searchForBrowsableDomains()

  /**
    - jsName: searchForRegistrationDomains
    - name: searchForRegistrationDomains
    - argLabels: 
    - constructorTokens: 
  */
  @objc func searchForRegistrationDomains()

  /**
    - jsName: searchForServices
    - name: searchForServicesOfType:inDomain:
    - argLabels: ofType, inDomain
    - constructorTokens: 
    - obsoleted: 3
    - renamed: searchForServices(ofType:inDomain:)
  */
  @objc (searchForServicesOfType:inDomain:) func searchForServices(ofType: String, inDomain: String)

  /**
    - jsName: stop
    - name: stop
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stop()

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NetServiceBrowserDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: includesPeerToPeer
    - name: includesPeerToPeer
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var includesPeerToPeer: Bool { @objc get @objc (setIncludesPeerToPeer:) set }
}

extension NetServiceBrowser: NetServiceBrowserExports {
}
