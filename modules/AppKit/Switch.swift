import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSSwitch
    - name: NSSwitch
    - argLabels: 
    - Introduced: 10.15
  */

@objc(NSSwitch) protocol NSSwitchExports: JSExport, NSControlExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: state
    - name: state
    - argLabels: 
  */
  @objc var state: NSControl.StateValue { @objc get @objc (setState:) set }
}

@objc protocol SwitchExports: JSExport, NSControlExports {
  // Static Methods
}

@objc(Switch) public class Switch: NSSwitch, SwitchExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSSwitch: NSSwitchExports {
}
