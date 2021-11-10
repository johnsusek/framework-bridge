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
    - Selector: NSFilePromiseProvider
    - Introduced: 10.12
  */

@objc(NSFilePromiseProvider) protocol NSFilePromiseProviderExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: NSFilePromiseProviderDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: fileType
  */
  @objc var fileType: String { @objc get @objc (setFileType:) set }

  /**
    - Selector: userInfo
  */
  @objc var userInfo: Any? { @objc get @objc (setUserInfo:) set }
}

extension NSFilePromiseProvider: NSFilePromiseProviderExports {
}
