import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSStoryboardSegue
    - Introduced: 10.10
  */

@objc(NSStoryboardSegue) protocol NSStoryboardSegueExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: segueWithIdentifier:source:destination:performHandler:
  */
// jsvalue   @objc static func createWithSegueWithIdentifierWithSourceWithDestinationWithPerformHandler(_ identifier: NSStoryboardSegue.Identifier, _ source: Any, _ destination: Any, _ performHandler: JSValue) -> Self

  // Instance Methods

  /**
    - Selector: perform
  */
  @objc func perform()

  // Own Instance Properties

  /**
    - Selector: destinationController
  */
  @objc var destinationController: Any { @objc get }

  /**
    - Selector: identifier
  */
  @objc var identifier: NSStoryboardSegue.Identifier? { @objc get }

  /**
    - Selector: sourceController
  */
  @objc var sourceController: Any { @objc get }
}

extension NSStoryboardSegue: NSStoryboardSegueExports {

  /**
    - Selector: segueWithIdentifier:source:destination:performHandler:
  */
  @objc public static func createWithSegueWithIdentifierWithSourceWithDestinationWithPerformHandler(_ identifier: NSStoryboardSegue.Identifier, _ source: Any, _ destination: Any, _ performHandler: JSValue) -> Self {
    return self.init(identifier: identifier, source: source, destination: destination, performHandler: { 
      performHandler.call(withArguments: [])
    })
  }

}
