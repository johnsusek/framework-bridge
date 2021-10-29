import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSNib
    - name: NSNib
    - argLabels: 
  */

@objc(NSNib) protocol NSNibExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithNibData
    - name: initWithNibData:bundle:
    - argLabels: bundle
    - constructorTokens: nibData, bundle
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static func createWithNibData(_: Data, bundle: Bundle?) -> Self

  /**
    - jsName: createWithNibNamed
    - name: initWithNibNamed:bundle:
    - argLabels: bundle
    - constructorTokens: nibNamed, bundle
  */
  @objc static func createWithNibNamed(_: NSNib.Name, bundle: Bundle?) -> Self?

  /**
    - jsName: instantiate
    - name: instantiateWithOwner:topLevelObjects:
    - argLabels: withOwner, topLevelObjects
    - constructorTokens: 
    - available: 10.8
    - obsoleted: 3
    - renamed: instantiate(withOwner:topLevelObjects:)
    - Introduced: 10.8
  */
  @objc (instantiateWithOwner:topLevelObjects:) @available(OSX 10.8, *) func instantiate(withOwner: Any?, topLevelObjects: AutoreleasingUnsafeMutablePointer<NSArray?>?) -> Bool
}

extension NSNib: NSNibExports {
  @objc public static func createWithNibData(_ nibData: Data, bundle: Bundle?) -> Self {
    return self.init(nibData: nibData, bundle: bundle)
  }

  @objc public static func createWithNibNamed(_ nibNamed: NSNib.Name, bundle: Bundle?) -> Self? {
    return self.init(nibNamed: nibNamed, bundle: bundle)
  }

}
