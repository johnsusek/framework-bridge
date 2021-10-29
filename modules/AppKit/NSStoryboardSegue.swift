import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStoryboardSegue
    - name: NSStoryboardSegue
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSStoryboardSegue) protocol NSStoryboardSegueExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: segueWithIdentifier:source:destination:performHandler:
    - argLabels: identifier, source, destination, performHandler
    - constructorTokens: 
    - unavailable: true
    - renamed: init(identifier:source:destination:performHandler:)
    - message: Not available in Swift
  */
  @objc static func create(identifier: NSStoryboardSegue.Identifier, source: Any, destination: Any, performHandler: JSValue) -> Self

  // Instance Methods

  /**
    - jsName: perform
    - name: perform
    - argLabels: 
    - constructorTokens: 
  */
  @objc func perform()

  // Own Instance Properties

  /**
    - jsName: destinationController
    - name: destinationController
    - argLabels: 
  */
  @objc var destinationController: Any { @objc get }

  /**
    - jsName: identifier
    - name: identifier
    - argLabels: 
  */
  @objc var identifier: NSStoryboardSegue.Identifier? { @objc get }

  /**
    - jsName: sourceController
    - name: sourceController
    - argLabels: 
  */
  @objc var sourceController: Any { @objc get }
}

extension NSStoryboardSegue: NSStoryboardSegueExports {
  @objc public static func create(identifier: NSStoryboardSegue.Identifier, source: Any, destination: Any, performHandler: JSValue) -> Self {
    return self.init(identifier: identifier, source: source, destination: destination, performHandler: { 
      performHandler.call(withArguments: [])!
    })
  }

}
