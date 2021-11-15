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
    - Selector: IKFilterUIView
  */

@objc(IKFilterUIView) protocol IKFilterUIViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  /**
    - Selector: viewWithFrame:filter:
  */
  @objc (viewWithFrame:filter:) static func view(withFrame: CGRect, filter: CIFilter) -> Any!

  // Instance Methods

  /**
    - Selector: filter
  */
  @objc func filter() -> CIFilter

  /**
    - Selector: objectController
  */
  @objc func objectController() -> NSObjectController
}

extension IKFilterUIView: IKFilterUIViewExports {
}
