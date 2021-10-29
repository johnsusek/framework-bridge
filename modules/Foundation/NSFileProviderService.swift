import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSFileProviderService
    - name: NSFileProviderService
    - argLabels: 
    - Introduced: 10.13
  */

@objc(NSFileProviderService) protocol NSFileProviderServiceExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: getFileProviderConnection
    - name: getFileProviderConnectionWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: getFileProviderConnection(completionHandler:)
  */
  // jsvalue - @objc (getFileProviderConnectionWithCompletionHandler:) func getFileProviderConnection(completionHandler: JSValue)

  // Own Instance Properties

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: NSFileProviderServiceName { @objc get }
}

extension NSFileProviderService: NSFileProviderServiceExports {
}
