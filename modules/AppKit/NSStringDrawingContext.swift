import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSStringDrawingContext
    - Introduced: 10.11
  */

@objc(NSStringDrawingContext) protocol NSStringDrawingContextExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: actualScaleFactor
  */
  @objc var actualScaleFactor: CGFloat { @objc get }

  /**
    - Selector: minimumScaleFactor
  */
  @objc var minimumScaleFactor: CGFloat { @objc get @objc (setMinimumScaleFactor:) set }

  /**
    - Selector: totalBounds
  */
  @objc var totalBounds: CGRect { @objc get }
}

extension NSStringDrawingContext: NSStringDrawingContextExports {
}
