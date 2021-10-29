import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: JSONSerialization
    - name: NSJSONSerialization
    - argLabels: 
    - Introduced: 10.7
  */

@objc(JSONSerialization) protocol JSONSerializationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: JSONObjectWithData
    - name: JSONObjectWithData:options:error:
    - argLabels: options, error
    - constructorTokens: 
  */
  // throws - @objc static func JSONObjectWithData(options: Data, error: JSONSerialization.ReadingOptions) -> Any?

  /**
    - jsName: JSONObjectWithStream
    - name: JSONObjectWithStream:options:error:
    - argLabels: options, error
    - constructorTokens: 
  */
  // throws - @objc static func JSONObjectWithStream(options: InputStream, error: JSONSerialization.ReadingOptions) -> Any?

  /**
    - jsName: dataWithJSONObject
    - name: dataWithJSONObject:options:error:
    - argLabels: options, error
    - constructorTokens: 
  */
  // throws - @objc static func dataWithJSONObject(options: Any, error: JSONSerialization.WritingOptions) -> Data?

  /**
    - jsName: isValidJSONObject
    - name: isValidJSONObject:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func isValidJSONObject(_: Any) -> Bool

  /**
    - jsName: writeJSONObject
    - name: writeJSONObject:toStream:options:error:
    - argLabels: _, to, options, error
    - constructorTokens: 
    - obsoleted: 3
    - renamed: writeJSONObject(_:to:options:error:)
  */
  // throws - @objc (writeJSONObject:toStream:options:error:) static func writeJSONObject(_: Any, _: OutputStream, _: JSONSerialization.WritingOptions) -> Int
}

extension JSONSerialization: JSONSerializationExports {
}
