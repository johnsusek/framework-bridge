import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFontAssetRequest
    - name: NSFontAssetRequest
    - argLabels: 
    - Introduced: 10.13
  */

@objc(NSFontAssetRequest) protocol NSFontAssetRequestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: download
    - name: downloadFontAssetsWithCompletionHandler:
    - argLabels: withCompletionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: download(withCompletionHandler:)
  */
  // jsvalue - @objc (downloadFontAssetsWithCompletionHandler:) func download(withCompletionHandler: JSValue)

  /**
    - jsName: createWithFontDescriptors
    - name: initWithFontDescriptors:options:
    - argLabels: options
    - constructorTokens: fontDescriptors, options
  */
  @objc static func createWithFontDescriptors(_: [NSFontDescriptor], options: NSFontAssetRequest.Options) -> Self

  // Own Instance Properties

  /**
    - jsName: downloadedFontDescriptors
    - name: downloadedFontDescriptors
    - argLabels: 
  */
  @objc var downloadedFontDescriptors: [NSFontDescriptor] { @objc get }
}

extension NSFontAssetRequest: NSFontAssetRequestExports {
  @objc public static func createWithFontDescriptors(_ fontDescriptors: [NSFontDescriptor], options: NSFontAssetRequest.Options) -> Self {
    return self.init(fontDescriptors: fontDescriptors, options: options)
  }

}
