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
    - Selector: NSMetadataQueryResultGroup
    - Introduced: 10.4
  */

@objc(NSMetadataQueryResultGroup) protocol NSMetadataQueryResultGroupExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: resultAtIndex:
  */
  @objc (resultAtIndex:) func result(at: Int) -> Any

  // Own Instance Properties

  /**
    - Selector: attribute
  */
  @objc var attribute: String { @objc get }

  /**
    - Selector: resultCount
  */
  @objc var resultCount: Int { @objc get }

  /**
    - Selector: results
  */
  @objc var results: [Any] { @objc get }

  /**
    - Selector: subgroups
  */
  @objc var subgroups: [NSMetadataQueryResultGroup]? { @objc get }

  /**
    - Selector: value
  */
  @objc var value: Any { @objc get }
}

extension NSMetadataQueryResultGroup: NSMetadataQueryResultGroupExports {
}
