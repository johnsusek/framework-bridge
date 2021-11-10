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
    - Selector: AVCaptureOutput
    - Introduced: 10.7
  */

@objc(AVCaptureOutput) protocol AVCaptureOutputExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: connectionWithMediaType:
  */
  @objc (connectionWithMediaType:) func connection(with: AVMediaType) -> AVCaptureConnection?

  /**
    - Selector: metadataOutputRectOfInterestForRect:
    - Introduced: 10.15
  */
  @objc (metadataOutputRectOfInterestForRect:) @available(OSX 10.15, *) func metadataOutputRectConverted(fromOutputRect: CGRect) -> CGRect

  /**
    - Selector: rectForMetadataOutputRectOfInterest:
    - Introduced: 10.15
  */
  @objc (rectForMetadataOutputRectOfInterest:) @available(OSX 10.15, *) func outputRectConverted(fromMetadataOutputRect: CGRect) -> CGRect

  /**
    - Selector: transformedMetadataObjectForMetadataObject:connection:
    - Introduced: 10.15
  */
  @objc (transformedMetadataObjectForMetadataObject:connection:) @available(OSX 10.15, *) func transformedMetadataObject(`for`: AVMetadataObject, connection: AVCaptureConnection) -> AVMetadataObject?

  // Own Instance Properties

  /**
    - Selector: connections
  */
  @objc var connections: [AVCaptureConnection] { @objc get }
}

extension AVCaptureOutput: AVCaptureOutputExports {
}
