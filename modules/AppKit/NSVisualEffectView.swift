import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSVisualEffectView
    - Introduced: 10.10
  */

@objc(NSVisualEffectView) protocol NSVisualEffectViewExports: JSExport, NSViewExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: blendingMode
  */
  @objc var blendingMode: NSVisualEffectView.BlendingMode { @objc get @objc (setBlendingMode:) set }

  /**
    - Selector: emphasized
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) var isEmphasized: Bool { @objc get @objc (setEmphasized:) set }

  /**
    - Selector: interiorBackgroundStyle
  */
  @objc var interiorBackgroundStyle: NSView.BackgroundStyle { @objc get }

  /**
    - Selector: maskImage
  */
  @objc var maskImage: NSImage? { @objc get @objc (setMaskImage:) set }

  /**
    - Selector: material
  */
  @objc var material: NSVisualEffectView.Material { @objc get @objc (setMaterial:) set }

  /**
    - Selector: state
  */
  @objc var state: NSVisualEffectView.State { @objc get @objc (setState:) set }
}

extension NSVisualEffectView: NSVisualEffectViewExports {
}
