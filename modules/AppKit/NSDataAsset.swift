import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDataAsset
    - name: NSDataAsset
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSDataAsset) protocol NSDataAssetExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithName
    - name: initWithName:
    - argLabels: 
    - constructorTokens: name
  */
  @objc static func createWithName(_: NSDataAsset.Name) -> Self?

  /**
    - jsName: createWithName
    - name: initWithName:bundle:
    - argLabels: bundle
    - constructorTokens: name, bundle
  */
  @objc static func createWithName(_: NSDataAsset.Name, bundle: Bundle) -> Self?

  // Own Instance Properties

  /**
    - jsName: data
    - name: data
    - argLabels: 
  */
  @objc var data: Data { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: NSDataAsset.Name { @objc get }

  /**
    - jsName: typeIdentifier
    - name: typeIdentifier
    - argLabels: 
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
