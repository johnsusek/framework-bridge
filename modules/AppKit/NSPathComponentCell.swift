import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPathComponentCell
    - name: NSPathComponentCell
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSPathComponentCell) protocol NSPathComponentCellExports: JSExport, NSTextFieldCellExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: url
    - name: URL
    - argLabels: 
    - obsoleted: 3
    - renamed: url
  */
  @objc var url: URL? { @objc (URL) get @objc (setURL:) set }
}

extension NSPathComponentCell: NSPathComponentCellExports {
}
