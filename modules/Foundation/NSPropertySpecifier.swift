import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSPropertySpecifier
    - name: NSPropertySpecifier
    - argLabels: 
  */

@objc(NSPropertySpecifier) protocol NSPropertySpecifierExports: JSExport, NSScriptObjectSpecifierExports {
  // Static Methods
}

extension NSPropertySpecifier: NSPropertySpecifierExports {
}
