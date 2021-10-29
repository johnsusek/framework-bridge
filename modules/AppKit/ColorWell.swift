import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColorWell
    - name: NSColorWell
    - argLabels: 
  */

@objc(NSColorWell) protocol NSColorWellExports: JSExport, NSControlExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: activate
    - name: activate:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func activate(_: Bool)

  /**
    - jsName: deactivate
    - name: deactivate
    - argLabels: 
    - constructorTokens: 
  */
  @objc func deactivate()

  /**
    - jsName: drawWell
    - name: drawWellInside:
    - argLabels: inside
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawWell(inside:)
  */
  @objc (drawWellInside:) func drawWell(inside: CGRect)

  /**
    - jsName: takeColorFrom
    - name: takeColorFrom:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func takeColorFrom(_: Any?)

  // Own Instance Properties

  /**
    - jsName: isActive
    - name: active
    - argLabels: 
    - obsoleted: 3
    - renamed: isActive
  */
  @objc var isActive: Bool { @objc get }

  /**
    - jsName: isBordered
    - name: bordered
    - argLabels: 
    - obsoleted: 3
    - renamed: isBordered
  */
  @objc var isBordered: Bool { @objc get @objc (setBordered:) set }

  /**
    - jsName: color
    - name: color
    - argLabels: 
  */
  @objc var color: NSColor { @objc get @objc (setColor:) set }
}

@objc protocol ColorWellExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(ColorWell) public class ColorWell: NSColorWell, ColorWellExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSColorWell: NSColorWellExports {
}
