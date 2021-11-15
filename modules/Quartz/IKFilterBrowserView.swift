import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Quartz

// Interface 

  /**
    - Selector: IKFilterBrowserView
  */

@objc(IKFilterBrowserView) protocol IKFilterBrowserViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Instance Methods

  /**
    - Selector: filterName
  */
  @objc func filterName() -> String

  /**
    - Selector: setPreviewState:
  */
  @objc func setPreviewState(_: Bool)
}

extension IKFilterBrowserView: IKFilterBrowserViewExports {
}
