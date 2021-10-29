import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorPicker
    - name: NSColorPicker
    - argLabels: 
  */

@objc(NSColorPicker) protocol NSColorPickerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: buttonToolTip
    - name: buttonToolTip
    - argLabels: 
    - available: 10.5
  */
  @objc var buttonToolTip: String { @objc get }

  /**
    - jsName: colorPanel
    - name: colorPanel
    - argLabels: 
  */
  @objc var colorPanel: NSColorPanel { @objc get }

  /**
    - jsName: minContentSize
    - name: minContentSize
    - argLabels: 
    - available: 10.5
  */
  @objc var minContentSize: CGSize { @objc get }

  /**
    - jsName: provideNewButtonImage
    - name: provideNewButtonImage
    - argLabels: 
  */
  @objc var provideNewButtonImage: NSImage { @objc get }
}

extension NSColorPicker: NSColorPickerExports {
}
