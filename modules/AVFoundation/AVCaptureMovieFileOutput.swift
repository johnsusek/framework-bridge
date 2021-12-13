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
    - Selector: AVCaptureMovieFileOutput
    - Introduced: 10.7
  */

@objc(AVCaptureMovieFileOutput) protocol AVCaptureMovieFileOutputExports: JSExport, AVCaptureFileOutputExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: outputSettingsForConnection:
  */
  @objc (outputSettingsForConnection:) func outputSettings(`for`: AVCaptureConnection) -> [String: Any]

  /**
    - Selector: setOutputSettings:forConnection:
  */
  @objc (setOutputSettings:forConnection:) func setOutputSettings(_ p0: [String: Any]?, `for`: AVCaptureConnection)

  // Own Instance Properties

  /**
    - Selector: metadata
  */
  @objc var metadata: [AVMetadataItem]? { @objc get @objc (setMetadata:) set }

  /**
    - Selector: movieFragmentInterval
  */
  @objc var movieFragmentInterval: CMTime { @objc get @objc (setMovieFragmentInterval:) set }
}

extension AVCaptureMovieFileOutput: AVCaptureMovieFileOutputExports {
}
