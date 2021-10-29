import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSProgressIndicator
    - name: NSProgressIndicator
    - argLabels: 
  */

@objc(NSProgressIndicator) protocol NSProgressIndicatorExports: JSExport, NSViewExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: increment
    - name: incrementBy:
    - argLabels: by
    - constructorTokens: 
    - obsoleted: 3
    - renamed: increment(by:)
  */
  @objc (incrementBy:) func increment(by: Double)

  /**
    - jsName: sizeToFit
    - name: sizeToFit
    - argLabels: 
    - constructorTokens: 
  */
  @objc func sizeToFit()

  /**
    - jsName: startAnimation
    - name: startAnimation:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func startAnimation(_: Any?)

  /**
    - jsName: stopAnimation
    - name: stopAnimation:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func stopAnimation(_: Any?)

  // Own Instance Properties

  /**
    - jsName: isBezeled
    - name: bezeled
    - argLabels: 
    - obsoleted: 3
    - renamed: isBezeled
  */
  @objc var isBezeled: Bool { @objc get @objc (setBezeled:) set }

  /**
    - jsName: controlSize
    - name: controlSize
    - argLabels: 
  */
  @objc var controlSize: NSControl.ControlSize { @objc get @objc (setControlSize:) set }

  /**
    - jsName: controlTint
    - name: controlTint
    - argLabels: 
  */
  @objc var controlTint: NSControlTint { @objc get @objc (setControlTint:) set }

  /**
    - jsName: isDisplayedWhenStopped
    - name: displayedWhenStopped
    - argLabels: 
    - obsoleted: 3
    - renamed: isDisplayedWhenStopped
  */
  @objc var isDisplayedWhenStopped: Bool { @objc get @objc (setDisplayedWhenStopped:) set }

  /**
    - jsName: doubleValue
    - name: doubleValue
    - argLabels: 
  */
  @objc var doubleValue: Double { @objc get @objc (setDoubleValue:) set }

  /**
    - jsName: isIndeterminate
    - name: indeterminate
    - argLabels: 
    - obsoleted: 3
    - renamed: isIndeterminate
  */
  @objc var isIndeterminate: Bool { @objc get @objc (setIndeterminate:) set }

  /**
    - jsName: maxValue
    - name: maxValue
    - argLabels: 
  */
  @objc var maxValue: Double { @objc get @objc (setMaxValue:) set }

  /**
    - jsName: minValue
    - name: minValue
    - argLabels: 
  */
  @objc var minValue: Double { @objc get @objc (setMinValue:) set }

  /**
    - jsName: style
    - name: style
    - argLabels: 
  */
  @objc var style: NSProgressIndicator.Style { @objc get @objc (setStyle:) set }

  /**
    - jsName: usesThreadedAnimation
    - name: usesThreadedAnimation
    - argLabels: 
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
