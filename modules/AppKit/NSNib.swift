import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSNib
  */

@objc(NSNib) protocol NSNibExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: initWithNibData:bundle:
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static func createWithNibData(_: Data, bundle: Bundle?) -> Self

  /**
    - Selector: initWithNibNamed:bundle:
  */
  @objc static func createWithNibNamed(_: NSNib.Name, bundle: Bundle?) -> Self?

  /**
    - Selector: instantiateWithOwner:topLevelObjects:
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
