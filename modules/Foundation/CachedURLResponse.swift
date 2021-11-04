import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSCachedURLResponse
  */

@objc(CachedURLResponse) protocol CachedURLResponseExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithResponse:data:
  */
  @objc static func createWithResponse(_: URLResponse, data: Data) -> Self

  /**
    - Selector: initWithResponse:data:userInfo:storagePolicy:
  */
  @objc static func createWithResponse(_: URLResponse, data: Data, userInfo: [AnyHashable: Any]?, storagePolicy: URLCache.StoragePolicy) -> Self

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
  @objc public static func createWithResponse(_ response: URLResponse, data: Data) -> Self {
    return self.init(response: response, data: data)
  }

  @objc public static func createWithResponse(_ response: URLResponse, data: Data, userInfo: [AnyHashable: Any]?, storagePolicy: URLCache.StoragePolicy) -> Self {
    return self.init(response: response, data: data, userInfo: userInfo, storagePolicy: storagePolicy)
  }

}
