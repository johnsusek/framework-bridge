import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSNetServiceBrowser
  */

@objc(NetServiceBrowser) protocol NetServiceBrowserExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: removeFromRunLoop:forMode:
  */
  @objc (removeFromRunLoop:forMode:) func remove(from: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: scheduleInRunLoop:forMode:
  */
  @objc (scheduleInRunLoop:forMode:) func schedule(in: RunLoop, forMode: RunLoop.Mode)

  /**
    - Selector: searchForBrowsableDomains
  */
  @objc func searchForBrowsableDomains()

  /**
    - Selector: searchForRegistrationDomains
  */
  @objc func searchForRegistrationDomains()

  /**
    - Selector: searchForServicesOfType:inDomain:
  */
  @objc (searchForServicesOfType:inDomain:) func searchForServices(ofType: String, inDomain: String)

  /**
    - Selector: stop
  */
  @objc func stop()

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NetServiceBrowserDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: includesPeerToPeer
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var includesPeerToPeer: Bool { @objc get @objc (setIncludesPeerToPeer:) set }
}

extension NetServiceBrowser: NetServiceBrowserExports {
}
