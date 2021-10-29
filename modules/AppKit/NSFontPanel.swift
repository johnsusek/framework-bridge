import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSFontPanel
    - name: NSFontPanel
    - argLabels: 
  */

@objc(NSFontPanel) protocol NSFontPanelExports: JSExport, NSPanelExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedFontPanel
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSFontPanel { @objc (sharedFontPanel) get }

  /**
    - jsName: sharedFontPanelExists
    - name: sharedFontPanelExists
    - argLabels: 
  */
  @objc static var sharedFontPanelExists: Bool { @objc get }

  // Instance Methods

  /**
    - jsName: convert
    - name: panelConvertFont:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: convert(_:)
  */
  @objc (panelConvertFont:) func convert(_: NSFont) -> NSFont

  /**
    - jsName: reloadDefaultFontFamilies
    - name: reloadDefaultFontFamilies
    - argLabels: 
    - constructorTokens: 
  */
  @objc func reloadDefaultFontFamilies()

  /**
    - jsName: setPanelFont
    - name: setPanelFont:isMultiple:
    - argLabels: isMultiple
    - constructorTokens: 
  */
  @objc func setPanelFont(_: NSFont, isMultiple: Bool)

  // Own Instance Properties

  /**
    - jsName: accessoryView
    - name: accessoryView
    - argLabels: 
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - jsName: isEnabled
    - name: enabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isEnabled
  */
  @objc var isEnabled: Bool { @objc get @objc (setEnabled:) set }
}

extension NSFontPanel: NSFontPanelExports {
}
