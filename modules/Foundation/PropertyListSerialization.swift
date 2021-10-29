import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: PropertyListSerialization
    - name: NSPropertyListSerialization
    - argLabels: 
  */

@objc(PropertyListSerialization) protocol PropertyListSerializationExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: dataWithPropertyList
    - name: dataWithPropertyList:format:options:error:
    - argLabels: format, options, error
    - constructorTokens: 
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) static func dataWithPropertyList(format: Any, options: PropertyListSerialization.PropertyListFormat, error: Int) -> Data?

  /**
    - jsName: propertyList
    - name: propertyList:isValidForFormat:
    - argLabels: _, isValidFor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: propertyList(_:isValidFor:)
  */
  @objc (propertyList:isValidForFormat:) static func propertyList(_: Any, isValidFor: PropertyListSerialization.PropertyListFormat) -> Bool

  /**
    - jsName: propertyListWithData
    - name: propertyListWithData:options:format:error:
    - argLabels: options, format, error
    - constructorTokens: 
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) static func propertyListWithData(options: Data, format: PropertyListSerialization.MutabilityOptions, error: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?) -> Any?

  /**
    - jsName: propertyListWithStream
    - name: propertyListWithStream:options:format:error:
    - argLabels: options, format, error
    - constructorTokens: 
    - Introduced: 10.6
  */
  // throws - @objc @available(OSX 10.6, *) static func propertyListWithStream(options: InputStream, format: PropertyListSerialization.MutabilityOptions, error: UnsafeMutablePointer<PropertyListSerialization.PropertyListFormat>?) -> Any?

  /**
    - jsName: writePropertyList
    - name: writePropertyList:toStream:format:options:error:
    - argLabels: _, to, format, options, error
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: writePropertyList(_:to:format:options:error:)
    - Introduced: 10.6
  */
  // throws - @objc (writePropertyList:toStream:format:options:error:) @available(OSX 10.6, *) static func writePropertyList(_: Any, _: OutputStream, _: PropertyListSerialization.PropertyListFormat, _: Int) -> Int
}

extension PropertyListSerialization: PropertyListSerializationExports {
}
