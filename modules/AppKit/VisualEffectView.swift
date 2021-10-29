import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSVisualEffectView
    - name: NSVisualEffectView
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSVisualEffectView) protocol NSVisualEffectViewExports: JSExport, NSViewExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: blendingMode
    - name: blendingMode
    - argLabels: 
  */
  @objc var blendingMode: NSVisualEffectView.BlendingMode { @objc get @objc (setBlendingMode:) set }

  /**
    - jsName: isEmphasized
    - name: emphasized
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: isEmphasized
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isEmphasized: Bool { @objc get @objc (setEmphasized:) set }

  /**
    - jsName: interiorBackgroundStyle
    - name: interiorBackgroundStyle
    - argLabels: 
  */
  @objc var interiorBackgroundStyle: NSView.BackgroundStyle { @objc get }

  /**
    - jsName: maskImage
    - name: maskImage
    - argLabels: 
  */
  @objc var maskImage: NSImage? { @objc get @objc (setMaskImage:) set }

  /**
    - jsName: material
    - name: material
    - argLabels: 
  */
  @objc var material: NSVisualEffectView.Material { @objc get @objc (setMaterial:) set }

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: NSVisualEffectView.State { @objc get @objc (setState:) set }
}

@objc protocol VisualEffectViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(VisualEffectView) public class VisualEffectView: NSVisualEffectView, VisualEffectViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSVisualEffectView: NSVisualEffectViewExports {
}
