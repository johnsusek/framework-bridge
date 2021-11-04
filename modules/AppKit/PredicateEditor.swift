import AppKit
import JavaScriptCore
import Quartz
import AVKit
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

@objc protocol PredicateEditorExports: JSExport, NSRuleEditorExports {
  // Static Methods
}

@objc(PredicateEditor) public class PredicateEditor: NSPredicateEditor, PredicateEditorExports, JSOverridableView {
  public var draw: JSValue?
  
  public override func draw(_ dirtyRect: NSRect) {
    super.draw(dirtyRect)
    drawOverride(dirtyRect)
  }

}

extension NSPredicateEditor: NSPredicateEditorExports {
}
