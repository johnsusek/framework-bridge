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
    - Selector: NSPredicateEditor
    - Introduced: 10.5
  */

@objc(NSPredicateEditor) protocol NSPredicateEditorExports: JSExport, NSRuleEditorExports {
  // Static Methods

  /**
    - Selector: defaultAnimationForKey:
    - Introduced: 10.5
  */
  @objc (defaultAnimationForKey:) @available(OSX 10.5, *) static func defaultAnimation(forKey: NSAnimatablePropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: rowTemplates
  */
  @objc var rowTemplates: [NSPredicateEditorRowTemplate] { @objc get @objc (setRowTemplates:) set }
}

extension NSPredicateEditor: NSPredicateEditorExports {
}
