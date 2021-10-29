import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStoryboard
    - name: NSStoryboard
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSStoryboard) protocol NSStoryboardExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: storyboardWithName:bundle:
    - argLabels: name, bundle
    - constructorTokens: 
    - unavailable: true
    - renamed: init(name:bundle:)
    - message: Not available in Swift
  */
  @objc static func create(name: NSStoryboard.Name, bundle: Bundle?) -> Self

  // Own Static Properties

  /**
    - jsName: main
    - name: mainStoryboard
    - argLabels: 
    - available: 10.13
    - obsoleted: 3
    - renamed: main
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static var main: NSStoryboard? { @objc (mainStoryboard) get }

  // Instance Methods

  /**
    - jsName: instantiateController
    - name: instantiateControllerWithIdentifier:
    - argLabels: withIdentifier
    - constructorTokens: 
    - obsoleted: 3
    - renamed: instantiateController(withIdentifier:)
  */
  @objc (instantiateControllerWithIdentifier:) func instantiateController(withIdentifier: NSStoryboard.SceneIdentifier) -> Any

  /**
    - jsName: instantiateControllerWithIdentifier
    - name: instantiateControllerWithIdentifier:creator:
    - argLabels: creator
    - constructorTokens: 
    - Introduced: 10.15
  */
  // jsvalue - @objc @available(OSX 10.15, *) func instantiateControllerWithIdentifier(_: NSStoryboard.SceneIdentifier, creator: JSValue?) -> Any

  /**
    - jsName: instantiateInitialController
    - name: instantiateInitialController
    - argLabels: 
    - constructorTokens: 
  */
  @objc func instantiateInitialController() -> Any?

  /**
    - jsName: instantiateInitialControllerWithCreator
    - name: instantiateInitialControllerWithCreator:
    - argLabels: 
    - constructorTokens: 
    - Introduced: 10.15
  */
  // jsvalue - @objc @available(OSX 10.15, *) func instantiateInitialControllerWithCreator(_: JSValue?) -> Any?
}

extension NSStoryboard: NSStoryboardExports {
  @objc public static func create(name: NSStoryboard.Name, bundle: Bundle?) -> Self {
    return self.init(name: name, bundle: bundle)
  }

}
