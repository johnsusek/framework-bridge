import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTokenField
    - name: NSTokenField
    - argLabels: 
  */

@objc(NSTokenField) protocol NSTokenFieldExports: JSExport, NSTextFieldExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: defaultCompletionDelay
    - name: defaultCompletionDelay
    - argLabels: 
  */
  @objc static var defaultCompletionDelay: TimeInterval { @objc get }

  /**
    - jsName: defaultTokenizingCharacterSet
    - name: defaultTokenizingCharacterSet
    - argLabels: 
  */
  @objc static var defaultTokenizingCharacterSet: CharacterSet { @objc get }

  // Own Instance Properties

  /**
    - jsName: completionDelay
    - name: completionDelay
    - argLabels: 
  */
  @objc var completionDelay: TimeInterval { @objc get @objc (setCompletionDelay:) set }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: NSTokenFieldDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: tokenStyle
    - name: tokenStyle
    - argLabels: 
  */
  @objc var tokenStyle: NSTokenField.TokenStyle { @objc get @objc (setTokenStyle:) set }

  /**
    - jsName: tokenizingCharacterSet
    - name: tokenizingCharacterSet
    - argLabels: 
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
