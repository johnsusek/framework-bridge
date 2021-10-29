import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextList
    - name: NSTextList
    - argLabels: 
  */

@objc(NSTextList) protocol NSTextListExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithMarkerFormat
    - name: initWithMarkerFormat:options:
    - argLabels: options
    - constructorTokens: markerFormat, options
  */
  @objc static func createWithMarkerFormat(_: NSTextList.MarkerFormat, options: Int) -> Self

  /**
    - jsName: marker
    - name: markerForItemNumber:
    - argLabels: forItemNumber
    - constructorTokens: 
    - obsoleted: 3
    - renamed: marker(forItemNumber:)
  */
  @objc (markerForItemNumber:) func marker(forItemNumber: Int) -> String

  // Own Instance Properties

  /**
    - jsName: listOptions
    - name: listOptions
    - argLabels: 
  */
  @objc var listOptions: NSTextList.Options { @objc get }

  /**
    - jsName: markerFormat
    - name: markerFormat
    - argLabels: 
  */
  @objc var markerFormat: NSTextList.MarkerFormat { @objc get }

  /**
    - jsName: startingItemNumber
    - name: startingItemNumber
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var startingItemNumber: Int { @objc get @objc (setStartingItemNumber:) set }
}

extension NSTextList: NSTextListExports {
  @objc public static func createWithMarkerFormat(_ markerFormat: NSTextList.MarkerFormat, options: Int) -> Self {
    return self.init(markerFormat: markerFormat, options: options)
  }

}
