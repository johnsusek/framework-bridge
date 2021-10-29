import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSExtensionContext
    - name: NSExtensionContext
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSExtensionContext) protocol NSExtensionContextExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: cancelRequest
    - name: cancelRequestWithError:
    - argLabels: withError
    - constructorTokens: 
    - obsoleted: 3
    - renamed: cancelRequest(withError:)
  */
  @objc (cancelRequestWithError:) func cancelRequest(withError: Error)

  /**
    - jsName: completeRequest
    - name: completeRequestReturningItems:completionHandler:
    - argLabels: returningItems, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: completeRequest(returningItems:completionHandler:)
  */
  // jsvalue - @objc (completeRequestReturningItems:completionHandler:) func completeRequest(returningItems: [Any]?, completionHandler: JSValue)

  /**
    - jsName: open
    - name: openURL:completionHandler:
    - argLabels: _, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: open(_:completionHandler:)
  */
  // jsvalue - @objc (openURL:completionHandler:) func open(_: URL, completionHandler: JSValue)

  // Own Instance Properties

  /**
    - jsName: inputItems
    - name: inputItems
    - argLabels: 
  */
  @objc var inputItems: [Any] { @objc get }
}

extension NSExtensionContext: NSExtensionContextExports {
}
