import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: CachedURLResponse
    - name: NSCachedURLResponse
    - argLabels: 
  */

@objc(CachedURLResponse) protocol CachedURLResponseExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithResponse
    - name: initWithResponse:data:
    - argLabels: data
    - constructorTokens: response, data
  */
  @objc static func createWithResponse(_: URLResponse, data: Data) -> Self

  /**
    - jsName: createWithResponse
    - name: initWithResponse:data:userInfo:storagePolicy:
    - argLabels: data, userInfo, storagePolicy
    - constructorTokens: response, data, userInfo, storagePolicy
  */
  @objc static func createWithResponse(_: URLResponse, data: Data, userInfo: [AnyHashable: Any]?, storagePolicy: URLCache.StoragePolicy) -> Self

  // Own Instance Properties

  /**
    - jsName: data
    - name: data
    - argLabels: 
  */
  @objc var data: Data { @objc get }

  /**
    - jsName: response
    - name: response
    - argLabels: 
  */
  @objc var response: URLResponse { @objc get }

  /**
    - jsName: storagePolicy
    - name: storagePolicy
    - argLabels: 
  */
  @objc var storagePolicy: URLCache.StoragePolicy { @objc get }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
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
