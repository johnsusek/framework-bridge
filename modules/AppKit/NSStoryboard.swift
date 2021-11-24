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
    - Selector: NSStoryboard
    - Introduced: 10.10
  */

@objc(NSStoryboard) protocol NSStoryboardExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: storyboardWithName:bundle:
  */
  @objc static func createWithName_Bundle(_ name: NSStoryboard.Name, _ bundle: Bundle?) -> Self

  // Own Static Properties

  /**
    - Selector: mainStoryboard
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static var main: NSStoryboard? { @objc (mainStoryboard) get }

  // Instance Methods

  /**
    - Selector: instantiateControllerWithIdentifier:
  */
  @objc (instantiateControllerWithIdentifier:) func instantiateController(withIdentifier: NSStoryboard.SceneIdentifier) -> Any

  /**
    - Selector: instantiateControllerWithIdentifier:creator:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func instantiateControllerWithIdentifier(_: NSStoryboard.SceneIdentifier, creator: JSValue?) -> Any

  /**
    - Selector: instantiateInitialController
  */
  @objc func instantiateInitialController() -> Any?

  /**
    - Selector: instantiateInitialControllerWithCreator:
    - Introduced: 10.15
  */
  // jsvalue @objc @available(OSX 10.15, *) func instantiateInitialControllerWithCreator(_: JSValue?) -> Any?
}

extension NSStoryboard: NSStoryboardExports {

  /**
    - Selector: storyboardWithName:bundle:
  */
  @objc public static func createWithName_Bundle(_ name: NSStoryboard.Name, _ bundle: Bundle?) -> Self {
    return self.init(name: name, bundle: bundle)
  }

}
