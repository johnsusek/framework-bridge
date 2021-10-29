import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDockTile
    - name: NSDockTile
    - argLabels: 
    - Introduced: 10.5
  */

@objc(NSDockTile) protocol NSDockTileExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: display
    - name: display
    - argLabels: 
    - constructorTokens: 
  */
  @objc func display()

  // Own Instance Properties

  /**
    - jsName: badgeLabel
    - name: badgeLabel
    - argLabels: 
  */
  @objc var badgeLabel: String? { @objc get @objc (setBadgeLabel:) set }

  /**
    - jsName: contentView
    - name: contentView
    - argLabels: 
  */
  @objc var contentView: NSView? { @objc get @objc (setContentView:) set }

  /**
    - jsName: owner
    - name: owner
    - argLabels: 
  */
  @objc var owner: AnyObject? { @objc get }

  /**
    - jsName: showsApplicationBadge
    - name: showsApplicationBadge
    - argLabels: 
  */
  @objc var showsApplicationBadge: Bool { @objc get @objc (setShowsApplicationBadge:) set }

  /**
    - jsName: size
    - name: size
    - argLabels: 
  */
  @objc var size: CGSize { @objc get }
}

extension NSDockTile: NSDockTileExports {
}
