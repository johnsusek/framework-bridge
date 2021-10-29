import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSMetadataItem
    - name: NSMetadataItem
    - argLabels: 
    - Introduced: 10.4
  */

@objc(NSMetadataItem) protocol NSMetadataItemExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithURL
    - name: initWithURL:
    - argLabels: 
    - constructorTokens: url
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithURL(_: URL) -> Self?

  /**
    - jsName: value
    - name: valueForAttribute:
    - argLabels: forAttribute
    - constructorTokens: 
    - obsoleted: 3
    - renamed: value(forAttribute:)
  */
  @objc (valueForAttribute:) func value(forAttribute: String) -> Any?

  /**
    - jsName: values
    - name: valuesForAttributes:
    - argLabels: forAttributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: values(forAttributes:)
  */
  @objc (valuesForAttributes:) func values(forAttributes: [String]) -> [String: Any]?

  // Own Instance Properties

  /**
    - jsName: attributes
    - name: attributes
    - argLabels: 
  */
  @objc var attributes: [String] { @objc get }
}

extension NSMetadataItem: NSMetadataItemExports {
  @objc public static func createWithURL(_ url: URL) -> Self? {
    return self.init(url: url)
  }

}
