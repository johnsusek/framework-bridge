import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPredicateEditor
    - name: NSPredicateEditor
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSPredicateEditor) protocol NSPredicateEditorExports: JSExport, NSRuleEditorExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: rowTemplates
    - name: rowTemplates
    - argLabels: 
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
