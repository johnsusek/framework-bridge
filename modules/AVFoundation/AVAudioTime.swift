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
    - Selector: AVAudioTime
    - Introduced: 10.10
  */

@objc(AVAudioTime) protocol AVAudioTimeExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: hostTimeForSeconds:
  */
  @objc (hostTimeForSeconds:) static func hostTime(forSeconds: TimeInterval) -> UInt64

  /**
    - Selector: secondsForHostTime:
  */
  @objc (secondsForHostTime:) static func seconds(forHostTime: UInt64) -> TimeInterval

  /**
    - Selector: timeWithAudioTimeStamp:sampleRate:
  */
  @objc static func createWithAudioTimeStamp_SampleRate(_ audioTimeStamp: UnsafePointer<AudioTimeStamp>, _ sampleRate: Double) -> Self

  /**
    - Selector: timeWithHostTime:
  */
  @objc static func createWithHostTime(_ hostTime: UInt64) -> Self

  /**
    - Selector: timeWithHostTime:sampleTime:atRate:
  */
  @objc static func createWithHostTime_SampleTime_AtRate(_ hostTime: UInt64, _ sampleTime: Int64, _ atRate: Double) -> Self

  /**
    - Selector: timeWithSampleTime:atRate:
  */
  @objc static func createWithSampleTime_AtRate(_ sampleTime: Int64, _ atRate: Double) -> Self

  // Instance Methods

  /**
    - Selector: extrapolateTimeFromAnchor:
  */
  @objc (extrapolateTimeFromAnchor:) func extrapolateTime(fromAnchor: AVAudioTime) -> AVAudioTime?

  // Own Instance Properties

  /**
    - Selector: audioTimeStamp
  */
  @objc var audioTimeStamp: AudioTimeStamp { @objc get }

  /**
    - Selector: hostTime
  */
  @objc var hostTime: UInt64 { @objc get }

  /**
    - Selector: hostTimeValid
  */
  @objc var isHostTimeValid: Bool { @objc get }

  /**
    - Selector: sampleRate
  */
  @objc var sampleRate: Double { @objc get }

  /**
    - Selector: sampleTime
  */
  @objc var sampleTime: Int64 { @objc get }

  /**
    - Selector: sampleTimeValid
  */
  @objc var isSampleTimeValid: Bool { @objc get }
}

extension AVAudioTime: AVAudioTimeExports {

  /**
    - Selector: timeWithAudioTimeStamp:sampleRate:
  */
  @objc public static func createWithAudioTimeStamp_SampleRate(_ audioTimeStamp: UnsafePointer<AudioTimeStamp>, _ sampleRate: Double) -> Self {
    return self.init(audioTimeStamp: audioTimeStamp, sampleRate: sampleRate)
  }


  /**
    - Selector: timeWithHostTime:
  */
  @objc public static func createWithHostTime(_ hostTime: UInt64) -> Self {
    return self.init(hostTime: hostTime)
  }


  /**
    - Selector: timeWithHostTime:sampleTime:atRate:
  */
  @objc public static func createWithHostTime_SampleTime_AtRate(_ hostTime: UInt64, _ sampleTime: Int64, _ atRate: Double) -> Self {
    return self.init(hostTime: hostTime, sampleTime: sampleTime, atRate: atRate)
  }


  /**
    - Selector: timeWithSampleTime:atRate:
  */
  @objc public static func createWithSampleTime_AtRate(_ sampleTime: Int64, _ atRate: Double) -> Self {
    return self.init(sampleTime: sampleTime, atRate: atRate)
  }

}
