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
    - Selector: NSCursor
    - Introduced: 10.0
  */

@objc(NSCursor) protocol NSCursorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: hide
  */
  @objc static func hide()

  /**
    - Selector: pop
  */
  @objc static func pop()

  /**
    - Selector: setHiddenUntilMouseMoves:
  */
  @objc static func setHiddenUntilMouseMoves(_: Bool)

  /**
    - Selector: unhide
  */
  @objc static func unhide()

  // Own Static Properties

  /**
    - Selector: IBeamCursor
  */
  @objc static var iBeam: NSCursor { @objc (IBeamCursor) get }

  /**
    - Selector: IBeamCursorForVerticalLayout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var iBeamCursorForVerticalLayout: NSCursor { @objc (IBeamCursorForVerticalLayout) get }

  /**
    - Selector: arrowCursor
  */
  @objc static var arrow: NSCursor { @objc (arrowCursor) get }

  /**
    - Selector: closedHandCursor
  */
  @objc static var closedHand: NSCursor { @objc (closedHandCursor) get }

  /**
    - Selector: contextualMenuCursor
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var contextualMenu: NSCursor { @objc (contextualMenuCursor) get }

  /**
    - Selector: crosshairCursor
  */
  @objc static var crosshair: NSCursor { @objc (crosshairCursor) get }

  /**
    - Selector: currentCursor
  */
  @objc static var current: NSCursor { @objc (currentCursor) get }

  /**
    - Selector: currentSystemCursor
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var currentSystem: NSCursor? { @objc (currentSystemCursor) get }

  /**
    - Selector: disappearingItemCursor
  */
  @objc static var disappearingItem: NSCursor { @objc (disappearingItemCursor) get }

  /**
    - Selector: dragCopyCursor
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var dragCopy: NSCursor { @objc (dragCopyCursor) get }

  /**
    - Selector: dragLinkCursor
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var dragLink: NSCursor { @objc (dragLinkCursor) get }

  /**
    - Selector: openHandCursor
  */
  @objc static var openHand: NSCursor { @objc (openHandCursor) get }

  /**
    - Selector: operationNotAllowedCursor
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var operationNotAllowed: NSCursor { @objc (operationNotAllowedCursor) get }

  /**
    - Selector: pointingHandCursor
  */
  @objc static var pointingHand: NSCursor { @objc (pointingHandCursor) get }

  /**
    - Selector: resizeDownCursor
  */
  @objc static var resizeDown: NSCursor { @objc (resizeDownCursor) get }

  /**
    - Selector: resizeLeftCursor
  */
  @objc static var resizeLeft: NSCursor { @objc (resizeLeftCursor) get }

  /**
    - Selector: resizeLeftRightCursor
  */
  @objc static var resizeLeftRight: NSCursor { @objc (resizeLeftRightCursor) get }

  /**
    - Selector: resizeRightCursor
  */
  @objc static var resizeRight: NSCursor { @objc (resizeRightCursor) get }

  /**
    - Selector: resizeUpCursor
  */
  @objc static var resizeUp: NSCursor { @objc (resizeUpCursor) get }

  /**
    - Selector: resizeUpDownCursor
  */
  @objc static var resizeUpDown: NSCursor { @objc (resizeUpDownCursor) get }

  // Instance Methods

  /**
    - Selector: pop
  */
  @objc func pop()

  /**
    - Selector: push
  */
  @objc func push()

  /**
    - Selector: set
  */
  @objc func set()

  // Own Instance Properties

  /**
    - Selector: hotSpot
  */
  @objc var hotSpot: CGPoint { @objc get }

  /**
    - Selector: image
  */
  @objc var image: NSImage { @objc get }
}

extension NSCursor: NSCursorExports {
}
