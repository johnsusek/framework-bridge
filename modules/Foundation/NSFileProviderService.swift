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
    - Selector: NSFileProviderService
    - Introduced: 10.13
  */

@objc(NSFileProviderService) protocol NSFileProviderServiceExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: getFileProviderConnectionWithCompletionHandler:
  */
  // jsvalue @objc func getFileProviderConnection(completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: name
  */
  @objc var name: NSFileProviderServiceName { @objc get }
}

extension NSFileProviderService: NSFileProviderServiceExports {
}
