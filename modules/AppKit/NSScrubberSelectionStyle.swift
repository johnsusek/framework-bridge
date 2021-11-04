import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScrubberSelectionStyle
    - Introduced: 10.12.2
  */

@objc(NSScrubberSelectionStyle) protocol NSScrubberSelectionStyleExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: outlineOverlayStyle
  */
  @objc static var outlineOverlay: NSScrubberSelectionStyle { @objc (outlineOverlayStyle) get }

  /**
    - Selector: roundedBackgroundStyle
  */
  @objc static var roundedBackground: NSScrubberSelectionStyle { @objc (roundedBackgroundStyle) get }

  // Instance Methods

  /**
    - Selector: makeSelectionView
  */
  @objc func makeSelectionView() -> NSScrubberSelectionView?
}

extension NSScrubberSelectionStyle: NSScrubberSelectionStyleExports {
}
