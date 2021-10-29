import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStatusBarButton
    - name: NSStatusBarButton
    - argLabels: 
    - Introduced: 10.10
  */

@objc(NSStatusBarButton) protocol NSStatusBarButtonExports: JSExport, NSButtonExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: appearsDisabled
    - name: appearsDisabled
    - argLabels: 
  */
  @objc var appearsDisabled: Bool { @objc get @objc (setAppearsDisabled:) set }
}

@objc protocol StatusBarButtonExports: JSExport, NSButtonExports {
  // Static Methods
}

@objc(StatusBarButton) public class StatusBarButton: NSStatusBarButton, StatusBarButtonExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSStatusBarButton: NSStatusBarButtonExports {
}
