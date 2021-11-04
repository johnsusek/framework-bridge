import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUserDefaults
  */

@objc(UserDefaults) protocol UserDefaultsExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: resetStandardUserDefaults
  */
  @objc static func resetStandardUserDefaults()

  // Own Static Properties

  /**
    - Selector: standardUserDefaults
  */
  @objc static var standard: UserDefaults { @objc (standardUserDefaults) get }

  // Instance Methods

  /**
    - Selector: URLForKey:
    - Introduced: 10.6
  */
  @objc (URLForKey:) @available(OSX 10.6, *) func url(forKey: String) -> URL?

  /**
    - Selector: addSuiteNamed:
  */
  @objc (addSuiteNamed:) func addSuite(named: String)

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
    - Selector: dictionaryRepresentation
  */
  @objc func dictionaryRepresentation() -> [String: Any]

  /**
    - Selector: doubleForKey:
  */
  @objc (doubleForKey:) func double(forKey: String) -> Double

  /**
    - Selector: floatForKey:
  */
  @objc (floatForKey:) func float(forKey: String) -> Float

  /**
    - Selector: initWithSuiteName:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithSuiteName(_: String?) -> Self?

  /**
    - Selector: integerForKey:
  */
  @objc (integerForKey:) func integer(forKey: String) -> Int

  /**
    - Selector: objectForKey:
  */
  @objc (objectForKey:) func object(forKey: String) -> Any?

  /**
    - Selector: objectIsForcedForKey:
  */
  @objc (objectIsForcedForKey:) func objectIsForced(forKey: String) -> Bool

  /**
    - Selector: objectIsForcedForKey:inDomain:
  */
  @objc (objectIsForcedForKey:inDomain:) func objectIsForced(forKey: String, inDomain: String) -> Bool

  /**
    - Selector: persistentDomainForName:
  */
  @objc (persistentDomainForName:) func persistentDomain(forName: String) -> [String: Any]?

  /**
    - Selector: registerDefaults:
  */
  @objc (registerDefaults:) func register(defaults: [String: Any])

  /**
    - Selector: removeObjectForKey:
  */
  @objc (removeObjectForKey:) func removeObject(forKey: String)

  /**
    - Selector: removePersistentDomainForName:
  */
  @objc (removePersistentDomainForName:) func removePersistentDomain(forName: String)

  /**
    - Selector: removeSuiteNamed:
  */
  @objc (removeSuiteNamed:) func removeSuite(named: String)

  /**
    - Selector: removeVolatileDomainForName:
  */
  @objc (removeVolatileDomainForName:) func removeVolatileDomain(forName: String)

  /**
    - Selector: setBool:forKey:
  */
  @objc (setBool:forKey:) func set(_: Bool, forKey: String)

  /**
    - Selector: setDouble:forKey:
  */
  @objc (setDouble:forKey:) func set(_: Double, forKey: String)

  /**
    - Selector: setFloat:forKey:
  */
  @objc (setFloat:forKey:) func set(_: Float, forKey: String)

  /**
    - Selector: setInteger:forKey:
  */
  @objc (setInteger:forKey:) func set(_: Int, forKey: String)

  /**
    - Selector: setObject:forKey:
  */
  @objc (setObject:forKey:) func set(_: Any?, forKey: String)

  /**
    - Selector: setPersistentDomain:forName:
  */
  @objc func setPersistentDomain(_: [String: Any], forName: String)

  /**
    - Selector: setURL:forKey:
    - Introduced: 10.6
  */
  @objc (setURL:forKey:) @available(OSX 10.6, *) func set(_: URL?, forKey: String)

  /**
    - Selector: setVolatileDomain:forName:
  */
  @objc func setVolatileDomain(_: [String: Any], forName: String)

  /**
    - Selector: stringArrayForKey:
  */
  @objc (stringArrayForKey:) func stringArray(forKey: String) -> [String]?

  /**
    - Selector: stringForKey:
  */
  @objc (stringForKey:) func string(forKey: String) -> String?

  /**
    - Selector: synchronize
  */
  @objc func synchronize() -> Bool

  /**
    - Selector: volatileDomainForName:
  */
  @objc (volatileDomainForName:) func volatileDomain(forName: String) -> [String: Any]

  // Own Instance Properties

  /**
    - Selector: volatileDomainNames
  */
  @objc var volatileDomainNames: [String] { @objc get }
}

extension UserDefaults: UserDefaultsExports {
  @objc public static func createWithSuiteName(_ suiteName: String?) -> Self? {
    return self.init(suiteName: suiteName)
  }

}
