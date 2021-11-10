import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSDictionaryControllerKeyValuePair
    - Introduced: 10.11
  */

@objc(NSDictionaryControllerKeyValuePair) protocol NSDictionaryControllerKeyValuePairExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: explicitlyIncluded
  */
  @objc var isExplicitlyIncluded: Bool { @objc get }

  /**
    - Selector: key
  */
  @objc var key: String? { @objc get @objc (setKey:) set }

  /**
    - Selector: localizedKey
  */
  @objc var localizedKey: String? { @objc get @objc (setLocalizedKey:) set }

  /**
    - Selector: value
  */
  @objc var value: Any? { @objc get @objc (setValue:) set }
}

extension NSDictionaryControllerKeyValuePair: NSDictionaryControllerKeyValuePairExports {
}
