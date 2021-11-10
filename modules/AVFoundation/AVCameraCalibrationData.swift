import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVFoundation

// Interface 

  /**
    - Selector: AVCameraCalibrationData
    - Introduced: 10.13
  */

@objc(AVCameraCalibrationData) protocol AVCameraCalibrationDataExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: extrinsicMatrix
  */
  @objc var extrinsicMatrix: simd_float4x3 { @objc get }

  /**
    - Selector: intrinsicMatrix
  */
  @objc var intrinsicMatrix: simd_float3x3 { @objc get }

  /**
    - Selector: intrinsicMatrixReferenceDimensions
  */
  @objc var intrinsicMatrixReferenceDimensions: CGSize { @objc get }

  /**
    - Selector: inverseLensDistortionLookupTable
  */
  @objc var inverseLensDistortionLookupTable: Data? { @objc get }

  /**
    - Selector: lensDistortionCenter
  */
  @objc var lensDistortionCenter: CGPoint { @objc get }

  /**
    - Selector: lensDistortionLookupTable
  */
  @objc var lensDistortionLookupTable: Data? { @objc get }

  /**
    - Selector: pixelSize
  */
  @objc var pixelSize: Float { @objc get }
}

extension AVCameraCalibrationData: AVCameraCalibrationDataExports {
}
