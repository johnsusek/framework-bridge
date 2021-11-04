import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSMetadataItem
    - Introduced: 10.4
  */

@objc(NSMetadataItem) protocol NSMetadataItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithURL:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithURL(_: URL) -> Self?

  /**
    - Selector: valueForAttribute:
  */
  @objc (valueForAttribute:) func value(forAttribute: String) -> Any?

  /**
    - Selector: valuesForAttributes:
  */
  @objc (valuesForAttributes:) func values(forAttributes: [String]) -> [String: Any]?

  // Own Instance Properties

  /**
    - Selector: attributes
  */
  @objc var attributes: [String] { @objc get }
}

extension NSMetadataItem: NSMetadataItemExports {
  @objc public static func createWithURL(_ url: URL) -> Self? {
    return self.init(url: url)
  }

}
