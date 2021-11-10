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
    - Selector: NSMessagePort
  */

@objc(MessagePort) protocol MessagePortExports: JSExport, PortExports {
  // Static Methods
}

extension MessagePort: MessagePortExports {
}
