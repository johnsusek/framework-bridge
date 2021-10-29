import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSCursor
    - name: NSCursor
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSCursor) protocol NSCursorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: hide
    - name: hide
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func hide()

  /**
    - jsName: pop
    - name: pop
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func pop()

  /**
    - jsName: setHiddenUntilMouseMoves
    - name: setHiddenUntilMouseMoves:
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func setHiddenUntilMouseMoves(_: Bool)

  /**
    - jsName: unhide
    - name: unhide
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func unhide()

  // Own Static Properties

  /**
    - jsName: iBeam
    - name: IBeamCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: iBeam
  */
  @objc static var iBeam: NSCursor { @objc (IBeamCursor) get }

  /**
    - jsName: iBeamCursorForVerticalLayout
    - name: IBeamCursorForVerticalLayout
    - argLabels: 
    - available: 10.7
    - obsoleted: 3
    - renamed: iBeamCursorForVerticalLayout
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static var iBeamCursorForVerticalLayout: NSCursor { @objc (IBeamCursorForVerticalLayout) get }

  /**
    - jsName: arrow
    - name: arrowCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: arrow
  */
  @objc static var arrow: NSCursor { @objc (arrowCursor) get }

  /**
    - jsName: closedHand
    - name: closedHandCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: closedHand
  */
  @objc static var closedHand: NSCursor { @objc (closedHandCursor) get }

  /**
    - jsName: contextualMenu
    - name: contextualMenuCursor
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: contextualMenu
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var contextualMenu: NSCursor { @objc (contextualMenuCursor) get }

  /**
    - jsName: crosshair
    - name: crosshairCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: crosshair
  */
  @objc static var crosshair: NSCursor { @objc (crosshairCursor) get }

  /**
    - jsName: current
    - name: currentCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: current
  */
  @objc static var current: NSCursor { @objc (currentCursor) get }

  /**
    - jsName: currentSystem
    - name: currentSystemCursor
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: currentSystem
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var currentSystem: NSCursor? { @objc (currentSystemCursor) get }

  /**
    - jsName: disappearingItem
    - name: disappearingItemCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: disappearingItem
  */
  @objc static var disappearingItem: NSCursor { @objc (disappearingItemCursor) get }

  /**
    - jsName: dragCopy
    - name: dragCopyCursor
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: dragCopy
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var dragCopy: NSCursor { @objc (dragCopyCursor) get }

  /**
    - jsName: dragLink
    - name: dragLinkCursor
    - argLabels: 
    - available: 10.6
    - obsoleted: 3
    - renamed: dragLink
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) static var dragLink: NSCursor { @objc (dragLinkCursor) get }

  /**
    - jsName: openHand
    - name: openHandCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: openHand
  */
  @objc static var openHand: NSCursor { @objc (openHandCursor) get }

  /**
    - jsName: operationNotAllowed
    - name: operationNotAllowedCursor
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: operationNotAllowed
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static var operationNotAllowed: NSCursor { @objc (operationNotAllowedCursor) get }

  /**
    - jsName: pointingHand
    - name: pointingHandCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: pointingHand
  */
  @objc static var pointingHand: NSCursor { @objc (pointingHandCursor) get }

  /**
    - jsName: resizeDown
    - name: resizeDownCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: resizeDown
  */
  @objc static var resizeDown: NSCursor { @objc (resizeDownCursor) get }

  /**
    - jsName: resizeLeft
    - name: resizeLeftCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: resizeLeft
  */
  @objc static var resizeLeft: NSCursor { @objc (resizeLeftCursor) get }

  /**
    - jsName: resizeLeftRight
    - name: resizeLeftRightCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: resizeLeftRight
  */
  @objc static var resizeLeftRight: NSCursor { @objc (resizeLeftRightCursor) get }

  /**
    - jsName: resizeRight
    - name: resizeRightCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: resizeRight
  */
  @objc static var resizeRight: NSCursor { @objc (resizeRightCursor) get }

  /**
    - jsName: resizeUp
    - name: resizeUpCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: resizeUp
  */
  @objc static var resizeUp: NSCursor { @objc (resizeUpCursor) get }

  /**
    - jsName: resizeUpDown
    - name: resizeUpDownCursor
    - argLabels: 
    - obsoleted: 3
    - renamed: resizeUpDown
  */
  @objc static var resizeUpDown: NSCursor { @objc (resizeUpDownCursor) get }

  // Instance Methods

  /**
    - jsName: createWithImage
    - name: initWithImage:hotSpot:
    - argLabels: hotSpot
    - constructorTokens: image, hotSpot
  */
  @objc static func createWithImage(_: NSImage, hotSpot: CGPoint) -> Self

  /**
    - jsName: pop
    - name: pop
    - argLabels: 
    - constructorTokens: 
  */
  @objc func pop()

  /**
    - jsName: push
    - name: push
    - argLabels: 
    - constructorTokens: 
  */
  @objc func push()

  /**
    - jsName: set
    - name: set
    - argLabels: 
    - constructorTokens: 
  */
  @objc func set()

  // Own Instance Properties

  /**
    - jsName: hotSpot
    - name: hotSpot
    - argLabels: 
  */
  @objc var hotSpot: CGPoint { @objc get }

  /**
    - jsName: image
    - name: image
    - argLabels: 
  */
  @objc var image: NSImage { @objc get }
}

extension NSCursor: NSCursorExports {
  @objc public static func createWithImage(_ image: NSImage, hotSpot: CGPoint) -> Self {
    return self.init(image: image, hotSpot: hotSpot)
  }

}
