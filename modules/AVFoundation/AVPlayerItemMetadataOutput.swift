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
    - Selector: AVPlayerItemMetadataOutput
    - Introduced: 10.10
  */

@objc(AVPlayerItemMetadataOutput) protocol AVPlayerItemMetadataOutputExports: JSExport, AVPlayerItemOutputExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setDelegate:queue:
  */
  @objc func setDelegate(_ p0: AVPlayerItemMetadataOutputPushDelegate?, queue: DispatchQueue?)

  // Own Instance Properties

  /**
    - Selector: advanceIntervalForDelegateInvocation
  */
  @objc var advanceIntervalForDelegateInvocation: TimeInterval { @objc get @objc (setAdvanceIntervalForDelegateInvocation:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: AVPlayerItemMetadataOutputPushDelegate? { @objc get }

  /**
    - Selector: delegateQueue
  */
  @objc var delegateQueue: DispatchQueue? { @objc get }
}

extension AVPlayerItemMetadataOutput: AVPlayerItemMetadataOutputExports {
}
