import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: MessagePort
    - name: NSMessagePort
    - argLabels: 
  */

@objc(MessagePort) protocol MessagePortExports: JSExport, PortExports {
  // Static Methods
}

extension MessagePort: MessagePortExports {
}
