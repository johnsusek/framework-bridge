import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSProgressIndicator
  */

@objc(NSProgressIndicator) protocol NSProgressIndicatorExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: incrementBy:
  */
  @objc (incrementBy:) func increment(by: Double)

  /**
    - Selector: sizeToFit
  */
  @objc func sizeToFit()

  /**
    - Selector: startAnimation:
  */
  @objc func startAnimation(_: Any?)

  /**
    - Selector: stopAnimation:
  */
  @objc func stopAnimation(_: Any?)

  // Own Instance Properties

  /**
    - Selector: bezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - Selector: controlSize
  */
  @objc var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - Selector: controlTint
  */
  @objc var controlTint: NSControlTint { @objc get @objc (setControlTint:) set }

  /**
    - Selector: displayedWhenStopped
  */
  @objc var isDisplayedWhenStopped: Bool { @objc get @objc (setDisplayedWhenStopped:) set }

  /**
    - Selector: doubleValue
  */
  @objc var doubleValue: Double { @objc get @objc (setDoubleValue:) set }

  /**
    - Selector: indeterminate
  */
  @objc var isIndeterminate: Bool { @objc get @objc (setIndeterminate:) set }

  /**
    - Selector: maxValue
  */
  @objc var maxValue: Double { @objc get @objc (setMaxValue:) set }

  /**
    - Selector: minValue
  */
  @objc var minValue: Double { @objc get @objc (setMinValue:) set }

  /**
    - Selector: style
  */
  @objc var style: NSProgressIndicator.Style { @objc get @objc (setStyle:) set }

  /**
    - Selector: usesThreadedAnimation
  */
  @objc var usesThreadedAnimation: Bool { @objc get @objc (setUsesThreadedAnimation:) set }
}

@objc protocol ProgressIndicatorExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(ProgressIndicator) public class ProgressIndicator: NSProgressIndicator, ProgressIndicatorExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSProgressIndicator: NSProgressIndicatorExports {
}
