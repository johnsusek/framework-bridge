import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUbiquitousKeyValueStore
    - Introduced: 10.7
  */

@objc(NSUbiquitousKeyValueStore) protocol NSUbiquitousKeyValueStoreExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: defaultStore
  */
  @objc static var `default`: NSUbiquitousKeyValueStore { @objc (defaultStore) get }

  // Instance Methods

  /**
    - Selector: arrayForKey:
  */
  @objc (arrayForKey:) func array(forKey: String) -> [Any]?

  /**
    - Selector: boolForKey:
  */
  @objc (boolForKey:) func bool(forKey: String) -> Bool

  /**
    - Selector: dataForKey:
  */
  @objc (dataForKey:) func data(forKey: String) -> Data?

  /**
    - Selector: dictionaryForKey:
  */
  @objc (dictionaryForKey:) func dictionary(forKey: String) -> [String: Any]?

  /**
    - Selector: doubleForKey:
  */
  @objc (doubleForKey:) func double(forKey: String) -> Double

  /**
    - Selector: longLongForKey:
  */
  @objc (longLongForKey:) func longLong(forKey: String) -> Int64

  /**
    - Selector: objectForKey:
  */
  @objc (objectForKey:) func object(forKey: String) -> Any?

  /**
    - Selector: removeObjectForKey:
  */
  @objc (removeObjectForKey:) func removeObject(forKey: String)

  /**
    - Selector: setArray:forKey:
  */
  @objc (setArray:forKey:) func set(_: [Any]?, forKey: String)

  /**
    - Selector: setBool:forKey:
  */
  @objc (setBool:forKey:) func set(_: Bool, forKey: String)

  /**
    - Selector: setData:forKey:
  */
  @objc (setData:forKey:) func set(_: Data?, forKey: String)

  /**
    - Selector: setDictionary:forKey:
  */
  @objc (setDictionary:forKey:) func set(_: [String: Any]?, forKey: String)

  /**
    - Selector: setDouble:forKey:
  */
  @objc (setDouble:forKey:) func set(_: Double, forKey: String)

  /**
    - Selector: setLongLong:forKey:
  */
  @objc (setLongLong:forKey:) func set(_: Int64, forKey: String)

  /**
    - Selector: setObject:forKey:
  */
  @objc (setObject:forKey:) func set(_: Any?, forKey: String)

  /**
    - Selector: setString:forKey:
  */
  @objc (setString:forKey:) func set(_: String?, forKey: String)

  /**
    - Selector: stringForKey:
  */
  @objc (stringForKey:) func string(forKey: String) -> String?

  /**
    - Selector: synchronize
  */
  @objc func synchronize() -> Bool

  // Own Instance Properties

  /**
    - Selector: dictionaryRepresentation
  */
  @objc var dictionaryRepresentation: [String: Any] { @objc get }
}

extension NSUbiquitousKeyValueStore: NSUbiquitousKeyValueStoreExports {
}
