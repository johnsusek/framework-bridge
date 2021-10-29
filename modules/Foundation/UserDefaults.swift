import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UserDefaults
    - name: NSUserDefaults
    - argLabels: 
  */

@objc(UserDefaults) protocol UserDefaultsExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: resetStandardUserDefaults
    - name: resetStandardUserDefaults
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func resetStandardUserDefaults()

  // Own Static Properties

  /**
    - jsName: standard
    - name: standardUserDefaults
    - argLabels: 
    - obsoleted: 3
    - renamed: standard
  */
  @objc static var standard: UserDefaults { @objc (standardUserDefaults) get }

  // Instance Methods

  /**
    - jsName: url
    - name: URLForKey:
    - argLabels: forKey
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: url(forKey:)
    - Introduced: 10.6
  */
  @objc (URLForKey:) @available(OSX 10.6, *) func url(forKey: String) -> URL?

  /**
    - jsName: addSuite
    - name: addSuiteNamed:
    - argLabels: named
    - constructorTokens: 
    - obsoleted: 3
    - renamed: addSuite(named:)
  */
  @objc (addSuiteNamed:) func addSuite(named: String)

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
    - jsName: dictionaryRepresentation
    - name: dictionaryRepresentation
    - argLabels: 
    - constructorTokens: 
  */
  @objc func dictionaryRepresentation() -> [String: Any]

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
    - jsName: float
    - name: floatForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: float(forKey:)
  */
  @objc (floatForKey:) func float(forKey: String) -> Float

  /**
    - jsName: createWithSuiteName
    - name: initWithSuiteName:
    - argLabels: 
    - constructorTokens: suiteName
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithSuiteName(_: String?) -> Self?

  /**
    - jsName: integer
    - name: integerForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: integer(forKey:)
  */
  @objc (integerForKey:) func integer(forKey: String) -> Int

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
    - jsName: objectIsForced
    - name: objectIsForcedForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: objectIsForced(forKey:)
  */
  @objc (objectIsForcedForKey:) func objectIsForced(forKey: String) -> Bool

  /**
    - jsName: objectIsForced
    - name: objectIsForcedForKey:inDomain:
    - argLabels: forKey, inDomain
    - constructorTokens: 
    - obsoleted: 3
    - renamed: objectIsForced(forKey:inDomain:)
  */
  @objc (objectIsForcedForKey:inDomain:) func objectIsForced(forKey: String, inDomain: String) -> Bool

  /**
    - jsName: persistentDomain
    - name: persistentDomainForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: persistentDomain(forName:)
  */
  @objc (persistentDomainForName:) func persistentDomain(forName: String) -> [String: Any]?

  /**
    - jsName: register
    - name: registerDefaults:
    - argLabels: defaults
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(defaults:)
  */
  @objc (registerDefaults:) func register(defaults: [String: Any])

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
    - jsName: removePersistentDomain
    - name: removePersistentDomainForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removePersistentDomain(forName:)
  */
  @objc (removePersistentDomainForName:) func removePersistentDomain(forName: String)

  /**
    - jsName: removeSuite
    - name: removeSuiteNamed:
    - argLabels: named
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeSuite(named:)
  */
  @objc (removeSuiteNamed:) func removeSuite(named: String)

  /**
    - jsName: removeVolatileDomain
    - name: removeVolatileDomainForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeVolatileDomain(forName:)
  */
  @objc (removeVolatileDomainForName:) func removeVolatileDomain(forName: String)

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
    - name: setDouble:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setDouble:forKey:) func set(_: Double, forKey: String)

  /**
    - jsName: set
    - name: setFloat:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setFloat:forKey:) func set(_: Float, forKey: String)

  /**
    - jsName: set
    - name: setInteger:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: set(_:forKey:)
  */
  @objc (setInteger:forKey:) func set(_: Int, forKey: String)

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
    - jsName: setPersistentDomain
    - name: setPersistentDomain:forName:
    - argLabels: forName
    - constructorTokens: 
  */
  @objc func setPersistentDomain(_: [String: Any], forName: String)

  /**
    - jsName: set
    - name: setURL:forKey:
    - argLabels: _, forKey
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: set(_:forKey:)
    - Introduced: 10.6
  */
  @objc (setURL:forKey:) @available(OSX 10.6, *) func set(_: URL?, forKey: String)

  /**
    - jsName: setVolatileDomain
    - name: setVolatileDomain:forName:
    - argLabels: forName
    - constructorTokens: 
  */
  @objc func setVolatileDomain(_: [String: Any], forName: String)

  /**
    - jsName: stringArray
    - name: stringArrayForKey:
    - argLabels: forKey
    - constructorTokens: 
    - obsoleted: 3
    - renamed: stringArray(forKey:)
  */
  @objc (stringArrayForKey:) func stringArray(forKey: String) -> [String]?

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

  /**
    - jsName: volatileDomain
    - name: volatileDomainForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: volatileDomain(forName:)
  */
  @objc (volatileDomainForName:) func volatileDomain(forName: String) -> [String: Any]

  // Own Instance Properties

  /**
    - jsName: volatileDomainNames
    - name: volatileDomainNames
    - argLabels: 
  */
  @objc var volatileDomainNames: [String] { @objc get }
}

extension UserDefaults: UserDefaultsExports {
  @objc public static func createWithSuiteName(_ suiteName: String?) -> Self? {
    return self.init(suiteName: suiteName)
  }

}
