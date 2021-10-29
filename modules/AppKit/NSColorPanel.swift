import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorPanel
    - name: NSColorPanel
    - argLabels: 
  */

@objc(NSColorPanel) protocol NSColorPanelExports: JSExport, NSPanelExports {
  // Static Methods

  /**
    - jsName: dragColor
    - name: dragColor:withEvent:fromView:
    - argLabels: _, with, from
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dragColor(_:with:from:)
  */
  @objc (dragColor:withEvent:fromView:) static func dragColor(_: NSColor, with: NSEvent, from: NSView) -> Bool

  /**
    - jsName: setPickerMask
    - name: setPickerMask:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func setPickerMask(_: NSColorPanel.Options)

  /**
    - jsName: setPickerMode
    - name: setPickerMode:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func setPickerMode(_: NSColorPanel.Mode)

  // Own Static Properties

  /**
    - jsName: shared
    - name: sharedColorPanel
    - argLabels: 
    - obsoleted: 3
    - renamed: shared
  */
  @objc static var shared: NSColorPanel { @objc (sharedColorPanel) get }

  /**
    - jsName: sharedColorPanelExists
    - name: sharedColorPanelExists
    - argLabels: 
  */
  @objc static var sharedColorPanelExists: Bool { @objc get }

  // Instance Methods

  /**
    - jsName: attachColorList
    - name: attachColorList:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (attachColorList:) func attachColorList(_: NSColorList)

  /**
    - jsName: detachColorList
    - name: detachColorList:
    - argLabels: _
    - constructorTokens: 
  */
  @objc (detachColorList:) func detachColorList(_: NSColorList)

  /**
    - jsName: setAction
    - name: setAction:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setAction(_: Selector?)

  /**
    - jsName: setTarget
    - name: setTarget:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setTarget(_: Any?)

  // Own Instance Properties

  /**
    - jsName: accessoryView
    - name: accessoryView
    - argLabels: 
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - jsName: alpha
    - name: alpha
    - argLabels: 
  */
  @objc var alpha: CGFloat { @objc get }

  /**
    - jsName: color
    - name: color
    - argLabels: 
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }

  /**
    - jsName: isContinuous
    - name: continuous
    - argLabels: 
    - obsoleted: 3
    - renamed: isContinuous
  */
  @objc var isContinuous: Bool { @objc get @objc (setContinuous:) set }

  /**
    - jsName: mode
    - name: mode
    - argLabels: 
  */
  @objc var mode: NSColorPanel.Mode { @objc get @objc (setMode:) set }

  /**
    - jsName: showsAlpha
    - name: showsAlpha
    - argLabels: 
  */
  @objc var showsAlpha: Bool { @objc get @objc (setShowsAlpha:) set }
}

extension NSColorPanel: NSColorPanelExports {
}
