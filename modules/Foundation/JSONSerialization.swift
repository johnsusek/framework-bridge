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
    - Selector: NSJSONSerialization
    - Introduced: 10.7
  */

@objc(JSONSerialization) protocol JSONSerializationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: JSONObjectWithData:options:error:
  */
  // throws - @objc static func JSONObjectWithData(options: Data, error: JSONSerialization.ReadingOptions) -> Any?

  /**
    - Selector: JSONObjectWithStream:options:error:
  */
  // throws - @objc static func JSONObjectWithStream(options: InputStream, error: JSONSerialization.ReadingOptions) -> Any?

  /**
    - Selector: dataWithJSONObject:options:error:
  */
  // throws - @objc static func dataWithJSONObject(options: Any, error: JSONSerialization.WritingOptions) -> Data?

  /**
    - Selector: isValidJSONObject:
  */
  @objc static func isValidJSONObject(_: Any) -> Bool

  /**
    - Selector: writeJSONObject:toStream:options:error:
  */
  // throws - @objc (writeJSONObject:toStream:options:error:) static func writeJSONObject(_: Any, _: OutputStream, _: JSONSerialization.WritingOptions) -> Int
}

extension JSONSerialization: JSONSerializationExports {
}
