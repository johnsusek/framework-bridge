import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSScreen
    - name: NSScreen
    - argLabels: 
  */

@objc(NSScreen) protocol NSScreenExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - jsName: deepest
    - name: deepestScreen
    - argLabels: 
    - obsoleted: 3
    - renamed: deepest
  */
  @objc static var deepest: NSScreen? { @objc (deepestScreen) get }

  /**
    - jsName: main
    - name: mainScreen
    - argLabels: 
    - obsoleted: 3
    - renamed: main
  */
  @objc static var main: NSScreen? { @objc (mainScreen) get }

  /**
    - jsName: screens
    - name: screens
    - argLabels: 
  */
  @objc static var screens: [NSScreen] { @objc get }

  /**
    - jsName: screensHaveSeparateSpaces
    - name: screensHaveSeparateSpaces
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static var screensHaveSeparateSpaces: Bool { @objc get }

  // Instance Methods

  /**
    - jsName: backingAlignedRect
    - name: backingAlignedRect:options:
    - argLabels: options
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func backingAlignedRect(_: CGRect, options: AlignmentOptions) -> CGRect

  /**
    - jsName: canRepresent
    - name: canRepresentDisplayGamut:
    - argLabels: _
    - constructorTokens: 
    - available: 10.12
    - obsoleted: 3
    - renamed: canRepresent(_:)
    - Introduced: 10.12
  */
  @objc (canRepresentDisplayGamut:) @available(OSX 10.12, *) func canRepresent(_: NSDisplayGamut) -> Bool

  /**
    - jsName: convertRectFromBacking
    - name: convertRectFromBacking:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func convertRectFromBacking(_: CGRect) -> CGRect

  /**
    - jsName: convertRectToBacking
    - name: convertRectToBacking:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func convertRectToBacking(_: CGRect) -> CGRect

  // Own Instance Properties

  /**
    - jsName: backingScaleFactor
    - name: backingScaleFactor
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var backingScaleFactor: CGFloat { @objc get }

  /**
    - jsName: colorSpace
    - name: colorSpace
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var colorSpace: NSColorSpace? { @objc get }

  /**
    - jsName: depth
    - name: depth
    - argLabels: 
  */
  @objc var depth: NSWindow.Depth { @objc get }

  /**
    - jsName: deviceDescription
    - name: deviceDescription
    - argLabels: 
  */
  @objc var deviceDescription: [NSDeviceDescriptionKey: Any] { @objc get }

  /**
    - jsName: frame
    - name: frame
    - argLabels: 
  */
  @objc var frame: CGRect { @objc get }

  /**
    - jsName: localizedName
    - name: localizedName
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var localizedName: String { @objc get }

  /**
    - jsName: maximumExtendedDynamicRangeColorComponentValue
    - name: maximumExtendedDynamicRangeColorComponentValue
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var maximumExtendedDynamicRangeColorComponentValue: CGFloat { @objc get }

  /**
    - jsName: maximumPotentialExtendedDynamicRangeColorComponentValue
    - name: maximumPotentialExtendedDynamicRangeColorComponentValue
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var maximumPotentialExtendedDynamicRangeColorComponentValue: CGFloat { @objc get }

  /**
    - jsName: maximumReferenceExtendedDynamicRangeColorComponentValue
    - name: maximumReferenceExtendedDynamicRangeColorComponentValue
    - argLabels: 
    - available: 10.15
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) var maximumReferenceExtendedDynamicRangeColorComponentValue: CGFloat { @objc get }

  /**
    - jsName: supportedWindowDepths
    - name: supportedWindowDepths
    - argLabels: 
  */
  @objc var supportedWindowDepths: UnsafePointer<NSWindow.Depth> { @objc get }

  /**
    - jsName: visibleFrame
    - name: visibleFrame
    - argLabels: 
  */
  @objc var visibleFrame: CGRect { @objc get }
}

extension NSScreen: NSScreenExports {
}
