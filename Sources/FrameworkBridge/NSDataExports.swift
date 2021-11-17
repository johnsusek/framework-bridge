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
    - Selector: NSData
  */

@objc(NSData) protocol NSDataExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: dataWithBytes:length:
  */
  @objc static func createWithBytesWithLength(_ bytes: UnsafeRawPointer?, _ length: Int) -> Self

  /**
    - Selector: dataWithBytesNoCopy:length:
  */
  @objc static func createWithBytesNoCopyWithLength(_ bytesNoCopy: UnsafeMutableRawPointer, _ length: Int) -> Self

  /**
    - Selector: dataWithBytesNoCopy:length:freeWhenDone:
  */
  @objc static func createWithBytesNoCopyWithLengthWithFreeWhenDone(_ bytesNoCopy: UnsafeMutableRawPointer, _ length: Int, _ freeWhenDone: Bool) -> Self

  /**
    - Selector: dataWithContentsOfFile:
  */
  @objc static func createWithContentsOfFile(_ contentsOfFile: String) -> Self?

  /**
    - Selector: dataWithContentsOfFile:options:error:
  */
  @objc static func createWithContentsOfFileOptionsWithError(_ path: String, _ options: NSData.ReadingOptions) -> Self?

  /**
    - Selector: dataWithContentsOfURL:
  */
  @objc static func createWithContentsOfURL(_ contentsOf: URL) -> Self?

  /**
    - Selector: dataWithContentsOfURL:options:error:
  */
  @objc static func createWithContentsOfURLOptionsWithError(_ url: URL, _ options: NSData.ReadingOptions) -> Self?

  /**
    - Selector: dataWithData:
  */
  @objc static func createWithData(_ data: Data) -> Self

  // Instance Methods

  /**
    - Selector: base64EncodedDataWithOptions:
    - Introduced: 10.9
  */
  @objc (base64EncodedDataWithOptions:) @available(OSX 10.9, *) func base64EncodedData(options: NSData.Base64EncodingOptions) -> Data

  /**
    - Selector: base64EncodedStringWithOptions:
    - Introduced: 10.9
  */
  @objc (base64EncodedStringWithOptions:) @available(OSX 10.9, *) func base64EncodedString(options: NSData.Base64EncodingOptions) -> String

  /**
    - Selector: enumerateByteRangesUsingBlock:
    - Introduced: 10.9
  */
  // jsvalue @objc @available(OSX 10.9, *) func enumerateBytes(_: JSValue)

  /**
    - Selector: getBytes:length:
  */
  @objc func getBytes(_: UnsafeMutableRawPointer, length: Int)

  /**
    - Selector: getBytes:range:
  */
  @objc func getBytes(_: UnsafeMutableRawPointer, range: NSRange)

  /**
    - Selector: isEqualToData:
  */
  @objc (isEqualToData:) func isEqual(to: Data) -> Bool

  /**
    - Selector: rangeOfData:options:range:
    - Introduced: 10.6
  */
  @objc (rangeOfData:options:range:) @available(OSX 10.6, *) func range(of: Data, options: NSData.SearchOptions, in: NSRange) -> NSRange

  /**
    - Selector: subdataWithRange:
  */
  @objc (subdataWithRange:) func subdata(with: NSRange) -> Data

  /**
    - Selector: writeToFile:atomically:
  */
  @objc (writeToFile:atomically:) func write(toFile: String, atomically: Bool) -> Bool

  /**
    - Selector: writeToFile:options:error:
  */
  // throws - @objc func writeToFile(path: String, options: NSData.WritingOptions) -> Bool

  /**
    - Selector: writeToURL:atomically:
  */
  @objc (writeToURL:atomically:) func write(to: URL, atomically: Bool) -> Bool

  /**
    - Selector: writeToURL:options:error:
  */
  // throws - @objc func writeToURL(url: URL, options: NSData.WritingOptions) -> Bool

  // Own Instance Properties

  /**
    - Selector: bytes
  */
  @objc var bytes: UnsafeRawPointer { @objc get }

  /**
    - Selector: length
  */
  @objc var length: Int { @objc get }
}

extension NSData: NSDataExports {

  /**
    - Selector: dataWithBytes:length:
  */
  @objc public static func createWithBytesWithLength(_ bytes: UnsafeRawPointer?, _ length: Int) -> Self {
    return self.init(bytes: bytes, length: length)
  }


  /**
    - Selector: dataWithBytesNoCopy:length:
  */
  @objc public static func createWithBytesNoCopyWithLength(_ bytesNoCopy: UnsafeMutableRawPointer, _ length: Int) -> Self {
    return self.init(bytesNoCopy: bytesNoCopy, length: length)
  }


  /**
    - Selector: dataWithBytesNoCopy:length:freeWhenDone:
  */
  @objc public static func createWithBytesNoCopyWithLengthWithFreeWhenDone(_ bytesNoCopy: UnsafeMutableRawPointer, _ length: Int, _ freeWhenDone: Bool) -> Self {
    return self.init(bytesNoCopy: bytesNoCopy, length: length, freeWhenDone: freeWhenDone)
  }


  /**
    - Selector: dataWithContentsOfFile:
  */
  @objc public static func createWithContentsOfFile(_ contentsOfFile: String) -> Self? {
    return self.init(contentsOfFile: contentsOfFile)
  }


  /**
    - Selector: dataWithContentsOfFile:options:error:
  */
  @objc public static func createWithContentsOfFileOptionsWithError(_ path: String, _ options: NSData.ReadingOptions) -> Self? {
    return try? self.init(contentsOfFile: path, options: options)
  }


  /**
    - Selector: dataWithContentsOfURL:
  */
  @objc public static func createWithContentsOfURL(_ contentsOf: URL) -> Self? {
    return self.init(contentsOf: contentsOf)
  }


  /**
    - Selector: dataWithContentsOfURL:options:error:
  */
  @objc public static func createWithContentsOfURLOptionsWithError(_ url: URL, _ options: NSData.ReadingOptions) -> Self? {
    return try? self.init(contentsOf: url, options: options)
  }


  /**
    - Selector: dataWithData:
  */
  @objc public static func createWithData(_ data: Data) -> Self {
    return self.init(data: data)
  }

}
