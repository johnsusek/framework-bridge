import AppKit
import JavaScriptCore
import Quartz
import AVKit
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
  // jsvalue @objc func download(withCompletionHandler: JSValue)

  /**
    - Selector: initWithFontDescriptors:options:
  */
  @objc static func createWithFontDescriptors(_: [NSFontDescriptor], options: NSFontAssetRequest.Options) -> Self

  // Own Instance Properties

  /**
    - Selector: downloadedFontDescriptors
  */
  @objc var downloadedFontDescriptors: [NSFontDescriptor] { @objc get }
}

extension NSFontAssetRequest: NSFontAssetRequestExports {
  @objc public static func createWithFontDescriptors(_ fontDescriptors: [NSFontDescriptor], options: NSFontAssetRequest.Options) -> Self {
    return self.init(fontDescriptors: fontDescriptors, options: options)
  }

}
