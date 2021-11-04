import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSSwitch
    - Introduced: 10.15
  */

@objc(NSSwitch) protocol NSSwitchExports: JSExport, NSControlExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: state
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
