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
    - Selector: AVCaptureDevice
    - Introduced: 10.7
  */

@objc(AVCaptureDevice) protocol AVCaptureDeviceExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: authorizationStatusForMediaType:
    - Introduced: 10.14
  */
  @objc (authorizationStatusForMediaType:) @available(OSX 10.14, *) static func authorizationStatus(`for`: AVMediaType) -> AVAuthorizationStatus

  /**
    - Selector: defaultDeviceWithDeviceType:mediaType:position:
    - Introduced: 10.15
  */
  @objc (defaultDeviceWithDeviceType:mediaType:position:) @available(OSX 10.15, *) static func `default`(_: AVCaptureDevice.DeviceType, `for`: AVMediaType?, position: AVCaptureDevice.Position) -> AVCaptureDevice?

  /**
    - Selector: defaultDeviceWithMediaType:
  */
  @objc (defaultDeviceWithMediaType:) static func `default`(`for`: AVMediaType) -> AVCaptureDevice?

  /**
    - Selector: deviceWithUniqueID:
  */
  @objc static func createWithDeviceWithUniqueID(_ uniqueID: String) -> AVCaptureDevice?

  /**
    - Selector: requestAccessForMediaType:completionHandler:
    - Introduced: 10.14
  */
// jsvalue   @objc @available(OSX 10.14, *) static func requestAccessForMediaTypeWithCallback(_ `for`: AVMediaType, _ completionHandler: JSValue)

  // Instance Methods

  /**
    - Selector: hasMediaType:
  */
  @objc func hasMediaType(_: AVMediaType) -> Bool

  /**
    - Selector: isExposureModeSupported:
  */
  @objc func isExposureModeSupported(_: AVCaptureDevice.ExposureMode) -> Bool

  /**
    - Selector: isFlashModeSupported:
  */
  @objc func isFlashModeSupported(_: AVCaptureDevice.FlashMode) -> Bool

  /**
    - Selector: isFocusModeSupported:
  */
  @objc func isFocusModeSupported(_: AVCaptureDevice.FocusMode) -> Bool

  /**
    - Selector: isTorchModeSupported:
  */
  @objc func isTorchModeSupported(_: AVCaptureDevice.TorchMode) -> Bool

  /**
    - Selector: isWhiteBalanceModeSupported:
  */
  @objc func isWhiteBalanceModeSupported(_: AVCaptureDevice.WhiteBalanceMode) -> Bool

  /**
    - Selector: lockForConfiguration:
  */
  // throws - @objc func lockForConfiguration() -> Bool

  /**
    - Selector: setTorchModeOnWithLevel:error:
    - Introduced: 10.15
  */
  // throws - @objc (setTorchModeOnWithLevel:error:) @available(OSX 10.15, *) func setTorchModeOn(level: Float) -> Bool

  /**
    - Selector: setTransportControlsPlaybackMode:speed:
  */
  @objc func setTransportControlsPlaybackMode(_: AVCaptureDevice.TransportControlsPlaybackMode, speed: AVCaptureDevice.TransportControlsSpeed)

  /**
    - Selector: supportsAVCaptureSessionPreset:
  */
  @objc (supportsAVCaptureSessionPreset:) func supportsSessionPreset(_: AVCaptureSession.Preset) -> Bool

  /**
    - Selector: unlockForConfiguration
  */
  @objc func unlockForConfiguration()

  // Own Instance Properties

  /**
    - Selector: activeColorSpace
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var activeColorSpace: AVCaptureColorSpace { @objc get @objc (setActiveColorSpace:) set }

  /**
    - Selector: activeFormat
  */
  @objc var activeFormat: AVCaptureDevice.Format { @objc get @objc (setActiveFormat:) set }

  /**
    - Selector: activeInputSource
  */
  @objc var activeInputSource: AVCaptureDevice.InputSource? { @objc get @objc (setActiveInputSource:) set }

  /**
    - Selector: activeVideoMaxFrameDuration
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var activeVideoMaxFrameDuration: CMTime { @objc get @objc (setActiveVideoMaxFrameDuration:) set }

  /**
    - Selector: activeVideoMinFrameDuration
  */
  @objc var activeVideoMinFrameDuration: CMTime { @objc get @objc (setActiveVideoMinFrameDuration:) set }

  /**
    - Selector: adjustingExposure
  */
  @objc var isAdjustingExposure: Bool { @objc get }

  /**
    - Selector: adjustingFocus
  */
  @objc var isAdjustingFocus: Bool { @objc get }

  /**
    - Selector: adjustingWhiteBalance
  */
  @objc var isAdjustingWhiteBalance: Bool { @objc get }

  /**
    - Selector: connected
  */
  @objc var isConnected: Bool { @objc get }

  /**
    - Selector: deviceType
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var deviceType: AVCaptureDevice.DeviceType { @objc get }

  /**
    - Selector: exposureMode
  */
  @objc var exposureMode: AVCaptureDevice.ExposureMode { @objc get @objc (setExposureMode:) set }

  /**
    - Selector: exposurePointOfInterest
  */
  @objc var exposurePointOfInterest: CGPoint { @objc get @objc (setExposurePointOfInterest:) set }

  /**
    - Selector: exposurePointOfInterestSupported
  */
  @objc var isExposurePointOfInterestSupported: Bool { @objc get }

  /**
    - Selector: flashAvailable
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isFlashAvailable: Bool { @objc get }

  /**
    - Selector: flashMode
  */
  @objc var flashMode: AVCaptureDevice.FlashMode { @objc get @objc (setFlashMode:) set }

  /**
    - Selector: focusMode
  */
  @objc var focusMode: AVCaptureDevice.FocusMode { @objc get @objc (setFocusMode:) set }

  /**
    - Selector: focusPointOfInterest
  */
  @objc var focusPointOfInterest: CGPoint { @objc get @objc (setFocusPointOfInterest:) set }

  /**
    - Selector: focusPointOfInterestSupported
  */
  @objc var isFocusPointOfInterestSupported: Bool { @objc get }

  /**
    - Selector: formats
  */
  @objc var formats: [AVCaptureDevice.Format] { @objc get }

  /**
    - Selector: hasFlash
  */
  @objc var hasFlash: Bool { @objc get }

  /**
    - Selector: hasTorch
  */
  @objc var hasTorch: Bool { @objc get }

  /**
    - Selector: inUseByAnotherApplication
  */
  @objc var isInUseByAnotherApplication: Bool { @objc get }

  /**
    - Selector: inputSources
  */
  @objc var inputSources: [AVCaptureDevice.InputSource] { @objc get }

  /**
    - Selector: linkedDevices
  */
  @objc var linkedDevices: [AVCaptureDevice] { @objc get }

  /**
    - Selector: localizedName
  */
  @objc var localizedName: String { @objc get }

  /**
    - Selector: manufacturer
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var manufacturer: String { @objc get }

  /**
    - Selector: modelID
  */
  @objc var modelID: String { @objc get }

  /**
    - Selector: position
  */
  @objc var position: AVCaptureDevice.Position { @objc get }

  /**
    - Selector: suspended
  */
  @objc var isSuspended: Bool { @objc get }

  /**
    - Selector: torchActive
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isTorchActive: Bool { @objc get }

  /**
    - Selector: torchAvailable
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var isTorchAvailable: Bool { @objc get }

  /**
    - Selector: torchLevel
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var torchLevel: Float { @objc get }

  /**
    - Selector: torchMode
  */
  @objc var torchMode: AVCaptureDevice.TorchMode { @objc get @objc (setTorchMode:) set }

  /**
    - Selector: transportControlsPlaybackMode
  */
  @objc var transportControlsPlaybackMode: AVCaptureDevice.TransportControlsPlaybackMode { @objc get }

  /**
    - Selector: transportControlsSpeed
  */
  @objc var transportControlsSpeed: AVCaptureDevice.TransportControlsSpeed { @objc get }

  /**
    - Selector: transportControlsSupported
  */
  @objc var transportControlsSupported: Bool { @objc get }

  /**
    - Selector: transportType
  */
  @objc var transportType: Int32 { @objc get }

  /**
    - Selector: uniqueID
  */
  @objc var uniqueID: String { @objc get }

  /**
    - Selector: whiteBalanceMode
  */
  @objc var whiteBalanceMode: AVCaptureDevice.WhiteBalanceMode { @objc get @objc (setWhiteBalanceMode:) set }
}

extension AVCaptureDevice: AVCaptureDeviceExports {

  /**
    - Selector: deviceWithUniqueID:
  */
  @objc public static func createWithDeviceWithUniqueID(_ uniqueID: String) -> AVCaptureDevice? {
    return self.init(uniqueID: uniqueID)
  }

}
