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
    - Selector: AVAudioConverter
    - Introduced: 10.11
  */

@objc(AVAudioConverter) protocol AVAudioConverterExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: convertToBuffer:error:withInputFromBlock:
  */
  // jsvalue @objc func convert(to: AVAudioBuffer, error: UnsafeMutablePointer<Error?>?, withInputFrom: JSValue) -> AVAudioConverterOutputStatus

  /**
    - Selector: convertToBuffer:fromBuffer:error:
  */
  // throws - @objc func convertToBuffer(fromBuffer: AVAudioPCMBuffer, error: AVAudioPCMBuffer) -> Bool

  /**
    - Selector: reset
  */
  @objc func reset()

  // Own Instance Properties

  /**
    - Selector: applicableEncodeBitRates
  */
  @objc var applicableEncodeBitRates: [NSNumber]? { @objc get }

  /**
    - Selector: applicableEncodeSampleRates
  */
  @objc var applicableEncodeSampleRates: [NSNumber]? { @objc get }

  /**
    - Selector: availableEncodeBitRates
  */
  @objc var availableEncodeBitRates: [NSNumber]? { @objc get }

  /**
    - Selector: availableEncodeChannelLayoutTags
  */
  @objc var availableEncodeChannelLayoutTags: [NSNumber]? { @objc get }

  /**
    - Selector: availableEncodeSampleRates
  */
  @objc var availableEncodeSampleRates: [NSNumber]? { @objc get }

  /**
    - Selector: bitRate
  */
  @objc var bitRate: Int { @objc get @objc (setBitRate:) set }

  /**
    - Selector: bitRateStrategy
  */
  @objc var bitRateStrategy: String? { @objc get @objc (setBitRateStrategy:) set }

  /**
    - Selector: channelMap
  */
  @objc var channelMap: [NSNumber] { @objc get @objc (setChannelMap:) set }

  /**
    - Selector: dither
  */
  @objc var dither: Bool { @objc get @objc (setDither:) set }

  /**
    - Selector: downmix
  */
  @objc var downmix: Bool { @objc get @objc (setDownmix:) set }

  /**
    - Selector: inputFormat
  */
  @objc var inputFormat: AVAudioFormat { @objc get }

  /**
    - Selector: magicCookie
  */
  @objc var magicCookie: Data? { @objc get @objc (setMagicCookie:) set }

  /**
    - Selector: maximumOutputPacketSize
  */
  @objc var maximumOutputPacketSize: Int { @objc get }

  /**
    - Selector: outputFormat
  */
  @objc var outputFormat: AVAudioFormat { @objc get }

  /**
    - Selector: primeInfo
  */
  @objc var primeInfo: AVAudioConverterPrimeInfo { @objc get @objc (setPrimeInfo:) set }

  /**
    - Selector: primeMethod
  */
  @objc var primeMethod: AVAudioConverterPrimeMethod { @objc get @objc (setPrimeMethod:) set }

  /**
    - Selector: sampleRateConverterAlgorithm
  */
  @objc var sampleRateConverterAlgorithm: String? { @objc get @objc (setSampleRateConverterAlgorithm:) set }

  /**
    - Selector: sampleRateConverterQuality
  */
  @objc var sampleRateConverterQuality: Int { @objc get @objc (setSampleRateConverterQuality:) set }
}

extension AVAudioConverter: AVAudioConverterExports {
}
