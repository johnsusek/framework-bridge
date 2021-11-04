import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSShadow
    - Introduced: 10.0
  */

@objc(NSShadow) protocol NSShadowExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: set
  */
  @objc func set()

  // Own Instance Properties

  /**
    - Selector: shadowBlurRadius
  */
  @objc var shadowBlurRadius: CGFloat { @objc get @objc (setShadowBlurRadius:) set }

  /**
    - Selector: shadowColor
  */
  @objc var shadowColor: NSColor? { @objc get @objc (setShadowColor:) set }

  /**
    - Selector: shadowOffset
  */
  @objc var shadowOffset: CGSize { @objc get @objc (setShadowOffset:) set }
}

extension NSShadow: NSShadowExports {
}
