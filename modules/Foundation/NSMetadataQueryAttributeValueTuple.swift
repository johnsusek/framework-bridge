import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSMetadataQueryAttributeValueTuple
    - Introduced: 10.4
  */

@objc(NSMetadataQueryAttributeValueTuple) protocol NSMetadataQueryAttributeValueTupleExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: attribute
  */
  @objc var attribute: String { @objc get }

  /**
    - Selector: count
  */
  @objc var count: Int { @objc get }

  /**
    - Selector: value
  */
  @objc var value: Any? { @objc get }
}

extension NSMetadataQueryAttributeValueTuple: NSMetadataQueryAttributeValueTupleExports {
}
