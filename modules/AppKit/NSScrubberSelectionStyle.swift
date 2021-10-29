import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScrubberSelectionStyle
    - name: NSScrubberSelectionStyle
    - argLabels: 
    - Introduced: 10.12.2
  */

@objc(NSScrubberSelectionStyle) protocol NSScrubberSelectionStyleExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: outlineOverlay
    - name: outlineOverlayStyle
    - argLabels: 
    - obsoleted: 3
    - renamed: outlineOverlay
  */
  @objc static var outlineOverlay: NSScrubberSelectionStyle { @objc (outlineOverlayStyle) get }

  /**
    - jsName: roundedBackground
    - name: roundedBackgroundStyle
    - argLabels: 
    - obsoleted: 3
    - renamed: roundedBackground
  */
  @objc static var roundedBackground: NSScrubberSelectionStyle { @objc (roundedBackgroundStyle) get }

  // Instance Methods

  /**
    - jsName: makeSelectionView
    - name: makeSelectionView
    - argLabels: 
    - constructorTokens: 
  */
  @objc func makeSelectionView() -> NSScrubberSelectionView?
}

extension NSScrubberSelectionStyle: NSScrubberSelectionStyleExports {
}
