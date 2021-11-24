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
    - Selector: NSURLQueryItem
    - Introduced: 10.10
  */

@objc(NSURLQueryItem) protocol NSURLQueryItemExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: queryItemWithName:value:
  */
  @objc static func createWithName_Value(_ name: String, _ value: String?) -> Self

  // Own Instance Properties

  /**
    - Selector: name
  */
  @objc var name: String { @objc get }

  /**
    - Selector: value
  */
  @objc var value: String? { @objc get }
}

extension NSURLQueryItem: NSURLQueryItemExports {

  /**
    - Selector: queryItemWithName:value:
  */
  @objc public static func createWithName_Value(_ name: String, _ value: String?) -> Self {
    return self.init(name: name, value: value)
  }

}
