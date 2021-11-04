import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSRulerView
  */

@objc(NSRulerView) protocol NSRulerViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: registerUnitWithName:abbreviation:unitToPointsConversionFactor:stepUpCycle:stepDownCycle:
  */
  @objc (registerUnitWithName:abbreviation:unitToPointsConversionFactor:stepUpCycle:stepDownCycle:) static func registerUnit(withName: NSRulerView.UnitName, abbreviation: String, unitToPointsConversionFactor: CGFloat, stepUpCycle: [NSNumber], stepDownCycle: [NSNumber])

  // Instance Methods

  /**
    - Selector: addMarker:
  */
  @objc func addMarker(_: NSRulerMarker)

  /**
    - Selector: drawHashMarksAndLabelsInRect:
  */
  @objc (drawHashMarksAndLabelsInRect:) func drawHashMarksAndLabels(in: CGRect)

  /**
    - Selector: drawMarkersInRect:
  */
  @objc (drawMarkersInRect:) func drawMarkers(in: CGRect)

  /**
    - Selector: initWithScrollView:orientation:
  */
  @objc static func createWithScrollView(_: NSScrollView?, orientation: NSRulerView.Orientation) -> Self

  /**
    - Selector: invalidateHashMarks
  */
  @objc func invalidateHashMarks()

  /**
    - Selector: moveRulerlineFromLocation:toLocation:
  */
  @objc (moveRulerlineFromLocation:toLocation:) func moveRulerline(fromLocation: CGFloat, toLocation: CGFloat)

  /**
    - Selector: removeMarker:
  */
  @objc func removeMarker(_: NSRulerMarker)

  /**
    - Selector: trackMarker:withMouseEvent:
  */
  @objc func trackMarker(_: NSRulerMarker, withMouseEvent: NSEvent) -> Bool

  // Own Instance Properties

  /**
    - Selector: accessoryView
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - Selector: baselineLocation
  */
  @objc var baselineLocation: CGFloat { @objc get }

  /**
    - Selector: clientView
  */
  @objc var clientView: NSView? { @objc get @objc (setClientView:) set }

  /**
    - Selector: markers
  */
  @objc var markers: [NSRulerMarker]? { @objc get @objc (setMarkers:) set }

  /**
    - Selector: measurementUnits
  */
  @objc var measurementUnits: NSRulerView.UnitName { @objc get @objc (setMeasurementUnits:) set }

  /**
    - Selector: orientation
  */
  @objc var orientation: NSRulerView.Orientation { @objc get @objc (setOrientation:) set }

  /**
    - Selector: originOffset
  */
  @objc var originOffset: CGFloat { @objc get @objc (setOriginOffset:) set }

  /**
    - Selector: requiredThickness
  */
  @objc var requiredThickness: CGFloat { @objc get }

  /**
    - Selector: reservedThicknessForAccessoryView
  */
  @objc var reservedThicknessForAccessoryView: CGFloat { @objc get @objc (setReservedThicknessForAccessoryView:) set }

  /**
    - Selector: reservedThicknessForMarkers
  */
  @objc var reservedThicknessForMarkers: CGFloat { @objc get @objc (setReservedThicknessForMarkers:) set }

  /**
    - Selector: ruleThickness
  */
  @objc var ruleThickness: CGFloat { @objc get @objc (setRuleThickness:) set }

  /**
    - Selector: scrollView
  */
  @objc var scrollView: NSScrollView? { @objc get @objc (setScrollView:) set }
}

@objc protocol RulerViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(RulerView) public class RulerView: NSRulerView, RulerViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSRulerView: NSRulerViewExports {
  @objc public static func createWithScrollView(_ scrollView: NSScrollView?, orientation: NSRulerView.Orientation) -> Self {
    return self.init(scrollView: scrollView, orientation: orientation)
  }

}
