import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Quartz

// Interface 

  /**
    - Selector: IKSaveOptions
    - Introduced: 10.5
  */

@objc(IKSaveOptions) protocol IKSaveOptionsExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: addSaveOptionsAccessoryViewToSavePanel:
  */
  @objc (addSaveOptionsAccessoryViewToSavePanel:) func addAccessoryView(to: NSSavePanel)

  /**
    - Selector: addSaveOptionsToView:
  */
  @objc (addSaveOptionsToView:) func add(to: NSView)

  // Own Instance Properties

  /**
    - Selector: delegate
  */
  @objc var delegate: AnyObject { @objc get @objc (setDelegate:) set }

  /**
    - Selector: imageProperties
  */
  @objc var imageProperties: [AnyHashable: Any] { @objc get }

  /**
    - Selector: imageUTType
  */
  @objc var imageUTType: String { @objc get }

  /**
    - Selector: userSelection
  */
  @objc var userSelection: [AnyHashable: Any] { @objc get }
}

extension IKSaveOptions: IKSaveOptionsExports {
}
