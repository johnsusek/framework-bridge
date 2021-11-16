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
    - Selector: NSFontAssetRequest
    - Introduced: 10.13
  */

@objc(NSFontAssetRequest) protocol NSFontAssetRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: downloadFontAssetsWithCompletionHandler:
  */
  // jsvalue @objc func downloadFontAssetsWithCallback(_ withCompletionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: downloadedFontDescriptors
  */
  @objc var downloadedFontDescriptors: [NSFontDescriptor] { @objc get }
}

extension NSFontAssetRequest: NSFontAssetRequestExports {
}
