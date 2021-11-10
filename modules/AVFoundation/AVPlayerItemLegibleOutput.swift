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
    - Selector: AVPlayerItemLegibleOutput
    - Introduced: 10.9
  */

@objc(AVPlayerItemLegibleOutput) protocol AVPlayerItemLegibleOutputExports: JSExport, AVPlayerItemOutputExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: setDelegate:queue:
  */
  @objc func setDelegate(_: AVPlayerItemLegibleOutputPushDelegate?, queue: DispatchQueue?)

  // Own Instance Properties

  /**
    - Selector: advanceIntervalForDelegateInvocation
  */
  @objc var advanceIntervalForDelegateInvocation: TimeInterval { @objc get @objc (setAdvanceIntervalForDelegateInvocation:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: AVPlayerItemLegibleOutputPushDelegate? { @objc get }

  /**
    - Selector: delegateQueue
  */
  @objc var delegateQueue: DispatchQueue? { @objc get }

  /**
    - Selector: textStylingResolution
  */
  @objc var textStylingResolution: AVPlayerItemLegibleOutput.TextStylingResolution { @objc get @objc (setTextStylingResolution:) set }
}

extension AVPlayerItemLegibleOutput: AVPlayerItemLegibleOutputExports {
}
