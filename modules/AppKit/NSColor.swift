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
    - Selector: NSColor
  */

@objc(NSColor) protocol NSColorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: colorForControlTint:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: NSControlTint does not describe the full range of available control accent colors. Use +[NSColor controlAccentColor] instead.
  */
  @objc @available(OSX 10.0, *) static func createWithColorForControlTint(_ for: NSControlTint) -> NSColor

  /**
    - Selector: colorFromPasteboard:
  */
  @objc static func createWithColorFromPasteboard(_ from: NSPasteboard) -> NSColor?

  /**
    - Selector: colorNamed:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithColorNamed(_ named: NSColor.Name) -> NSColor?

  /**
    - Selector: colorNamed:bundle:
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func createWithColorNamedWithBundle(_ named: NSColor.Name, _ bundle: Bundle?) -> NSColor?

  /**
    - Selector: colorWithCGColor:
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static func createWithColorWithCGColor(_ cgColor: CGColor) -> NSColor?

  /**
    - Selector: colorWithCIColor:
  */
  @objc static func createWithColorWithCIColor(_ ciColor: CIColor) -> NSColor

  /**
    - Selector: colorWithCalibratedHue:saturation:brightness:alpha:
  */
  @objc static func createWithColorWithCalibratedHueWithSaturationWithBrightnessWithAlpha(_ calibratedHue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithCalibratedRed:green:blue:alpha:
  */
  @objc static func createWithColorWithCalibratedRedWithGreenWithBlueWithAlpha(_ calibratedRed: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithCalibratedWhite:alpha:
  */
  @objc static func createWithColorWithCalibratedWhiteWithAlpha(_ calibratedWhite: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithCatalogName:colorName:
  */
  @objc static func createWithColorWithCatalogNameWithColorName(_ catalogName: NSColorList.Name, _ colorName: NSColor.Name) -> NSColor?

  /**
    - Selector: colorWithColorSpace:components:count:
  */
  @objc static func createWithColorWithColorSpaceWithComponentsWithCount(_ colorSpace: NSColorSpace, _ components: UnsafePointer<CGFloat>, _ count: Int) -> NSColor

  /**
    - Selector: colorWithColorSpace:hue:saturation:brightness:alpha:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithColorWithColorSpaceWithHueWithSaturationWithBrightnessWithAlpha(_ colorSpace: NSColorSpace, _ hue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithDeviceCyan:magenta:yellow:black:alpha:
  */
  @objc static func createWithColorWithDeviceCyanWithMagentaWithYellowWithBlackWithAlpha(_ deviceCyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithDeviceHue:saturation:brightness:alpha:
  */
  @objc static func createWithColorWithDeviceHueWithSaturationWithBrightnessWithAlpha(_ deviceHue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithDeviceRed:green:blue:alpha:
  */
  @objc static func createWithColorWithDeviceRedWithGreenWithBlueWithAlpha(_ deviceRed: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithDeviceWhite:alpha:
  */
  @objc static func createWithColorWithDeviceWhiteWithAlpha(_ deviceWhite: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithDisplayP3Red:green:blue:alpha:
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func createWithColorWithDisplayP3RedWithGreenWithBlueWithAlpha(_ displayP3Red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithGenericGamma22White:alpha:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithColorWithGenericGamma22WhiteWithAlpha(_ genericGamma22White: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithHue:saturation:brightness:alpha:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithColorWithHueWithSaturationWithBrightnessWithAlpha(_ hue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithName:dynamicProvider:
    - Introduced: 10.15
  */
// jsvalue   @objc @available(OSX 10.15, *) static func createWithColorWithNameWithDynamicProvider(_ name: NSColor.Name?, _ dynamicProvider: JSValue) -> NSColor

  /**
    - Selector: colorWithPatternImage:
  */
  @objc static func createWithColorWithPatternImage(_ patternImage: NSImage) -> NSColor

  /**
    - Selector: colorWithRed:green:blue:alpha:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithColorWithRedWithGreenWithBlueWithAlpha(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithSRGBRed:green:blue:alpha:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithColorWithSRGBRedWithGreenWithBlueWithAlpha(_ srgbRed: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor

  /**
    - Selector: colorWithWhite:alpha:
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func createWithColorWithWhiteWithAlpha(_ white: CGFloat, _ alpha: CGFloat) -> NSColor

  // Own Static Properties

  /**
    - Selector: alternateSelectedControlColor
    - Introduced: 10.2
    - Deprecated: 100000
    - Replacement: selectedContentBackgroundColor
  */
  @objc @available(OSX 10.2, *) static var alternateSelectedControlColor: NSColor { @objc get }

  /**
    - Selector: alternateSelectedControlTextColor
  */
  @objc static var alternateSelectedControlTextColor: NSColor { @objc get }

  /**
    - Selector: alternatingContentBackgroundColors
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var alternatingContentBackgroundColors: [NSColor] { @objc get }

  /**
    - Selector: blackColor
  */
  @objc static var black: NSColor { @objc (blackColor) get }

  /**
    - Selector: blueColor
  */
  @objc static var blue: NSColor { @objc (blueColor) get }

  /**
    - Selector: brownColor
  */
  @objc static var brown: NSColor { @objc (brownColor) get }

  /**
    - Selector: clearColor
  */
  @objc static var clear: NSColor { @objc (clearColor) get }

  /**
    - Selector: controlAccentColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var controlAccentColor: NSColor { @objc get }

  /**
    - Selector: controlAlternatingRowBackgroundColors
    - Introduced: 10.3
    - Deprecated: 100000
    - Replacement: alternatingContentBackgroundColors
  */
  @objc @available(OSX 10.3, *) static var controlAlternatingRowBackgroundColors: [NSColor] { @objc get }

  /**
    - Selector: controlBackgroundColor
  */
  @objc static var controlBackgroundColor: NSColor { @objc get }

  /**
    - Selector: controlColor
  */
  @objc static var controlColor: NSColor { @objc get }

  /**
    - Selector: controlDarkShadowColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlDarkShadowColor: NSColor { @objc get }

  /**
    - Selector: controlHighlightColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlHighlightColor: NSColor { @objc get }

  /**
    - Selector: controlLightHighlightColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlLightHighlightColor: NSColor { @objc get }

  /**
    - Selector: controlShadowColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlShadowColor: NSColor { @objc get }

  /**
    - Selector: controlTextColor
  */
  @objc static var controlTextColor: NSColor { @objc get }

  /**
    - Selector: currentControlTint
  */
  @objc static var currentControlTint: NSControlTint { @objc get }

  /**
    - Selector: cyanColor
  */
  @objc static var cyan: NSColor { @objc (cyanColor) get }

  /**
    - Selector: darkGrayColor
  */
  @objc static var darkGray: NSColor { @objc (darkGrayColor) get }

  /**
    - Selector: disabledControlTextColor
  */
  @objc static var disabledControlTextColor: NSColor { @objc get }

  /**
    - Selector: findHighlightColor
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static var findHighlightColor: NSColor { @objc get }

  /**
    - Selector: grayColor
  */
  @objc static var gray: NSColor { @objc (grayColor) get }

  /**
    - Selector: greenColor
  */
  @objc static var green: NSColor { @objc (greenColor) get }

  /**
    - Selector: gridColor
  */
  @objc static var gridColor: NSColor { @objc get }

  /**
    - Selector: headerColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSVisualEffectMaterialHeaderView
  */
  @objc @available(OSX 10.0, *) static var headerColor: NSColor { @objc get }

  /**
    - Selector: headerTextColor
  */
  @objc static var headerTextColor: NSColor { @objc get }

  /**
    - Selector: highlightColor
  */
  @objc static var highlightColor: NSColor { @objc get }

  /**
    - Selector: ignoresAlpha
  */
  @objc static var ignoresAlpha: Bool { @objc get @objc (setIgnoresAlpha:) set }

  /**
    - Selector: keyboardFocusIndicatorColor
  */
  @objc static var keyboardFocusIndicatorColor: NSColor { @objc get }

  /**
    - Selector: knobColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSScroller instead
  */
  @objc @available(OSX 10.0, *) static var knobColor: NSColor { @objc get }

  /**
    - Selector: labelColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var labelColor: NSColor { @objc get }

  /**
    - Selector: lightGrayColor
  */
  @objc static var lightGray: NSColor { @objc (lightGrayColor) get }

  /**
    - Selector: linkColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var linkColor: NSColor { @objc get }

  /**
    - Selector: magentaColor
  */
  @objc static var magenta: NSColor { @objc (magentaColor) get }

  /**
    - Selector: orangeColor
  */
  @objc static var orange: NSColor { @objc (orangeColor) get }

  /**
    - Selector: placeholderTextColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var placeholderTextColor: NSColor { @objc get }

  /**
    - Selector: purpleColor
  */
  @objc static var purple: NSColor { @objc (purpleColor) get }

  /**
    - Selector: quaternaryLabelColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var quaternaryLabelColor: NSColor { @objc get }

  /**
    - Selector: redColor
  */
  @objc static var red: NSColor { @objc (redColor) get }

  /**
    - Selector: scrollBarColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSScroller instead
  */
  @objc @available(OSX 10.0, *) static var scrollBarColor: NSColor { @objc get }

  /**
    - Selector: scrubberTexturedBackgroundColor
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) static var scrubberTexturedBackground: NSColor { @objc (scrubberTexturedBackgroundColor) get }

  /**
    - Selector: secondaryLabelColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var secondaryLabelColor: NSColor { @objc get }

  /**
    - Selector: secondarySelectedControlColor
    - Introduced: 10.1
    - Deprecated: 100000
    - Replacement: unemphasizedSelectedContentBackgroundColor
  */
  @objc @available(OSX 10.1, *) static var secondarySelectedControlColor: NSColor { @objc get }

  /**
    - Selector: selectedContentBackgroundColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var selectedContentBackgroundColor: NSColor { @objc get }

  /**
    - Selector: selectedControlColor
  */
  @objc static var selectedControlColor: NSColor { @objc get }

  /**
    - Selector: selectedControlTextColor
  */
  @objc static var selectedControlTextColor: NSColor { @objc get }

  /**
    - Selector: selectedKnobColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSScroller instead
  */
  @objc @available(OSX 10.0, *) static var selectedKnobColor: NSColor { @objc get }

  /**
    - Selector: selectedMenuItemColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSVisualEffectMaterialSelection
  */
  @objc @available(OSX 10.0, *) static var selectedMenuItemColor: NSColor { @objc get }

  /**
    - Selector: selectedMenuItemTextColor
  */
  @objc static var selectedMenuItemTextColor: NSColor { @objc get }

  /**
    - Selector: selectedTextBackgroundColor
  */
  @objc static var selectedTextBackgroundColor: NSColor { @objc get }

  /**
    - Selector: selectedTextColor
  */
  @objc static var selectedTextColor: NSColor { @objc get }

  /**
    - Selector: separatorColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var separatorColor: NSColor { @objc get }

  /**
    - Selector: shadowColor
  */
  @objc static var shadowColor: NSColor { @objc get }

  /**
    - Selector: systemBlueColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemBlue: NSColor { @objc (systemBlueColor) get }

  /**
    - Selector: systemBrownColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemBrown: NSColor { @objc (systemBrownColor) get }

  /**
    - Selector: systemGrayColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemGray: NSColor { @objc (systemGrayColor) get }

  /**
    - Selector: systemGreenColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemGreen: NSColor { @objc (systemGreenColor) get }

  /**
    - Selector: systemIndigoColor
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var systemIndigo: NSColor { @objc (systemIndigoColor) get }

  /**
    - Selector: systemOrangeColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemOrange: NSColor { @objc (systemOrangeColor) get }

  /**
    - Selector: systemPinkColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemPink: NSColor { @objc (systemPinkColor) get }

  /**
    - Selector: systemPurpleColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemPurple: NSColor { @objc (systemPurpleColor) get }

  /**
    - Selector: systemRedColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemRed: NSColor { @objc (systemRedColor) get }

  /**
    - Selector: systemTealColor
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var systemTeal: NSColor { @objc (systemTealColor) get }

  /**
    - Selector: systemYellowColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemYellow: NSColor { @objc (systemYellowColor) get }

  /**
    - Selector: tertiaryLabelColor
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var tertiaryLabelColor: NSColor { @objc get }

  /**
    - Selector: textBackgroundColor
  */
  @objc static var textBackgroundColor: NSColor { @objc get }

  /**
    - Selector: textColor
  */
  @objc static var textColor: NSColor { @objc get }

  /**
    - Selector: underPageBackgroundColor
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static var underPageBackgroundColor: NSColor { @objc get }

  /**
    - Selector: unemphasizedSelectedContentBackgroundColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var unemphasizedSelectedContentBackgroundColor: NSColor { @objc get }

  /**
    - Selector: unemphasizedSelectedTextBackgroundColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var unemphasizedSelectedTextBackgroundColor: NSColor { @objc get }

  /**
    - Selector: unemphasizedSelectedTextColor
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var unemphasizedSelectedTextColor: NSColor { @objc get }

  /**
    - Selector: whiteColor
  */
  @objc static var white: NSColor { @objc (whiteColor) get }

  /**
    - Selector: windowBackgroundColor
  */
  @objc static var windowBackgroundColor: NSColor { @objc get }

  /**
    - Selector: windowFrameColor
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSVisualEffectMaterialTitlebar
  */
  @objc @available(OSX 10.0, *) static var windowFrameColor: NSColor { @objc get }

  /**
    - Selector: windowFrameTextColor
  */
  @objc static var windowFrameTextColor: NSColor { @objc get }

  /**
    - Selector: yellowColor
  */
  @objc static var yellow: NSColor { @objc (yellowColor) get }

  // Instance Methods

  /**
    - Selector: blendedColorWithFraction:ofColor:
  */
  @objc (blendedColorWithFraction:ofColor:) func blended(withFraction: CGFloat, of: NSColor) -> NSColor?

  /**
    - Selector: colorUsingColorSpace:
  */
  @objc (colorUsingColorSpace:) func usingColorSpace(_: NSColorSpace) -> NSColor?

  /**
    - Selector: colorUsingType:
    - Introduced: 10.13
  */
  @objc (colorUsingType:) @available(OSX 10.13, *) func usingType(_: NSColor.ColorType) -> NSColor?

  /**
    - Selector: colorWithAlphaComponent:
  */
  @objc (colorWithAlphaComponent:) func withAlphaComponent(_: CGFloat) -> NSColor

  /**
    - Selector: colorWithSystemEffect:
    - Introduced: 10.14
  */
  @objc (colorWithSystemEffect:) @available(OSX 10.14, *) func withSystemEffect(_: NSColor.SystemEffect) -> NSColor

  /**
    - Selector: drawSwatchInRect:
  */
  @objc (drawSwatchInRect:) func drawSwatch(in: CGRect)

  /**
    - Selector: getComponents:
  */
  @objc func getComponents(_: UnsafeMutablePointer<CGFloat>)

  /**
    - Selector: getCyan:magenta:yellow:black:alpha:
  */
  @objc func getCyan(_: UnsafeMutablePointer<CGFloat>?, magenta: UnsafeMutablePointer<CGFloat>?, yellow: UnsafeMutablePointer<CGFloat>?, black: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - Selector: getHue:saturation:brightness:alpha:
  */
  @objc func getHue(_: UnsafeMutablePointer<CGFloat>?, saturation: UnsafeMutablePointer<CGFloat>?, brightness: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - Selector: getRed:green:blue:alpha:
  */
  @objc func getRed(_: UnsafeMutablePointer<CGFloat>?, green: UnsafeMutablePointer<CGFloat>?, blue: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - Selector: getWhite:alpha:
  */
  @objc func getWhite(_: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - Selector: highlightWithLevel:
  */
  @objc (highlightWithLevel:) func highlight(withLevel: CGFloat) -> NSColor?

  /**
    - Selector: set
  */
  @objc func set()

  /**
    - Selector: setFill
  */
  @objc func setFill()

  /**
    - Selector: setStroke
  */
  @objc func setStroke()

  /**
    - Selector: shadowWithLevel:
  */
  @objc (shadowWithLevel:) func shadow(withLevel: CGFloat) -> NSColor?

  /**
    - Selector: writeToPasteboard:
  */
  @objc (writeToPasteboard:) func write(to: NSPasteboard)

  // Own Instance Properties

  /**
    - Selector: CGColor
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var cgColor: CGColor { @objc (CGColor) get }

  /**
    - Selector: alphaComponent
  */
  @objc var alphaComponent: CGFloat { @objc get }

  /**
    - Selector: blackComponent
  */
  @objc var blackComponent: CGFloat { @objc get }

  /**
    - Selector: blueComponent
  */
  @objc var blueComponent: CGFloat { @objc get }

  /**
    - Selector: brightnessComponent
  */
  @objc var brightnessComponent: CGFloat { @objc get }

  /**
    - Selector: catalogNameComponent
  */
  @objc var catalogNameComponent: NSColorList.Name { @objc get }

  /**
    - Selector: colorNameComponent
  */
  @objc var colorNameComponent: NSColor.Name { @objc get }

  /**
    - Selector: colorSpace
  */
  @objc var colorSpace: NSColorSpace { @objc get }

  /**
    - Selector: cyanComponent
  */
  @objc var cyanComponent: CGFloat { @objc get }

  /**
    - Selector: greenComponent
  */
  @objc var greenComponent: CGFloat { @objc get }

  /**
    - Selector: hueComponent
  */
  @objc var hueComponent: CGFloat { @objc get }

  /**
    - Selector: localizedCatalogNameComponent
  */
  @objc var localizedCatalogNameComponent: String { @objc get }

  /**
    - Selector: localizedColorNameComponent
  */
  @objc var localizedColorNameComponent: String { @objc get }

  /**
    - Selector: magentaComponent
  */
  @objc var magentaComponent: CGFloat { @objc get }

  /**
    - Selector: numberOfComponents
  */
  @objc var numberOfComponents: Int { @objc get }

  /**
    - Selector: patternImage
  */
  @objc var patternImage: NSImage { @objc get }

  /**
    - Selector: redComponent
  */
  @objc var redComponent: CGFloat { @objc get }

  /**
    - Selector: saturationComponent
  */
  @objc var saturationComponent: CGFloat { @objc get }

  /**
    - Selector: type
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var type: NSColor.ColorType { @objc get }

  /**
    - Selector: whiteComponent
  */
  @objc var whiteComponent: CGFloat { @objc get }

  /**
    - Selector: yellowComponent
  */
  @objc var yellowComponent: CGFloat { @objc get }
}

extension NSColor: NSColorExports {

  /**
    - Selector: colorForControlTint:
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: NSControlTint does not describe the full range of available control accent colors. Use +[NSColor controlAccentColor] instead.
  */
  @objc public static func createWithColorForControlTint(_ for: NSControlTint) -> NSColor {
    return self.init(for: `for`)
  }


  /**
    - Selector: colorFromPasteboard:
  */
  @objc public static func createWithColorFromPasteboard(_ from: NSPasteboard) -> NSColor? {
    return self.init(from: from)
  }


  /**
    - Selector: colorNamed:
    - Introduced: 10.13
  */
  @objc public static func createWithColorNamed(_ named: NSColor.Name) -> NSColor? {
    return self.init(named: named)
  }


  /**
    - Selector: colorNamed:bundle:
    - Introduced: 10.13
  */
  @objc public static func createWithColorNamedWithBundle(_ named: NSColor.Name, _ bundle: Bundle?) -> NSColor? {
    return self.init(named: named, bundle: bundle)
  }


  /**
    - Selector: colorWithCGColor:
    - Introduced: 10.8
  */
  @objc public static func createWithColorWithCGColor(_ cgColor: CGColor) -> NSColor? {
    return self.init(cgColor: cgColor)
  }


  /**
    - Selector: colorWithCIColor:
  */
  @objc public static func createWithColorWithCIColor(_ ciColor: CIColor) -> NSColor {
    return self.init(ciColor: ciColor)
  }


  /**
    - Selector: colorWithCalibratedHue:saturation:brightness:alpha:
  */
  @objc public static func createWithColorWithCalibratedHueWithSaturationWithBrightnessWithAlpha(_ calibratedHue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(calibratedHue: calibratedHue, saturation: saturation, brightness: brightness, alpha: alpha)
  }


  /**
    - Selector: colorWithCalibratedRed:green:blue:alpha:
  */
  @objc public static func createWithColorWithCalibratedRedWithGreenWithBlueWithAlpha(_ calibratedRed: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(calibratedRed: calibratedRed, green: green, blue: blue, alpha: alpha)
  }


  /**
    - Selector: colorWithCalibratedWhite:alpha:
  */
  @objc public static func createWithColorWithCalibratedWhiteWithAlpha(_ calibratedWhite: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(calibratedWhite: calibratedWhite, alpha: alpha)
  }


  /**
    - Selector: colorWithCatalogName:colorName:
  */
  @objc public static func createWithColorWithCatalogNameWithColorName(_ catalogName: NSColorList.Name, _ colorName: NSColor.Name) -> NSColor? {
    return self.init(catalogName: catalogName, colorName: colorName)
  }


  /**
    - Selector: colorWithColorSpace:components:count:
  */
  @objc public static func createWithColorWithColorSpaceWithComponentsWithCount(_ colorSpace: NSColorSpace, _ components: UnsafePointer<CGFloat>, _ count: Int) -> NSColor {
    return self.init(colorSpace: colorSpace, components: components, count: count)
  }


  /**
    - Selector: colorWithColorSpace:hue:saturation:brightness:alpha:
    - Introduced: 10.12
  */
  @objc public static func createWithColorWithColorSpaceWithHueWithSaturationWithBrightnessWithAlpha(_ colorSpace: NSColorSpace, _ hue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(colorSpace: colorSpace, hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
  }


  /**
    - Selector: colorWithDeviceCyan:magenta:yellow:black:alpha:
  */
  @objc public static func createWithColorWithDeviceCyanWithMagentaWithYellowWithBlackWithAlpha(_ deviceCyan: CGFloat, _ magenta: CGFloat, _ yellow: CGFloat, _ black: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(deviceCyan: deviceCyan, magenta: magenta, yellow: yellow, black: black, alpha: alpha)
  }


  /**
    - Selector: colorWithDeviceHue:saturation:brightness:alpha:
  */
  @objc public static func createWithColorWithDeviceHueWithSaturationWithBrightnessWithAlpha(_ deviceHue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(deviceHue: deviceHue, saturation: saturation, brightness: brightness, alpha: alpha)
  }


  /**
    - Selector: colorWithDeviceRed:green:blue:alpha:
  */
  @objc public static func createWithColorWithDeviceRedWithGreenWithBlueWithAlpha(_ deviceRed: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(deviceRed: deviceRed, green: green, blue: blue, alpha: alpha)
  }


  /**
    - Selector: colorWithDeviceWhite:alpha:
  */
  @objc public static func createWithColorWithDeviceWhiteWithAlpha(_ deviceWhite: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(deviceWhite: deviceWhite, alpha: alpha)
  }


  /**
    - Selector: colorWithDisplayP3Red:green:blue:alpha:
    - Introduced: 10.12
  */
  @objc public static func createWithColorWithDisplayP3RedWithGreenWithBlueWithAlpha(_ displayP3Red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(displayP3Red: displayP3Red, green: green, blue: blue, alpha: alpha)
  }


  /**
    - Selector: colorWithGenericGamma22White:alpha:
    - Introduced: 10.7
  */
  @objc public static func createWithColorWithGenericGamma22WhiteWithAlpha(_ genericGamma22White: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(genericGamma22White: genericGamma22White, alpha: alpha)
  }


  /**
    - Selector: colorWithHue:saturation:brightness:alpha:
    - Introduced: 10.9
  */
  @objc public static func createWithColorWithHueWithSaturationWithBrightnessWithAlpha(_ hue: CGFloat, _ saturation: CGFloat, _ brightness: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
  }


  /**
    - Selector: colorWithName:dynamicProvider:
    - Introduced: 10.15
  */
  @objc public static func createWithColorWithNameWithDynamicProvider(_ name: NSColor.Name?, _ dynamicProvider: JSValue) -> NSColor {
    return self.init(name: name, dynamicProvider: { p1 in
      let res = dynamicProvider.call(withArguments: [p1 as AnyObject])!
      return res.toObjectOf(NSColor.self) as! NSColor 
    })
  }


  /**
    - Selector: colorWithPatternImage:
  */
  @objc public static func createWithColorWithPatternImage(_ patternImage: NSImage) -> NSColor {
    return self.init(patternImage: patternImage)
  }


  /**
    - Selector: colorWithRed:green:blue:alpha:
    - Introduced: 10.9
  */
  @objc public static func createWithColorWithRedWithGreenWithBlueWithAlpha(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(red: red, green: green, blue: blue, alpha: alpha)
  }


  /**
    - Selector: colorWithSRGBRed:green:blue:alpha:
    - Introduced: 10.7
  */
  @objc public static func createWithColorWithSRGBRedWithGreenWithBlueWithAlpha(_ srgbRed: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(srgbRed: srgbRed, green: green, blue: blue, alpha: alpha)
  }


  /**
    - Selector: colorWithWhite:alpha:
    - Introduced: 10.9
  */
  @objc public static func createWithColorWithWhiteWithAlpha(_ white: CGFloat, _ alpha: CGFloat) -> NSColor {
    return self.init(white: white, alpha: alpha)
  }

}
