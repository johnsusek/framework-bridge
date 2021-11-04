import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSAppleScript
  */

@objc(NSAppleScript) protocol NSAppleScriptExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: compileAndReturnError:
  */
  @objc func compileAndReturnError(_: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool

  /**
    - Selector: executeAndReturnError:
  */
  @objc func executeAndReturnError(_: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> NSAppleEventDescriptor

  /**
    - Selector: executeAppleEvent:error:
  */
  @objc func executeAppleEvent(_: NSAppleEventDescriptor, error: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> NSAppleEventDescriptor

  /**
    - Selector: initWithContentsOfURL:error:
  */
  @objc static func createWithContentsOfURL(_: URL, error: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - Selector: initWithSource:
  */
  @objc static func createWithSource(_: String) -> Self?

  // Own Instance Properties

  /**
    - Selector: compiled
  */
  @objc var isCompiled: Bool { @objc get }

  /**
    - Selector: richTextSource
  */
  @objc var richTextSource: NSAttributedString? { @objc get }

  /**
    - Selector: source
  */
  @objc var source: String? { @objc get }
}

extension NSAppleScript: NSAppleScriptExports {
  @objc public static func createWithContentsOfURL(_ contentsOf: URL, error: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self? {
    return self.init(contentsOf: contentsOf, error: error)
  }

  @objc public static func createWithSource(_ source: String) -> Self? {
    return self.init(source: source)
  }

}
