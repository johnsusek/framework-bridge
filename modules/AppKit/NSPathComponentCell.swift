import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSPathComponentCell
    - Introduced: 10.5
  */

@objc(NSPathComponentCell) protocol NSPathComponentCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: URL
  */
  @objc var url: URL? { @objc (URL) get @objc (setURL:) set }
}

extension NSPathComponentCell: NSPathComponentCellExports {
}
