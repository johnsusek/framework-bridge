import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  // jsvalue @objc func completeRequest(returningItems: [Any]?, completionHandler: JSValue)

  /**
    - Selector: openURL:completionHandler:
  */
  // jsvalue @objc func open(_: URL, completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: inputItems
  */
  @objc var inputItems: [Any] { @objc get }
}

extension NSExtensionContext: NSExtensionContextExports {
}
