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
    - Selector: NSPDFPanel
    - Introduced: 10.9
  */

@objc(NSPDFPanel) protocol NSPDFPanelExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: beginSheetWithPDFInfo:modalForWindow:completionHandler:
  */
  // jsvalue @objc func beginSheetWithPDFInfoWithModalForWindowWithCompletionHandler(_ with: NSPDFInfo, _ modalFor: NSWindow?, _ completionHandler: JSValue)

  // Own Instance Properties

  /**
    - Selector: accessoryController
  */
  @objc var accessoryController: NSViewController? { @objc get @objc (setAccessoryController:) set }

  /**
    - Selector: defaultFileName
  */
  @objc var defaultFileName: String { @objc get @objc (setDefaultFileName:) set }

  /**
    - Selector: options
  */
  @objc var options: NSPDFPanel.Options { @objc get @objc (setOptions:) set }
}

extension NSPDFPanel: NSPDFPanelExports {
}
