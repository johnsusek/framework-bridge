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
    - Selector: NSExtensionContext
    - Introduced: 10.10
  */

@objc(NSExtensionContext) protocol NSExtensionContextExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: cancelRequestWithError:
  */
  @objc (cancelRequestWithError:) func cancelRequest(withError: Error)

  /**
    - Selector: completeRequestReturningItems:completionHandler:
  */
  // jsvalue @objc func completeRequestReturningItemsWithCompletionHandler(_ returningItems: [Any]?, _ completionHandler: JSValue)

  /**
    - Selector: openURL:completionHandler:
  */
  // jsvalue @objc func openURLWithCompletionHandler(_ p0: URL, _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: inputItems
  */
  @objc var inputItems: [Any] { @objc get }
}

extension NSExtensionContext: NSExtensionContextExports {
}
