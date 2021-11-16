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
    - Selector: NSDraggingSession
    - Introduced: 10.7
  */

@objc(NSDraggingSession) protocol NSDraggingSessionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: enumerateDraggingItemsWithOptions:forView:classes:searchOptions:usingBlock:
  */
  // jsvalue @objc func enumerateDraggingItems(options: NSDraggingItemEnumerationOptions, `for`: NSView?, classes: [AnyClass], searchOptions: [NSPasteboard.ReadingOptionKey: Any], using: JSValue)

  // Own Instance Properties

  /**
    - Selector: animatesToStartingPositionsOnCancelOrFail
  */
  @objc var animatesToStartingPositionsOnCancelOrFail: Bool { @objc get @objc (setAnimatesToStartingPositionsOnCancelOrFail:) set }

  /**
    - Selector: draggingFormation
  */
  @objc var draggingFormation: NSDraggingFormation { @objc get @objc (setDraggingFormation:) set }

  /**
    - Selector: draggingLeaderIndex
  */
  @objc var draggingLeaderIndex: Int { @objc get @objc (setDraggingLeaderIndex:) set }

  /**
    - Selector: draggingLocation
  */
  @objc var draggingLocation: CGPoint { @objc get }

  /**
    - Selector: draggingPasteboard
  */
  @objc var draggingPasteboard: NSPasteboard { @objc get }

  /**
    - Selector: draggingSequenceNumber
  */
  @objc var draggingSequenceNumber: Int { @objc get }
}

extension NSDraggingSession: NSDraggingSessionExports {
}
