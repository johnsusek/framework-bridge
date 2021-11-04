import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUnitMass
    - Introduced: 10.12
  */

@objc(UnitMass) protocol UnitMassExports: JSExport, DimensionExports {
  // Static Methods

  /**
    - Selector: baseUnit
  */
  @objc static func baseUnit() -> Self

  // Own Static Properties

  /**
    - Selector: carats
  */
  @objc static var carats: UnitMass { @objc get }

  /**
    - Selector: centigrams
  */
  @objc static var centigrams: UnitMass { @objc get }

  /**
    - Selector: decigrams
  */
  @objc static var decigrams: UnitMass { @objc get }

  /**
    - Selector: grams
  */
  @objc static var grams: UnitMass { @objc get }

  /**
    - Selector: kilograms
  */
  @objc static var kilograms: UnitMass { @objc get }

  /**
    - Selector: metricTons
  */
  @objc static var metricTons: UnitMass { @objc get }

  /**
    - Selector: micrograms
  */
  @objc static var micrograms: UnitMass { @objc get }

  /**
    - Selector: milligrams
  */
  @objc static var milligrams: UnitMass { @objc get }

  /**
    - Selector: nanograms
  */
  @objc static var nanograms: UnitMass { @objc get }

  /**
    - Selector: ounces
  */
  @objc static var ounces: UnitMass { @objc get }

  /**
    - Selector: ouncesTroy
  */
  @objc static var ouncesTroy: UnitMass { @objc get }

  /**
    - Selector: picograms
  */
  @objc static var picograms: UnitMass { @objc get }

  /**
    - Selector: poundsMass
  */
  @objc static var pounds: UnitMass { @objc (poundsMass) get }

  /**
    - Selector: shortTons
  */
  @objc static var shortTons: UnitMass { @objc get }

  /**
    - Selector: slugs
  */
  @objc static var slugs: UnitMass { @objc get }

  /**
    - Selector: stones
  */
  @objc static var stones: UnitMass { @objc get }
}

extension UnitMass: UnitMassExports {
}
