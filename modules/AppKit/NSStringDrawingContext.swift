import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSStringDrawingContext
    - name: NSStringDrawingContext
    - argLabels: 
    - Introduced: 10.11
  */

@objc(NSStringDrawingContext) protocol NSStringDrawingContextExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: actualScaleFactor
    - name: actualScaleFactor
    - argLabels: 
  */
  @objc var actualScaleFactor: CGFloat { @objc get }

  /**
    - jsName: minimumScaleFactor
    - name: minimumScaleFactor
    - argLabels: 
  */
  @objc var minimumScaleFactor: CGFloat { @objc get @objc (setMinimumScaleFactor:) set }

  /**
    - jsName: totalBounds
    - name: totalBounds
    - argLabels: 
  */
  @objc var totalBounds: CGRect { @objc get }
}

extension NSStringDrawingContext: NSStringDrawingContextExports {
}
