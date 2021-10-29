import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSUserScriptTask
    - name: NSUserScriptTask
    - argLabels: 
    - Introduced: 10.8
  */

@objc(NSUserScriptTask) protocol NSUserScriptTaskExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: execute
    - name: executeWithCompletionHandler:
    - argLabels: completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: execute(completionHandler:)
  */
  // jsvalue - @objc (executeWithCompletionHandler:) func execute(completionHandler: JSValue?)

  /**
    - jsName: createWithURL
    - name: initWithURL:error:
    - argLabels: error
    - constructorTokens: url
  */
  @objc static func createWithURL(url: URL) -> Self?

  // Own Instance Properties

  /**
    - jsName: scriptURL
    - name: scriptURL
    - argLabels: 
  */
  @objc var scriptURL: URL { @objc get }
}

extension NSUserScriptTask: NSUserScriptTaskExports {
  @objc public static func createWithURL(url: URL) -> Self? {
    return try? self.init(url: url)
  }

}
