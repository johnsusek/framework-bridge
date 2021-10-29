import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFilePromiseProvider
    - name: NSFilePromiseProvider
    - argLabels: 
    - Introduced: 10.12
  */

@objc(NSFilePromiseProvider) protocol NSFilePromiseProviderExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithFileType
    - name: initWithFileType:delegate:
    - argLabels: delegate
    - constructorTokens: fileType, delegate
  */
  @objc static func createWithFileType(_: String, delegate: NSFilePromiseProviderDelegate) -> Self

  // Own Instance Properties

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSFilePromiseProviderDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: fileType
    - name: fileType
    - argLabels: 
  */
  @objc var fileType: String { @objc get @objc (setFileType:) set }

  /**
    - jsName: userInfo
    - name: userInfo
    - argLabels: 
  */
  @objc var userInfo: Any? { @objc get @objc (setUserInfo:) set }
}

extension NSFilePromiseProvider: NSFilePromiseProviderExports {
  @objc public static func createWithFileType(_ fileType: String, delegate: NSFilePromiseProviderDelegate) -> Self {
    return self.init(fileType: fileType, delegate: delegate)
  }

}
