import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTokenField
  */

@objc(NSTokenField) protocol NSTokenFieldExports: JSExport, NSTextFieldExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Static Properties

  /**
    - Selector: defaultCompletionDelay
  */
  @objc static var defaultCompletionDelay: TimeInterval { @objc get }

  /**
    - Selector: defaultTokenizingCharacterSet
  */
  @objc static var defaultTokenizingCharacterSet: CharacterSet { @objc get }

  // Own Instance Properties

  /**
    - Selector: completionDelay
  */
  @objc var completionDelay: TimeInterval { @objc get @objc (setCompletionDelay:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: NSTokenFieldDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: tokenStyle
  */
  @objc var tokenStyle: NSTokenField.TokenStyle { @objc get @objc (setTokenStyle:) set }

  /**
    - Selector: tokenizingCharacterSet
  */
  @objc var tokenizingCharacterSet: CharacterSet! { @objc get @objc (setTokenizingCharacterSet:) set }
}

@objc protocol TokenFieldExports: JSExport, NSTextFieldExports {
  // Static Methods
}

@objc(TokenField) public class TokenField: NSTokenField, TokenFieldExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSTokenField: NSTokenFieldExports {
}
