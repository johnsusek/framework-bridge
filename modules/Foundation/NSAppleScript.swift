import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSAppleScript
    - name: NSAppleScript
    - argLabels: 
  */

@objc(NSAppleScript) protocol NSAppleScriptExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: compileAndReturnError
    - name: compileAndReturnError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func compileAndReturnError(_: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool

  /**
    - jsName: executeAndReturnError
    - name: executeAndReturnError:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func executeAndReturnError(_: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> NSAppleEventDescriptor

  /**
    - jsName: executeAppleEvent
    - name: executeAppleEvent:error:
    - argLabels: error
    - constructorTokens: 
  */
  @objc func executeAppleEvent(_: NSAppleEventDescriptor, error: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> NSAppleEventDescriptor

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:error:
    - argLabels: error
    - constructorTokens: contentsOf, error
  */
  @objc static func createWithContentsOfURL(_: URL, error: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Self?

  /**
    - jsName: createWithSource
    - name: initWithSource:
    - argLabels: 
    - constructorTokens: source
  */
  @objc static func createWithSource(_: String) -> Self?

  // Own Instance Properties

  /**
    - jsName: isCompiled
    - name: compiled
    - argLabels: 
    - obsoleted: 3
    - renamed: isCompiled
  */
  @objc var isCompiled: Bool { @objc get }

  /**
    - jsName: richTextSource
    - name: richTextSource
    - argLabels: 
  */
  @objc var richTextSource: NSAttributedString? { @objc get }

  /**
    - jsName: source
    - name: source
    - argLabels: 
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
