import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSClassDescription
    - name: NSClassDescription
    - argLabels: 
  */

@objc(NSClassDescription) protocol NSClassDescriptionExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: invalidateClassDescriptionCache
    - name: invalidateClassDescriptionCache
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func invalidateClassDescriptionCache()

  /**
    - jsName: register
    - name: registerClassDescription:forClass:
    - argLabels: _, for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: register(_:for:)
  */
  @objc (registerClassDescription:forClass:) static func register(_: NSClassDescription, `for`: AnyClass)
}

extension NSClassDescription: NSClassDescriptionExports {
}
