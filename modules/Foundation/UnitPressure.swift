import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitPressure
    - name: NSUnitPressure
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitPressure) protocol UnitPressureExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - jsName: baseUnit
    - name: baseUnit
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - jsName: bars
    - name: bars
    - argLabels: 
  */
  @objc static var bars: UnitPressure { @objc get }

  /**
    - jsName: gigapascals
    - name: gigapascals
    - argLabels: 
  */
  @objc static var gigapascals: UnitPressure { @objc get }

  /**
    - jsName: hectopascals
    - name: hectopascals
    - argLabels: 
  */
  @objc static var hectopascals: UnitPressure { @objc get }

  /**
    - jsName: inchesOfMercury
    - name: inchesOfMercury
    - argLabels: 
  */
  @objc static var inchesOfMercury: UnitPressure { @objc get }

  /**
    - jsName: kilopascals
    - name: kilopascals
    - argLabels: 
  */
  @objc static var kilopascals: UnitPressure { @objc get }

  /**
    - jsName: megapascals
    - name: megapascals
    - argLabels: 
  */
  @objc static var megapascals: UnitPressure { @objc get }

  /**
    - jsName: millibars
    - name: millibars
    - argLabels: 
  */
  @objc static var millibars: UnitPressure { @objc get }

  /**
    - jsName: millimetersOfMercury
    - name: millimetersOfMercury
    - argLabels: 
  */
  @objc static var millimetersOfMercury: UnitPressure { @objc get }

  /**
    - jsName: newtonsPerMetersSquared
    - name: newtonsPerMetersSquared
    - argLabels: 
  */
  @objc static var newtonsPerMetersSquared: UnitPressure { @objc get }

  /**
    - jsName: poundsForcePerSquareInch
    - name: poundsForcePerSquareInch
    - argLabels: 
  */
  @objc static var poundsForcePerSquareInch: UnitPressure { @objc get }
}

extension UnitPressure: UnitPressureExports {
}
