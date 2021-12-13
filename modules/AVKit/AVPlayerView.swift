import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AVKit

// Interface 

  /**
    - Selector: AVPlayerView
    - Introduced: 10.9
  */

@objc(AVPlayerView) protocol AVPlayerViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: beginTrimmingWithCompletionHandler:
  */
  // jsvalue @objc func beginTrimming(completionHandler: JSValue)

  /**
    - Selector: flashChapterNumber:chapterTitle:
  */
  @objc func flashChapterNumber(_ p0: Int, chapterTitle: String?)

  // Own Instance Properties

  /**
    - Selector: actionPopUpButtonMenu
  */
  @objc var actionPopUpButtonMenu: NSMenu? { @objc get @objc (setActionPopUpButtonMenu:) set }

  /**
    - Selector: allowsPictureInPicturePlayback
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var allowsPictureInPicturePlayback: Bool { @objc get @objc (setAllowsPictureInPicturePlayback:) set }

  /**
    - Selector: canBeginTrimming
  */
  @objc var canBeginTrimming: Bool { @objc get }

  /**
    - Selector: contentOverlayView
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var contentOverlayView: NSView? { @objc get }

  /**
    - Selector: controlsStyle
  */
  @objc var controlsStyle: AVPlayerViewControlsStyle { @objc get @objc (setControlsStyle:) set }

  /**
    - Selector: pictureInPictureDelegate
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var pictureInPictureDelegate: AVPlayerViewPictureInPictureDelegate? { @objc get @objc (setPictureInPictureDelegate:) set }

  /**
    - Selector: player
  */
  @objc var player: AVPlayer? { @objc get @objc (setPlayer:) set }

  /**
    - Selector: readyForDisplay
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var isReadyForDisplay: Bool { @objc get }

  /**
    - Selector: showsFrameSteppingButtons
  */
  @objc var showsFrameSteppingButtons: Bool { @objc get @objc (setShowsFrameSteppingButtons:) set }

  /**
    - Selector: showsFullScreenToggleButton
  */
  @objc var showsFullScreenToggleButton: Bool { @objc get @objc (setShowsFullScreenToggleButton:) set }

  /**
    - Selector: showsSharingServiceButton
  */
  @objc var showsSharingServiceButton: Bool { @objc get @objc (setShowsSharingServiceButton:) set }

  /**
    - Selector: showsTimecodes
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var showsTimecodes: Bool { @objc get @objc (setShowsTimecodes:) set }

  /**
    - Selector: updatesNowPlayingInfoCenter
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var updatesNowPlayingInfoCenter: Bool { @objc get @objc (setUpdatesNowPlayingInfoCenter:) set }

  /**
    - Selector: videoBounds
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var videoBounds: CGRect { @objc get }

  /**
    - Selector: videoGravity
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) var videoGravity: AVLayerVideoGravity { @objc get @objc (setVideoGravity:) set }
}

extension AVPlayerView: AVPlayerViewExports {
}
