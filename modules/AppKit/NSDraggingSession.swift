import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSDraggingSession
    - name: NSDraggingSession
    - argLabels: 
    - Introduced: 10.7
  */

@objc(NSDraggingSession) protocol NSDraggingSessionExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: enumerateDraggingItems
    - name: enumerateDraggingItemsWithOptions:forView:classes:searchOptions:usingBlock:
    - argLabels: options, for, classes, searchOptions, using
    - constructorTokens: 
    - obsoleted: 3
    - renamed: enumerateDraggingItems(options:for:classes:searchOptions:using:)
  */
  // jsvalue - @objc (enumerateDraggingItemsWithOptions:forView:classes:searchOptions:usingBlock:) func enumerateDraggingItems(options: NSDraggingItemEnumerationOptions, `for`: NSView?, classes: [AnyClass], searchOptions: [NSPasteboard.ReadingOptionKey: Any], using: JSValue)

  // Own Instance Properties

  /**
    - jsName: animatesToStartingPositionsOnCancelOrFail
    - name: animatesToStartingPositionsOnCancelOrFail
    - argLabels: 
  */
  @objc var animatesToStartingPositionsOnCancelOrFail: Bool { @objc get @objc (setAnimatesToStartingPositionsOnCancelOrFail:) set }

  /**
    - jsName: draggingFormation
    - name: draggingFormation
    - argLabels: 
  */
  @objc var draggingFormation: NSDraggingFormation { @objc get @objc (setDraggingFormation:) set }

  /**
    - jsName: draggingLeaderIndex
    - name: draggingLeaderIndex
    - argLabels: 
  */
  @objc var draggingLeaderIndex: Int { @objc get @objc (setDraggingLeaderIndex:) set }

  /**
    - jsName: draggingLocation
    - name: draggingLocation
    - argLabels: 
  */
  @objc var draggingLocation: CGPoint { @objc get }

  /**
    - jsName: draggingPasteboard
    - name: draggingPasteboard
    - argLabels: 
  */
  @objc var draggingPasteboard: NSPasteboard { @objc get }

  /**
    - jsName: draggingSequenceNumber
    - name: draggingSequenceNumber
    - argLabels: 
  */
  @objc var draggingSequenceNumber: Int { @objc get }
}

extension NSDraggingSession: NSDraggingSessionExports {
}
