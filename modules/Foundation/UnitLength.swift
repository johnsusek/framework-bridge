import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitLength
    - name: NSUnitLength
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitLength) protocol UnitLengthExports: JSExport, DimensionExports {
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
    - jsName: astronomicalUnits
    - name: astronomicalUnits
    - argLabels: 
  */
  @objc static var astronomicalUnits: UnitLength { @objc get }

  /**
    - jsName: centimeters
    - name: centimeters
    - argLabels: 
  */
  @objc static var centimeters: UnitLength { @objc get }

  /**
    - jsName: decameters
    - name: decameters
    - argLabels: 
  */
  @objc static var decameters: UnitLength { @objc get }

  /**
    - jsName: decimeters
    - name: decimeters
    - argLabels: 
  */
  @objc static var decimeters: UnitLength { @objc get }

  /**
    - jsName: fathoms
    - name: fathoms
    - argLabels: 
  */
  @objc static var fathoms: UnitLength { @objc get }

  /**
    - jsName: feet
    - name: feet
    - argLabels: 
  */
  @objc static var feet: UnitLength { @objc get }

  /**
    - jsName: furlongs
    - name: furlongs
    - argLabels: 
  */
  @objc static var furlongs: UnitLength { @objc get }

  /**
    - jsName: hectometers
    - name: hectometers
    - argLabels: 
  */
  @objc static var hectometers: UnitLength { @objc get }

  /**
    - jsName: inches
    - name: inches
    - argLabels: 
  */
  @objc static var inches: UnitLength { @objc get }

  /**
    - jsName: kilometers
    - name: kilometers
    - argLabels: 
  */
  @objc static var kilometers: UnitLength { @objc get }

  /**
    - jsName: lightyears
    - name: lightyears
    - argLabels: 
  */
  @objc static var lightyears: UnitLength { @objc get }

  /**
    - jsName: megameters
    - name: megameters
    - argLabels: 
  */
  @objc static var megameters: UnitLength { @objc get }

  /**
    - jsName: meters
    - name: meters
    - argLabels: 
  */
  @objc static var meters: UnitLength { @objc get }

  /**
    - jsName: micrometers
    - name: micrometers
    - argLabels: 
  */
  @objc static var micrometers: UnitLength { @objc get }

  /**
    - jsName: miles
    - name: miles
    - argLabels: 
  */
  @objc static var miles: UnitLength { @objc get }

  /**
    - jsName: millimeters
    - name: millimeters
    - argLabels: 
  */
  @objc static var millimeters: UnitLength { @objc get }

  /**
    - jsName: nanometers
    - name: nanometers
    - argLabels: 
  */
  @objc static var nanometers: UnitLength { @objc get }

  /**
    - jsName: nauticalMiles
    - name: nauticalMiles
    - argLabels: 
  */
  @objc static var nauticalMiles: UnitLength { @objc get }

  /**
    - jsName: parsecs
    - name: parsecs
    - argLabels: 
  */
  @objc static var parsecs: UnitLength { @objc get }

  /**
    - jsName: picometers
    - name: picometers
    - argLabels: 
  */
  @objc static var picometers: UnitLength { @objc get }

  /**
    - jsName: scandinavianMiles
    - name: scandinavianMiles
    - argLabels: 
  */
  @objc static var scandinavianMiles: UnitLength { @objc get }

  /**
    - jsName: yards
    - name: yards
    - argLabels: 
  */
  @objc static var yards: UnitLength { @objc get }
}

extension UnitLength: UnitLengthExports {
}
