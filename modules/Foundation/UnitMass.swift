import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitMass
    - name: NSUnitMass
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitMass) protocol UnitMassExports: JSExport, DimensionExports {
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
    - jsName: carats
    - name: carats
    - argLabels: 
  */
  @objc static var carats: UnitMass { @objc get }

  /**
    - jsName: centigrams
    - name: centigrams
    - argLabels: 
  */
  @objc static var centigrams: UnitMass { @objc get }

  /**
    - jsName: decigrams
    - name: decigrams
    - argLabels: 
  */
  @objc static var decigrams: UnitMass { @objc get }

  /**
    - jsName: grams
    - name: grams
    - argLabels: 
  */
  @objc static var grams: UnitMass { @objc get }

  /**
    - jsName: kilograms
    - name: kilograms
    - argLabels: 
  */
  @objc static var kilograms: UnitMass { @objc get }

  /**
    - jsName: metricTons
    - name: metricTons
    - argLabels: 
  */
  @objc static var metricTons: UnitMass { @objc get }

  /**
    - jsName: micrograms
    - name: micrograms
    - argLabels: 
  */
  @objc static var micrograms: UnitMass { @objc get }

  /**
    - jsName: milligrams
    - name: milligrams
    - argLabels: 
  */
  @objc static var milligrams: UnitMass { @objc get }

  /**
    - jsName: nanograms
    - name: nanograms
    - argLabels: 
  */
  @objc static var nanograms: UnitMass { @objc get }

  /**
    - jsName: ounces
    - name: ounces
    - argLabels: 
  */
  @objc static var ounces: UnitMass { @objc get }

  /**
    - jsName: ouncesTroy
    - name: ouncesTroy
    - argLabels: 
  */
  @objc static var ouncesTroy: UnitMass { @objc get }

  /**
    - jsName: picograms
    - name: picograms
    - argLabels: 
  */
  @objc static var picograms: UnitMass { @objc get }

  /**
    - jsName: pounds
    - name: poundsMass
    - argLabels: 
    - obsoleted: 3
    - renamed: pounds
  */
  @objc static var pounds: UnitMass { @objc (poundsMass) get }

  /**
    - jsName: shortTons
    - name: shortTons
    - argLabels: 
  */
  @objc static var shortTons: UnitMass { @objc get }

  /**
    - jsName: slugs
    - name: slugs
    - argLabels: 
  */
  @objc static var slugs: UnitMass { @objc get }

  /**
    - jsName: stones
    - name: stones
    - argLabels: 
  */
  @objc static var stones: UnitMass { @objc get }
}

extension UnitMass: UnitMassExports {
}
