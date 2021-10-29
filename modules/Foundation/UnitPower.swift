import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitPower
    - name: NSUnitPower
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitPower) protocol UnitPowerExports: JSExport, DimensionExports {
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
    - jsName: femtowatts
    - name: femtowatts
    - argLabels: 
  */
  @objc static var femtowatts: UnitPower { @objc get }

  /**
    - jsName: gigawatts
    - name: gigawatts
    - argLabels: 
  */
  @objc static var gigawatts: UnitPower { @objc get }

  /**
    - jsName: horsepower
    - name: horsepower
    - argLabels: 
  */
  @objc static var horsepower: UnitPower { @objc get }

  /**
    - jsName: kilowatts
    - name: kilowatts
    - argLabels: 
  */
  @objc static var kilowatts: UnitPower { @objc get }

  /**
    - jsName: megawatts
    - name: megawatts
    - argLabels: 
  */
  @objc static var megawatts: UnitPower { @objc get }

  /**
    - jsName: microwatts
    - name: microwatts
    - argLabels: 
  */
  @objc static var microwatts: UnitPower { @objc get }

  /**
    - jsName: milliwatts
    - name: milliwatts
    - argLabels: 
  */
  @objc static var milliwatts: UnitPower { @objc get }

  /**
    - jsName: nanowatts
    - name: nanowatts
    - argLabels: 
  */
  @objc static var nanowatts: UnitPower { @objc get }

  /**
    - jsName: picowatts
    - name: picowatts
    - argLabels: 
  */
  @objc static var picowatts: UnitPower { @objc get }

  /**
    - jsName: terawatts
    - name: terawatts
    - argLabels: 
  */
  @objc static var terawatts: UnitPower { @objc get }

  /**
    - jsName: watts
    - name: watts
    - argLabels: 
  */
  @objc static var watts: UnitPower { @objc get }
}

extension UnitPower: UnitPowerExports {
}
