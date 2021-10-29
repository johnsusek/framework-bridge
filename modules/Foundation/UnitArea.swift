import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitArea
    - name: NSUnitArea
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitArea) protocol UnitAreaExports: JSExport, DimensionExports {
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
    - jsName: acres
    - name: acres
    - argLabels: 
  */
  @objc static var acres: UnitArea { @objc get }

  /**
    - jsName: ares
    - name: ares
    - argLabels: 
  */
  @objc static var ares: UnitArea { @objc get }

  /**
    - jsName: hectares
    - name: hectares
    - argLabels: 
  */
  @objc static var hectares: UnitArea { @objc get }

  /**
    - jsName: squareCentimeters
    - name: squareCentimeters
    - argLabels: 
  */
  @objc static var squareCentimeters: UnitArea { @objc get }

  /**
    - jsName: squareFeet
    - name: squareFeet
    - argLabels: 
  */
  @objc static var squareFeet: UnitArea { @objc get }

  /**
    - jsName: squareInches
    - name: squareInches
    - argLabels: 
  */
  @objc static var squareInches: UnitArea { @objc get }

  /**
    - jsName: squareKilometers
    - name: squareKilometers
    - argLabels: 
  */
  @objc static var squareKilometers: UnitArea { @objc get }

  /**
    - jsName: squareMegameters
    - name: squareMegameters
    - argLabels: 
  */
  @objc static var squareMegameters: UnitArea { @objc get }

  /**
    - jsName: squareMeters
    - name: squareMeters
    - argLabels: 
  */
  @objc static var squareMeters: UnitArea { @objc get }

  /**
    - jsName: squareMicrometers
    - name: squareMicrometers
    - argLabels: 
  */
  @objc static var squareMicrometers: UnitArea { @objc get }

  /**
    - jsName: squareMiles
    - name: squareMiles
    - argLabels: 
  */
  @objc static var squareMiles: UnitArea { @objc get }

  /**
    - jsName: squareMillimeters
    - name: squareMillimeters
    - argLabels: 
  */
  @objc static var squareMillimeters: UnitArea { @objc get }

  /**
    - jsName: squareNanometers
    - name: squareNanometers
    - argLabels: 
  */
  @objc static var squareNanometers: UnitArea { @objc get }

  /**
    - jsName: squareYards
    - name: squareYards
    - argLabels: 
  */
  @objc static var squareYards: UnitArea { @objc get }
}

extension UnitArea: UnitAreaExports {
}
