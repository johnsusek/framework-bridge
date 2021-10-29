import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorSampler
    - name: NSColorSampler
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSColorSampler) protocol NSColorSamplerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: show
    - name: showSamplerWithSelectionHandler:
    - argLabels: selectionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: show(selectionHandler:)
  */
  // jsvalue - @objc (showSamplerWithSelectionHandler:) func show(selectionHandler: JSValue)
}

extension NSColorSampler: NSColorSamplerExports {
}
