import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSPositionalSpecifier
  */

@objc(NSPositionalSpecifier) protocol NSPositionalSpecifierExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: evaluate
  */
  @objc func evaluate()

  /**
    - Selector: setInsertionClassDescription:
  */
  @objc func setInsertionClassDescription(_ p0: NSScriptClassDescription)

  // Own Instance Properties

  /**
    - Selector: insertionContainer
  */
  @objc var insertionContainer: Any? { @objc get }

  /**
    - Selector: insertionIndex
  */
  @objc var insertionIndex: Int { @objc get }

  /**
    - Selector: insertionKey
  */
  @objc var insertionKey: String? { @objc get }

  /**
    - Selector: insertionReplaces
  */
  @objc var insertionReplaces: Bool { @objc get }

  /**
    - Selector: position
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var position: NSPositionalSpecifier.InsertionPosition { @objc get }
}

extension NSPositionalSpecifier: NSPositionalSpecifierExports {
}
