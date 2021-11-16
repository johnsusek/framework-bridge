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
    - Selector: AVAudioNode
    - Introduced: 10.10
  */

@objc(AVAudioNode) protocol AVAudioNodeExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: inputFormatForBus:
  */
  @objc (inputFormatForBus:) func inputFormat(forBus: Int) -> AVAudioFormat

  /**
    - Selector: installTapOnBus:bufferSize:format:block:
  */
  // jsvalue @objc func installTapOnBusWithBufferSizeWithFormatWithBlock(onBus: Int, bufferSize: AVAudioFrameCount, format: AVAudioFormat?, block: JSValue)

  /**
    - Selector: nameForInputBus:
  */
  @objc (nameForInputBus:) func name(forInputBus: Int) -> String?

  /**
    - Selector: nameForOutputBus:
  */
  @objc (nameForOutputBus:) func name(forOutputBus: Int) -> String?

  /**
    - Selector: outputFormatForBus:
  */
  @objc (outputFormatForBus:) func outputFormat(forBus: Int) -> AVAudioFormat

  /**
    - Selector: removeTapOnBus:
  */
  @objc (removeTapOnBus:) func removeTap(onBus: Int)

  /**
    - Selector: reset
  */
  @objc func reset()

  // Own Instance Properties

  /**
    - Selector: AUAudioUnit
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var auAudioUnit: AUAudioUnit { @objc (AUAudioUnit) get }

  /**
    - Selector: engine
  */
  @objc var engine: AVAudioEngine? { @objc get }

  /**
    - Selector: lastRenderTime
  */
  @objc var lastRenderTime: AVAudioTime? { @objc get }

  /**
    - Selector: latency
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var latency: TimeInterval { @objc get }

  /**
    - Selector: numberOfInputs
  */
  @objc var numberOfInputs: Int { @objc get }

  /**
    - Selector: numberOfOutputs
  */
  @objc var numberOfOutputs: Int { @objc get }

  /**
    - Selector: outputPresentationLatency
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var outputPresentationLatency: TimeInterval { @objc get }
}

extension AVAudioNode: AVAudioNodeExports {
}
