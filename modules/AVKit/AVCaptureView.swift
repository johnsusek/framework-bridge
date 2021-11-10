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
    - Selector: AVCaptureView
    - Introduced: 10.10
  */

@objc(AVCaptureView) protocol AVCaptureViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: setSession:showVideoPreview:showAudioPreview:
  */
  @objc func setSession(_: AVCaptureSession?, showVideoPreview: Bool, showAudioPreview: Bool)

  // Own Instance Properties

  /**
    - Selector: controlsStyle
  */
  @objc var controlsStyle: AVCaptureViewControlsStyle { @objc get @objc (setControlsStyle:) set }

  /**
    - Selector: delegate
  */
  @objc var delegate: AVCaptureViewDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: fileOutput
  */
  @objc var fileOutput: AVCaptureFileOutput? { @objc get }

  /**
    - Selector: session
  */
  @objc var session: AVCaptureSession? { @objc get }

  /**
    - Selector: videoGravity
  */
  @objc var videoGravity: AVLayerVideoGravity { @objc get @objc (setVideoGravity:) set }
}

@objc protocol CaptureViewExports: JSExport, NSViewExports {
  // Static Methods
}

@objc(CaptureView) public class CaptureView: AVCaptureView, CaptureViewExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension AVCaptureView: AVCaptureViewExports {
}
