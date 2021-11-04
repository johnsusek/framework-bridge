import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSScreen
  */

@objc(NSScreen) protocol NSScreenExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: deepestScreen
  */
  @objc static var deepest: NSScreen? { @objc (deepestScreen) get }

  /**
    - Selector: mainScreen
  */
  @objc static var main: NSScreen? { @objc (mainScreen) get }

  /**
    - Selector: screens
  */
  @objc static var screens: [NSScreen] { @objc get }

  /**
    - Selector: screensHaveSeparateSpaces
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static var screensHaveSeparateSpaces: Bool { @objc get }

  // Instance Methods

  /**
    - Selector: backingAlignedRect:options:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func backingAlignedRect(_: CGRect, options: AlignmentOptions) -> CGRect

  /**
    - Selector: canRepresentDisplayGamut:
    - Introduced: 10.12
  */
  @objc (canRepresentDisplayGamut:) @available(OSX 10.12, *) func canRepresent(_: NSDisplayGamut) -> Bool

  /**
    - Selector: convertRectFromBacking:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func convertRectFromBacking(_: CGRect) -> CGRect

  /**
    - Selector: convertRectToBacking:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func convertRectToBacking(_: CGRect) -> CGRect

  // Own Instance Properties

  /**
    - Selector: backingScaleFactor
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var backingScaleFactor: CGFloat { @objc get }

  /**
    - Selector: colorSpace
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var colorSpace: NSColorSpace? { @objc get }

  /**
    - Selector: depth
  */
  @objc var depth: NSWindow.Depth { @objc get }

  /**
    - Selector: deviceDescription
  */
  @objc var deviceDescription: [NSDeviceDescriptionKey: Any] { @objc get }

  /**
    - Selector: frame
  */
  @objc var frame: CGRect { @objc get }

  /**
    - Selector: localizedName
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var localizedName: String { @objc get }

  /**
    - Selector: maximumExtendedDynamicRangeColorComponentValue
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maximumExtendedDynamicRangeColorComponentValue: CGFloat { @objc get }

  /**
    - Selector: maximumPotentialExtendedDynamicRangeColorComponentValue
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var maximumPotentialExtendedDynamicRangeColorComponentValue: CGFloat { @objc get }

  /**
    - Selector: maximumReferenceExtendedDynamicRangeColorComponentValue
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var maximumReferenceExtendedDynamicRangeColorComponentValue: CGFloat { @objc get }

  /**
    - Selector: supportedWindowDepths
  */
  @objc var supportedWindowDepths: UnsafePointer<NSWindow.Depth> { @objc get }

  /**
    - Selector: visibleFrame
  */
  @objc var visibleFrame: CGRect { @objc get }
}

extension NSScreen: NSScreenExports {
}
