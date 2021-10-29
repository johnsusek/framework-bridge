import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSBindingSelectionMarker
    - name: NSBindingSelectionMarker
    - argLabels: 
    - Introduced: 10.14
  */

@objc(NSBindingSelectionMarker) protocol NSBindingSelectionMarkerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: defaultPlaceholder
    - name: defaultPlaceholderForMarker:onClass:withBinding:
    - argLabels: for, on, withBinding
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: defaultPlaceholder(for:on:withBinding:)
    - Introduced: 10.15
  */
  @objc (defaultPlaceholderForMarker:onClass:withBinding:) @available(OSX 10.15, *) static func defaultPlaceholder(`for`: NSBindingSelectionMarker?, on: AnyClass, withBinding: NSBindingName) -> Any?

  /**
    - jsName: setDefaultPlaceholder
    - name: setDefaultPlaceholder:forMarker:onClass:withBinding:
    - argLabels: _, for, on, withBinding
    - constructorTokens: 
    - available: 10.15
    - obsoleted: 3
    - renamed: setDefaultPlaceholder(_:for:on:withBinding:)
    - Introduced: 10.15
  */
  @objc (setDefaultPlaceholder:forMarker:onClass:withBinding:) @available(OSX 10.15, *) static func setDefaultPlaceholder(_: Any?, `for`: NSBindingSelectionMarker?, on: AnyClass, withBinding: NSBindingName)

  // Own Static Properties

  /**
    - jsName: multipleValues
    - name: multipleValuesSelectionMarker
    - argLabels: 
    - available: 10.14
    - obsoleted: 3
    - renamed: multipleValues
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var multipleValues: NSBindingSelectionMarker { @objc (multipleValuesSelectionMarker) get }

  /**
    - jsName: noSelection
    - name: noSelectionMarker
    - argLabels: 
    - available: 10.14
    - obsoleted: 3
    - renamed: noSelection
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var noSelection: NSBindingSelectionMarker { @objc (noSelectionMarker) get }

  /**
    - jsName: notApplicable
    - name: notApplicableSelectionMarker
    - argLabels: 
    - available: 10.14
    - obsoleted: 3
    - renamed: notApplicable
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var notApplicable: NSBindingSelectionMarker { @objc (notApplicableSelectionMarker) get }
}

extension NSBindingSelectionMarker: NSBindingSelectionMarkerExports {
}
