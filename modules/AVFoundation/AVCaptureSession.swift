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
    - Selector: AVCaptureSession
    - Introduced: 10.7
  */

@objc(AVCaptureSession) protocol AVCaptureSessionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addConnection:
  */
  @objc (addConnection:) func addConnection(_ p0: AVCaptureConnection)

  /**
    - Selector: addInput:
  */
  @objc func addInput(_ p0: AVCaptureInput)

  /**
    - Selector: addInputWithNoConnections:
  */
  @objc func addInputWithNoConnections(_ p0: AVCaptureInput)

  /**
    - Selector: addOutput:
  */
  @objc func addOutput(_ p0: AVCaptureOutput)

  /**
    - Selector: addOutputWithNoConnections:
  */
  @objc func addOutputWithNoConnections(_ p0: AVCaptureOutput)

  /**
    - Selector: beginConfiguration
  */
  @objc func beginConfiguration()

  /**
    - Selector: canAddConnection:
  */
  @objc (canAddConnection:) func canAddConnection(_ p0: AVCaptureConnection) -> Bool

  /**
    - Selector: canAddInput:
  */
  @objc func canAddInput(_ p0: AVCaptureInput) -> Bool

  /**
    - Selector: canAddOutput:
  */
  @objc func canAddOutput(_ p0: AVCaptureOutput) -> Bool

  /**
    - Selector: canSetSessionPreset:
  */
  @objc func canSetSessionPreset(_ p0: AVCaptureSession.Preset) -> Bool

  /**
    - Selector: commitConfiguration
  */
  @objc func commitConfiguration()

  /**
    - Selector: removeConnection:
  */
  @objc (removeConnection:) func removeConnection(_ p0: AVCaptureConnection)

  /**
    - Selector: removeInput:
  */
  @objc func removeInput(_ p0: AVCaptureInput)

  /**
    - Selector: removeOutput:
  */
  @objc func removeOutput(_ p0: AVCaptureOutput)

  /**
    - Selector: startRunning
  */
  @objc func startRunning()

  /**
    - Selector: stopRunning
  */
  @objc func stopRunning()

  // Own Instance Properties

  /**
    - Selector: connections
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var connections: [AVCaptureConnection] { @objc get }

  /**
    - Selector: inputs
  */
  @objc var inputs: [AVCaptureInput] { @objc get }

  /**
    - Selector: masterClock
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var masterClock: CMClock? { @objc get }

  /**
    - Selector: outputs
  */
  @objc var outputs: [AVCaptureOutput] { @objc get }

  /**
    - Selector: running
  */
  @objc var isRunning: Bool { @objc get }

  /**
    - Selector: sessionPreset
  */
  @objc var sessionPreset: AVCaptureSession.Preset { @objc get @objc (setSessionPreset:) set }
}

extension AVCaptureSession: AVCaptureSessionExports {
}
