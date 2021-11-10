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
    - Selector: AVMutableVideoCompositionInstruction
    - Introduced: 10.7
  */

@objc(AVMutableVideoCompositionInstruction) protocol AVMutableVideoCompositionInstructionExports: JSExport, AVVideoCompositionInstructionExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: CGColor? { @objc get @objc (setBackgroundColor:) set }

  /**
    - Selector: enablePostProcessing
  */
  @objc var enablePostProcessing: Bool { @objc get @objc (setEnablePostProcessing:) set }

  /**
    - Selector: layerInstructions
  */
  @objc var layerInstructions: [AVVideoCompositionLayerInstruction] { @objc get @objc (setLayerInstructions:) set }

  /**
    - Selector: timeRange
  */
  @objc var timeRange: CMTimeRange { @objc get @objc (setTimeRange:) set }
}

extension AVMutableVideoCompositionInstruction: AVMutableVideoCompositionInstructionExports {
}
