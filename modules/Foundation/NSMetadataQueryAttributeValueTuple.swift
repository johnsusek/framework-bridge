import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSMetadataQueryAttributeValueTuple
    - name: NSMetadataQueryAttributeValueTuple
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSMetadataQueryAttributeValueTuple) protocol NSMetadataQueryAttributeValueTupleExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: attribute
    - name: attribute
    - argLabels: 
  */
  @objc var attribute: String { @objc get }

  /**
    - jsName: count
    - name: count
    - argLabels: 
  */
  @objc var count: Int { @objc get }

  /**
    - jsName: value
    - name: value
    - argLabels: 
  */
  @objc var value: Any? { @objc get }
}

extension NSMetadataQueryAttributeValueTuple: NSMetadataQueryAttributeValueTupleExports {
}
