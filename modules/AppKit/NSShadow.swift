import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSShadow
    - name: NSShadow
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSShadow) protocol NSShadowExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: set
    - name: set
    - argLabels: 
    - constructorTokens: 
  */
  @objc func set()

  // Own Instance Properties

  /**
    - jsName: shadowBlurRadius
    - name: shadowBlurRadius
    - argLabels: 
  */
  @objc var shadowBlurRadius: CGFloat { @objc get @objc (setShadowBlurRadius:) set }

  /**
    - jsName: shadowColor
    - name: shadowColor
    - argLabels: 
  */
  @objc var shadowColor: NSColor? { @objc get @objc (setShadowColor:) set }

  /**
    - jsName: shadowOffset
    - name: shadowOffset
    - argLabels: 
  */
  @objc var shadowOffset: CGSize { @objc get @objc (setShadowOffset:) set }
}

extension NSShadow: NSShadowExports {
}
