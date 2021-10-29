import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UnitElectricPotentialDifference
    - name: NSUnitElectricPotentialDifference
    - argLabels: 
    - Introduced: 10.12
  */

@objc(UnitElectricPotentialDifference) protocol UnitElectricPotentialDifferenceExports: JSExport, DimensionExports {
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
    - jsName: kilovolts
    - name: kilovolts
    - argLabels: 
  */
  @objc static var kilovolts: UnitElectricPotentialDifference { @objc get }

  /**
    - jsName: megavolts
    - name: megavolts
    - argLabels: 
  */
  @objc static var megavolts: UnitElectricPotentialDifference { @objc get }

  /**
    - jsName: microvolts
    - name: microvolts
    - argLabels: 
  */
  @objc static var microvolts: UnitElectricPotentialDifference { @objc get }

  /**
    - jsName: millivolts
    - name: millivolts
    - argLabels: 
  */
  @objc static var millivolts: UnitElectricPotentialDifference { @objc get }

  /**
    - jsName: volts
    - name: volts
    - argLabels: 
  */
  @objc static var volts: UnitElectricPotentialDifference { @objc get }
}

extension UnitElectricPotentialDifference: UnitElectricPotentialDifferenceExports {
}
