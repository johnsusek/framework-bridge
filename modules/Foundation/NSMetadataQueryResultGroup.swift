import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSMetadataQueryResultGroup
    - name: NSMetadataQueryResultGroup
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSMetadataQueryResultGroup) protocol NSMetadataQueryResultGroupExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: result
    - name: resultAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: result(at:)
  */
  @objc (resultAtIndex:) func result(at: Int) -> Any

  // Own Instance Properties

  /**
    - jsName: attribute
    - name: attribute
    - argLabels: 
  */
  @objc var attribute: String { @objc get }

  /**
    - jsName: resultCount
    - name: resultCount
    - argLabels: 
  */
  @objc var resultCount: Int { @objc get }

  /**
    - jsName: results
    - name: results
    - argLabels: 
  */
  @objc var results: [Any] { @objc get }

  /**
    - jsName: subgroups
    - name: subgroups
    - argLabels: 
  */
  @objc var subgroups: [NSMetadataQueryResultGroup]? { @objc get }

  /**
    - jsName: value
    - name: value
    - argLabels: 
  */
  @objc var value: Any { @objc get }
}

extension NSMetadataQueryResultGroup: NSMetadataQueryResultGroupExports {
}
