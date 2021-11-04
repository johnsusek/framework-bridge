import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSDockTile
    - Introduced: 10.5
  */

@objc(NSDockTile) protocol NSDockTileExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: display
  */
  @objc func display()

  // Own Instance Properties

  /**
    - Selector: badgeLabel
  */
  @objc var badgeLabel: String? { @objc get @objc (setBadgeLabel:) set }

  /**
    - Selector: contentView
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - Selector: owner
  */
  @objc var owner: AnyObject? { @objc get }

  /**
    - Selector: showsApplicationBadge
  */
  @objc var showsApplicationBadge: Bool { @objc get @objc (setShowsApplicationBadge:) set }

  /**
    - Selector: size
  */
  @objc var size: CGSize { @objc get }
}

extension NSDockTile: NSDockTileExports {
}
