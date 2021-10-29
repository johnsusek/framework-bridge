import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPanel
    - name: NSPanel
    - argLabels: 
  */

@objc(NSPanel) protocol NSPanelExports: JSExport, NSWindowExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: becomesKeyOnlyIfNeeded
    - name: becomesKeyOnlyIfNeeded
    - argLabels: 
  */
  @objc var becomesKeyOnlyIfNeeded: Bool { @objc get @objc (setBecomesKeyOnlyIfNeeded:) set }

  /**
    - jsName: isFloatingPanel
    - name: floatingPanel
    - argLabels: 
    - obsoleted: 3
    - renamed: isFloatingPanel
  */
  @objc var isFloatingPanel: Bool { @objc get @objc (setFloatingPanel:) set }

  /**
    - jsName: worksWhenModal
    - name: worksWhenModal
    - argLabels: 
  */
  @objc var worksWhenModal: Bool { @objc get @objc (setWorksWhenModal:) set }
}

extension NSPanel: NSPanelExports {
}
