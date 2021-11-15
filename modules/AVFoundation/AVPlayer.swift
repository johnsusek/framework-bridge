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
    - Selector: AVPlayer
    - Introduced: 10.7
  */

@objc(AVPlayer) protocol AVPlayerExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: playerWithPlayerItem:
  */
  @objc static func createWithPlayerItem(_ playerItem: AVPlayerItem?) -> Self

  /**
    - Selector: playerWithURL:
  */
  @objc static func createWithURL(_ url: URL) -> Self

  // Own Static Properties

  /**
    - Selector: eligibleForHDRPlayback
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var eligibleForHDRPlayback: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: addBoundaryTimeObserverForTimes:queue:usingBlock:
  */
  // jsvalue @objc func addBoundaryTimeObserver(forTimes: [NSValue], queue: DispatchQueue?, using: JSValue) -> Any

  /**
    - Selector: addPeriodicTimeObserverForInterval:queue:usingBlock:
  */
  // jsvalue @objc func addPeriodicTimeObserver(forInterval: CMTime, queue: DispatchQueue?, using: JSValue) -> Any

  /**
    - Selector: cancelPendingPrerolls
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) func cancelPendingPrerolls()

  /**
    - Selector: currentTime
  */
  @objc func currentTime() -> CMTime

  /**
    - Selector: mediaSelectionCriteriaForMediaCharacteristic:
    - Introduced: 10.9
  */
  @objc (mediaSelectionCriteriaForMediaCharacteristic:) @available(OSX 10.9, *) func mediaSelectionCriteria(forMediaCharacteristic: AVMediaCharacteristic) -> AVPlayerMediaSelectionCriteria?

  /**
    - Selector: pause
  */
  @objc func pause()

  /**
    - Selector: play
  */
  @objc func play()

  /**
    - Selector: playImmediatelyAtRate:
    - Introduced: 10.12
  */
  @objc (playImmediatelyAtRate:) @available(OSX 10.12, *) func playImmediately(atRate: Float)

  /**
    - Selector: prerollAtRate:completionHandler:
    - Introduced: 10.8
  */
  // jsvalue @objc @available(OSX 10.8, *) func preroll(atRate: Float, completionHandler: JSValue)

  /**
    - Selector: removeTimeObserver:
  */
  @objc func removeTimeObserver(_: Any)

  /**
    - Selector: replaceCurrentItemWithPlayerItem:
  */
  @objc (replaceCurrentItemWithPlayerItem:) func replaceCurrentItem(with: AVPlayerItem?)

  /**
    - Selector: seekToDate:
  */
  @objc (seekToDate:) func seek(to: Date)

  /**
    - Selector: seekToDate:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func seek(to: Date, completionHandler: JSValue)

  /**
    - Selector: seekToTime:
  */
  @objc (seekToTime:) func seek(to: CMTime)

  /**
    - Selector: seekToTime:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func seek(to: CMTime, completionHandler: JSValue)

  /**
    - Selector: seekToTime:toleranceBefore:toleranceAfter:
  */
  @objc (seekToTime:toleranceBefore:toleranceAfter:) func seek(to: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime)

  /**
    - Selector: seekToTime:toleranceBefore:toleranceAfter:completionHandler:
    - Introduced: 10.7
  */
  // jsvalue @objc @available(OSX 10.7, *) func seek(to: CMTime, toleranceBefore: CMTime, toleranceAfter: CMTime, completionHandler: JSValue)

  /**
    - Selector: setMediaSelectionCriteria:forMediaCharacteristic:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) func setMediaSelectionCriteria(_: AVPlayerMediaSelectionCriteria?, forMediaCharacteristic: AVMediaCharacteristic)

  // Own Instance Properties

  /**
    - Selector: actionAtItemEnd
  */
  @objc var actionAtItemEnd: AVPlayer.ActionAtItemEnd { @objc get @objc (setActionAtItemEnd:) set }

  /**
    - Selector: allowsExternalPlayback
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var allowsExternalPlayback: Bool { @objc get @objc (setAllowsExternalPlayback:) set }

  /**
    - Selector: appliesMediaSelectionCriteriaAutomatically
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var appliesMediaSelectionCriteriaAutomatically: Bool { @objc get @objc (setAppliesMediaSelectionCriteriaAutomatically:) set }

  /**
    - Selector: audioOutputDeviceUniqueID
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var audioOutputDeviceUniqueID: String? { @objc get @objc (setAudioOutputDeviceUniqueID:) set }

  /**
    - Selector: automaticallyWaitsToMinimizeStalling
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var automaticallyWaitsToMinimizeStalling: Bool { @objc get @objc (setAutomaticallyWaitsToMinimizeStalling:) set }

  /**
    - Selector: currentItem
  */
  @objc var currentItem: AVPlayerItem? { @objc get }

  /**
    - Selector: error
  */
  @objc var error: Error? { @objc get }

  /**
    - Selector: externalPlaybackActive
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isExternalPlaybackActive: Bool { @objc get }

  /**
    - Selector: masterClock
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var masterClock: CMClock? { @objc get @objc (setMasterClock:) set }

  /**
    - Selector: muted
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var isMuted: Bool { @objc get @objc (setMuted:) set }

  /**
    - Selector: outputObscuredDueToInsufficientExternalProtection
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isOutputObscuredDueToInsufficientExternalProtection: Bool { @objc (outputObscuredDueToInsufficientExternalProtection) get }

  /**
    - Selector: preferredVideoDecoderGPURegistryID
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var preferredVideoDecoderGPURegistryID: UInt64 { @objc get @objc (setPreferredVideoDecoderGPURegistryID:) set }

  /**
    - Selector: preventsDisplaySleepDuringVideoPlayback
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) var preventsDisplaySleepDuringVideoPlayback: Bool { @objc get @objc (setPreventsDisplaySleepDuringVideoPlayback:) set }

  /**
    - Selector: rate
  */
  @objc var rate: Float { @objc get @objc (setRate:) set }

  /**
    - Selector: reasonForWaitingToPlay
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var reasonForWaitingToPlay: AVPlayer.WaitingReason? { @objc get }

  /**
    - Selector: status
  */
  @objc var status: AVPlayer.Status { @objc get }

  /**
    - Selector: timeControlStatus
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var timeControlStatus: AVPlayer.TimeControlStatus { @objc get }

  /**
    - Selector: volume
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var volume: Float { @objc get @objc (setVolume:) set }
}

extension AVPlayer: AVPlayerExports {

  /**
    - Selector: playerWithPlayerItem:
  */
  @objc public static func createWithPlayerItem(_ playerItem: AVPlayerItem?) -> Self {
    return self.init(playerItem: playerItem)
  }


  /**
    - Selector: playerWithURL:
  */
  @objc public static func createWithURL(_ url: URL) -> Self {
    return self.init(url: url)
  }

}
