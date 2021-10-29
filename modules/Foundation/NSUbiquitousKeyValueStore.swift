import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUbiquitousKeyValueStore
    - name: NSUbiquitousKeyValueStore
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSUbiquitousKeyValueStore) protocol NSUbiquitousKeyValueStoreExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: default
    - name: defaultStore
    - argLabels: 
    - obsoleted: 3
    - renamed: default
  */
  @objc static var `default`: NSUbiquitousKeyValueStore { @objc (defaultStore) get }

  // Instance Methods

  /**
    - jsName: array
    - name: arrayForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: array(forKey:)
  */
  @objc (arrayForKey:) func array(forKey: String) -> [Any]?

  /**
    - jsName: bool
    - name: boolForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: bool(forKey:)
  */
  @objc (boolForKey:) func bool(forKey: String) -> Bool

  /**
    - jsName: data
    - name: dataForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: data(forKey:)
  */
  @objc (dataForKey:) func data(forKey: String) -> Data?

  /**
    - jsName: dictionary
    - name: dictionaryForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dictionary(forKey:)
  */
  @objc (dictionaryForKey:) func dictionary(forKey: String) -> [String: Any]?

  /**
    - jsName: double
    - name: doubleForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: double(forKey:)
  */
  @objc (doubleForKey:) func double(forKey: String) -> Double

  /**
    - jsName: longLong
    - name: longLongForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: longLong(forKey:)
  */
  @objc (longLongForKey:) func longLong(forKey: String) -> Int64

  /**
    - jsName: object
    - name: objectForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: object(forKey:)
  */
  @objc (objectForKey:) func object(forKey: String) -> Any?

  /**
    - jsName: removeObject
    - name: removeObjectForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeObject(forKey:)
  */
  @objc (removeObjectForKey:) func removeObject(forKey: String)

  /**
    - jsName: set
    - name: setArray:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setArray:forKey:) func set(_: [Any]?, forKey: String)

  /**
    - jsName: set
    - name: setBool:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setBool:forKey:) func set(_: Bool, forKey: String)

  /**
    - jsName: set
    - name: setData:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setData:forKey:) func set(_: Data?, forKey: String)

  /**
    - jsName: set
    - name: setDictionary:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setDictionary:forKey:) func set(_: [String: Any]?, forKey: String)

  /**
    - jsName: set
    - name: setDouble:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setDouble:forKey:) func set(_: Double, forKey: String)

  /**
    - jsName: set
    - name: setLongLong:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setLongLong:forKey:) func set(_: Int64, forKey: String)

  /**
    - jsName: set
    - name: setObject:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setObject:forKey:) func set(_: Any?, forKey: String)

  /**
    - jsName: set
    - name: setString:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setString:forKey:) func set(_: String?, forKey: String)

  /**
    - jsName: string
    - name: stringForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: string(forKey:)
  */
  @objc (stringForKey:) func string(forKey: String) -> String?

  /**
    - jsName: synchronize
    - name: synchronize
    - argLabels: 
    - constructorTokens: 
  */
  @objc func synchronize() -> Bool

  // Own Instance Properties

  /**
    - jsName: dictionaryRepresentation
    - name: dictionaryRepresentation
    - argLabels: 
  */
  @objc var dictionaryRepresentation: [String: Any] { @objc get }
}

extension NSUbiquitousKeyValueStore: NSUbiquitousKeyValueStoreExports {
}
