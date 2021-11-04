import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSDataAsset
    - Introduced: 10.11
  */

@objc(NSDataAsset) protocol NSDataAssetExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithName:
  */
  @objc static func createWithName(_: NSDataAsset.Name) -> Self?

  /**
    - Selector: initWithName:bundle:
  */
  @objc static func createWithName(_: NSDataAsset.Name, bundle: Bundle) -> Self?

  // Own Instance Properties

  /**
    - Selector: data
  */
  @objc var data: Data { @objc get }

  /**
    - Selector: name
  */
  @objc var name: NSDataAsset.Name { @objc get }

  /**
    - Selector: typeIdentifier
  */
  @objc var typeIdentifier: String { @objc get }
}

extension NSDataAsset: NSDataAssetExports {
  @objc public static func createWithName(_ name: NSDataAsset.Name) -> Self? {
    return self.init(name: name)
  }

  @objc public static func createWithName(_ name: NSDataAsset.Name, bundle: Bundle) -> Self? {
    return self.init(name: name, bundle: bundle)
  }

}
