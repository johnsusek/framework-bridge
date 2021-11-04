import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSColorSampler
    - Introduced: 10.15
  */

@objc(NSColorSampler) protocol NSColorSamplerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: showSamplerWithSelectionHandler:
  */
  // jsvalue @objc func show(selectionHandler: JSValue)
}

extension NSColorSampler: NSColorSamplerExports {
}
