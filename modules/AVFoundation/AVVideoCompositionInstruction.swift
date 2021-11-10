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
    - Selector: AVVideoCompositionInstruction
    - Introduced: 10.7
  */

@objc(AVVideoCompositionInstruction) protocol AVVideoCompositionInstructionExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: backgroundColor
  */
  @objc var backgroundColor: CGColor? { @objc get }

  /**
    - Selector: layerInstructions
  */
  @objc var layerInstructions: [AVVideoCompositionLayerInstruction] { @objc get }
}

extension AVVideoCompositionInstruction: AVVideoCompositionInstructionExports {
}
