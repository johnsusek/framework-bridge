import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDictionaryControllerKeyValuePair
    - name: NSDictionaryControllerKeyValuePair
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSDictionaryControllerKeyValuePair) protocol NSDictionaryControllerKeyValuePairExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: isExplicitlyIncluded
    - name: explicitlyIncluded
    - argLabels: 
    - obsoleted: 3
    - renamed: isExplicitlyIncluded
  */
  @objc var isExplicitlyIncluded: Bool { @objc get }

  /**
    - jsName: key
    - name: key
    - argLabels: 
  */
  @objc var key: String? { @objc get @objc (setKey:) set }

  /**
    - jsName: localizedKey
    - name: localizedKey
    - argLabels: 
  */
  @objc var localizedKey: String? { @objc get @objc (setLocalizedKey:) set }

  /**
    - jsName: value
    - name: value
    - argLabels: 
  */
  @objc var value: Any? { @objc get @objc (setValue:) set }
}

extension NSDictionaryControllerKeyValuePair: NSDictionaryControllerKeyValuePairExports {
}
