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
    - Selector: NSMetadataItem
    - Introduced: 10.4
  */

@objc(NSMetadataItem) protocol NSMetadataItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

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
}
