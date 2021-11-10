import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCachedURLResponse
  */

@objc(CachedURLResponse) protocol CachedURLResponseExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: data
  */
  @objc var data: Data { @objc get }

  /**
    - Selector: response
  */
  @objc var response: URLResponse { @objc get }

  /**
    - Selector: storagePolicy
  */
  @objc var storagePolicy: URLCache.StoragePolicy { @objc get }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: [AnyHashable: Any]? { @objc get }
}

extension CachedURLResponse: CachedURLResponseExports {
}
