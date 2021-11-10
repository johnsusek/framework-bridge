import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSColorPicker
  */

@objc(NSColorPicker) protocol NSColorPickerExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: buttonToolTip
  */
  @objc var buttonToolTip: String { @objc get }

  /**
    - Selector: colorPanel
  */
  @objc var colorPanel: NSColorPanel { @objc get }

  /**
    - Selector: minContentSize
  */
  @objc var minContentSize: CGSize { @objc get }

  /**
    - Selector: provideNewButtonImage
  */
  @objc var provideNewButtonImage: NSImage { @objc get }
}

extension NSColorPicker: NSColorPickerExports {
}
