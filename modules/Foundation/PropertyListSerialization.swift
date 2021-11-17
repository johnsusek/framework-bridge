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
    - Selector: NSPropertyListSerialization
  */

@objc(PropertyListSerialization) protocol PropertyListSerializationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: dataWithPropertyList:format:options:error:
    - Introduced: 10.6
  */
  // throws - @objc (dataWithPropertyList:format:options:error:) @available(OSX 10.6, *) static func data(plist: Any, fromPropertyList: PropertyListSerialization.PropertyListFormat, format: Int) -> Data?

  /**
    - Selector: propertyList:isValidForFormat:
  */
  @objc (propertyList:isValidForFormat:) static func propertyList(_: Any, isValidFor: PropertyListSerialization.PropertyListFormat) -> Bool

  /**
    - Selector: propertyListWithData:options:format:error:
    - Introduced: 10.6
  */
  // throws - @objc (propertyListWithData:options:format:error:) @available(OSX 10.6, *) static func propertyList(data: Data, from: PropertyListSerialization.MutabilityOptions, options: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?) -> Any?

  /**
    - Selector: propertyListWithStream:options:format:error:
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) static func propertyListWithStream(stream: InputStream, options: PropertyListSerialization.MutabilityOptions, format: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?) -> Any?

  /**
    - Selector: writePropertyList:toStream:format:options:error:
    - Introduced: 10.6
  */
  // throws - @objc (writePropertyList:toStream:format:options:error:) @available(OSX 10.6, *) static func writePropertyList(_: Any, _: OutputStream, _: PropertyListSerialization.PropertyListFormat, _: Int) -> Int
}

extension PropertyListSerialization: PropertyListSerializationExports {
}
