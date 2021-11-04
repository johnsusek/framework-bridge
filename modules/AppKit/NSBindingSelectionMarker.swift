import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSBindingSelectionMarker
    - Introduced: 10.14
  */

@objc(NSBindingSelectionMarker) protocol NSBindingSelectionMarkerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: defaultPlaceholderForMarker:onClass:withBinding:
    - Introduced: 10.15
  */
  @objc (defaultPlaceholderForMarker:onClass:withBinding:) @available(OSX 10.15, *) static func defaultPlaceholder(`for`: NSBindingSelectionMarker?, on: AnyClass, withBinding: NSBindingName) -> Any?

  /**
    - Selector: setDefaultPlaceholder:forMarker:onClass:withBinding:
    - Introduced: 10.15
  */
  @objc (setDefaultPlaceholder:forMarker:onClass:withBinding:) @available(OSX 10.15, *) static func setDefaultPlaceholder(_: Any?, `for`: NSBindingSelectionMarker?, on: AnyClass, withBinding: NSBindingName)

  // Own Static Properties

  /**
    - Selector: multipleValuesSelectionMarker
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var multipleValues: NSBindingSelectionMarker { @objc (multipleValuesSelectionMarker) get }

  /**
    - Selector: noSelectionMarker
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var noSelection: NSBindingSelectionMarker { @objc (noSelectionMarker) get }

  /**
    - Selector: notApplicableSelectionMarker
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var notApplicable: NSBindingSelectionMarker { @objc (notApplicableSelectionMarker) get }
}

extension NSBindingSelectionMarker: NSBindingSelectionMarkerExports {
}
