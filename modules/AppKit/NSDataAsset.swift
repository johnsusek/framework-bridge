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
    - Selector: NSDataAsset
    - Introduced: 10.11
  */

@objc(NSDataAsset) protocol NSDataAssetExports: JSExport, NSObjectExports {
  // Static Methods

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
}
