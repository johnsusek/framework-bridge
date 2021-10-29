import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSScriptWhoseTest
    - name: NSScriptWhoseTest
    - argLabels: 
  */

@objc(NSScriptWhoseTest) protocol NSScriptWhoseTestExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: isTrue
    - name: isTrue
    - argLabels: 
    - constructorTokens: 
  */
  @objc func isTrue() -> Bool
}

extension NSScriptWhoseTest: NSScriptWhoseTestExports {
}
