import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSRulerView
    - name: NSRulerView
    - argLabels: 
  */

@objc(NSRulerView) protocol NSRulerViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - jsName: registerUnit
    - name: registerUnitWithName:abbreviation:unitToPointsConversionFactor:stepUpCycle:stepDownCycle:
    - argLabels: withName, abbreviation, unitToPointsConversionFactor, stepUpCycle, stepDownCycle
    - constructorTokens: 
    - obsoleted: 3
    - renamed: registerUnit(withName:abbreviation:unitToPointsConversionFactor:stepUpCycle:stepDownCycle:)
  */
  @objc (registerUnitWithName:abbreviation:unitToPointsConversionFactor:stepUpCycle:stepDownCycle:) static func registerUnit(withName: NSRulerView.UnitName, abbreviation: String, unitToPointsConversionFactor: CGFloat, stepUpCycle: [NSNumber], stepDownCycle: [NSNumber])

  // Instance Methods

  /**
    - jsName: addMarker
    - name: addMarker:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addMarker(_: NSRulerMarker)

  /**
    - jsName: drawHashMarksAndLabels
    - name: drawHashMarksAndLabelsInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawHashMarksAndLabels(in:)
  */
  @objc (drawHashMarksAndLabelsInRect:) func drawHashMarksAndLabels(in: CGRect)

  /**
    - jsName: drawMarkers
    - name: drawMarkersInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawMarkers(in:)
  */
  @objc (drawMarkersInRect:) func drawMarkers(in: CGRect)

  /**
    - jsName: createWithScrollView
    - name: initWithScrollView:orientation:
    - argLabels: orientation
    - constructorTokens: scrollView, orientation
  */
  @objc static func createWithScrollView(_: NSScrollView?, orientation: NSRulerView.Orientation) -> Self

  /**
    - jsName: invalidateHashMarks
    - name: invalidateHashMarks
    - argLabels: 
    - constructorTokens: 
  */
  @objc func invalidateHashMarks()

  /**
    - jsName: moveRulerline
    - name: moveRulerlineFromLocation:toLocation:
    - argLabels: fromLocation, toLocation
    - constructorTokens: 
    - obsoleted: 3
    - renamed: moveRulerline(fromLocation:toLocation:)
  */
  @objc (moveRulerlineFromLocation:toLocation:) func moveRulerline(fromLocation: CGFloat, toLocation: CGFloat)

  /**
    - jsName: removeMarker
    - name: removeMarker:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeMarker(_: NSRulerMarker)

  /**
    - jsName: trackMarker
    - name: trackMarker:withMouseEvent:
    - argLabels: withMouseEvent
    - constructorTokens: 
  */
  @objc func trackMarker(_: NSRulerMarker, withMouseEvent: NSEvent) -> Bool

  // Own Instance Properties

  /**
    - jsName: accessoryView
    - name: accessoryView
    - argLabels: 
  */
  @objc var accessoryView: NSView? { @objc get @objc (setAccessoryView:) set }

  /**
    - jsName: baselineLocation
    - name: baselineLocation
    - argLabels: 
  */
  @objc var baselineLocation: CGFloat { @objc get }

  /**
    - jsName: clientView
    - name: clientView
    - argLabels: 
  */
  @objc var clientView: NSView? { @objc get @objc (setClientView:) set }

  /**
    - jsName: markers
    - name: markers
    - argLabels: 
  */
  @objc var markers: [NSRulerMarker]? { @objc get @objc (setMarkers:) set }

  /**
    - jsName: measurementUnits
    - name: measurementUnits
    - argLabels: 
  */
  @objc var measurementUnits: NSRulerView.UnitName { @objc get @objc (setMeasurementUnits:) set }

  /**
    - jsName: orientation
    - name: orientation
    - argLabels: 
  */
  @objc var orientation: NSRulerView.Orientation { @objc get @objc (setOrientation:) set }

  /**
    - jsName: originOffset
    - name: originOffset
    - argLabels: 
  */
  @objc var originOffset: CGFloat { @objc get @objc (setOriginOffset:) set }

  /**
    - jsName: requiredThickness
    - name: requiredThickness
    - argLabels: 
  */
  @objc var requiredThickness: CGFloat { @objc get }

  /**
    - jsName: reservedThicknessForAccessoryView
    - name: reservedThicknessForAccessoryView
    - argLabels: 
  */
  @objc var reservedThicknessForAccessoryView: CGFloat { @objc get @objc (setReservedThicknessForAccessoryView:) set }

  /**
    - jsName: reservedThicknessForMarkers
    - name: reservedThicknessForMarkers
    - argLabels: 
  */
  @objc var reservedThicknessForMarkers: CGFloat { @objc get @objc (setReservedThicknessForMarkers:) set }

  /**
    - jsName: ruleThickness
    - name: ruleThickness
    - argLabels: 
  */
  @objc var ruleThickness: CGFloat { @objc get @objc (setRuleThickness:) set }

  /**
    - jsName: scrollView
    - name: scrollView
    - argLabels: 
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
