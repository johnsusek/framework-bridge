import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPDFPanel
    - name: NSPDFPanel
    - argLabels: 
    - Introduced: 10.9
  */

@objc(NSPDFPanel) protocol NSPDFPanelExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: beginSheet
    - name: beginSheetWithPDFInfo:modalForWindow:completionHandler:
    - argLabels: with, modalFor, completionHandler
    - constructorTokens: 
    - obsoleted: 3
    - renamed: beginSheet(with:modalFor:completionHandler:)
  */
  // jsvalue - @objc (beginSheetWithPDFInfo:modalForWindow:completionHandler:) func beginSheet(with: NSPDFInfo, modalFor: NSWindow?, completionHandler: JSValue)

  // Own Instance Properties

  /**
    - jsName: accessoryController
    - name: accessoryController
    - argLabels: 
  */
  @objc var accessoryController: NSViewController? { @objc get @objc (setAccessoryController:) set }

  /**
    - jsName: defaultFileName
    - name: defaultFileName
    - argLabels: 
  */
  @objc var defaultFileName: String { @objc get @objc (setDefaultFileName:) set }

  /**
    - jsName: options
    - name: options
    - argLabels: 
  */
  @objc var options: NSPDFPanel.Options { @objc get @objc (setOptions:) set }
}

extension NSPDFPanel: NSPDFPanelExports {
}
