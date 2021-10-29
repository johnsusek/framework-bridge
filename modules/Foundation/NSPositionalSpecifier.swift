import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSPositionalSpecifier
    - name: NSPositionalSpecifier
    - argLabels: 
  */

@objc(NSPositionalSpecifier) protocol NSPositionalSpecifierExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: evaluate
    - name: evaluate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func evaluate()

  /**
    - jsName: createWithPosition
    - name: initWithPosition:objectSpecifier:
    - argLabels: objectSpecifier
    - constructorTokens: position, objectSpecifier
  */
  @objc static func createWithPosition(_: NSPositionalSpecifier.InsertionPosition, objectSpecifier: NSScriptObjectSpecifier) -> Self

  /**
    - jsName: setInsertionClassDescription
    - name: setInsertionClassDescription:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setInsertionClassDescription(_: NSScriptClassDescription)

  // Own Instance Properties

  /**
    - jsName: insertionContainer
    - name: insertionContainer
    - argLabels: 
  */
  @objc var insertionContainer: Any? { @objc get }

  /**
    - jsName: insertionIndex
    - name: insertionIndex
    - argLabels: 
  */
  @objc var insertionIndex: Int { @objc get }

  /**
    - jsName: insertionKey
    - name: insertionKey
    - argLabels: 
  */
  @objc var insertionKey: String? { @objc get }

  /**
    - jsName: insertionReplaces
    - name: insertionReplaces
    - argLabels: 
  */
  @objc var insertionReplaces: Bool { @objc get }

  /**
    - jsName: position
    - name: position
    - argLabels: 
    - available: 10.5
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var position: NSPositionalSpecifier.InsertionPosition { @objc get }
}

extension NSPositionalSpecifier: NSPositionalSpecifierExports {
  @objc public static func createWithPosition(_ position: NSPositionalSpecifier.InsertionPosition, objectSpecifier: NSScriptObjectSpecifier) -> Self {
    return self.init(position: position, objectSpecifier: objectSpecifier)
  }

}
