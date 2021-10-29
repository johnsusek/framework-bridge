import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSColor
    - name: NSColor
    - argLabels: 
  */

@objc(NSColor) protocol NSColorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: create
    - name: colorForControlTint:
    - argLabels: for
    - constructorTokens: 
    - unavailable: true
    - renamed: init(for:)
    - message: NSControlTint does not describe the full range of available control accent colors. Use +[NSColor controlAccentColor] instead.
    - introduced: 10.0
    - deprecated: 11.0
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: NSControlTint does not describe the full range of available control accent colors. Use +[NSColor controlAccentColor] instead.
  */
  @objc @available(OSX 10.0, *) static func create(`for`: NSControlTint) -> NSColor

  /**
    - jsName: create
    - name: colorNamed:bundle:
    - argLabels: named, bundle
    - constructorTokens: 
    - available: 10.13
    - unavailable: true
    - renamed: init(named:bundle:)
    - message: Not available in Swift
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static func create(named: NSColor.Name, bundle: Bundle?) -> NSColor?

  /**
    - jsName: create
    - name: colorWithCGColor:
    - argLabels: cgColor
    - constructorTokens: 
    - available: 10.8
    - unavailable: true
    - renamed: init(cgColor:)
    - message: Not available in Swift
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static func create(cgColor: CGColor) -> NSColor?

  /**
    - jsName: create
    - name: colorWithCIColor:
    - argLabels: ciColor
    - constructorTokens: 
    - unavailable: true
    - renamed: init(ciColor:)
    - message: Not available in Swift
  */
  @objc static func create(ciColor: CIColor) -> NSColor

  /**
    - jsName: create
    - name: colorWithCalibratedHue:saturation:brightness:alpha:
    - argLabels: calibratedHue, saturation, brightness, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(calibratedHue:saturation:brightness:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(calibratedHue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithCalibratedRed:green:blue:alpha:
    - argLabels: calibratedRed, green, blue, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(calibratedRed:green:blue:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(calibratedRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithCalibratedWhite:alpha:
    - argLabels: calibratedWhite, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(calibratedWhite:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(calibratedWhite: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithCatalogName:colorName:
    - argLabels: catalogName, colorName
    - constructorTokens: 
    - unavailable: true
    - renamed: init(catalogName:colorName:)
    - message: Not available in Swift
  */
  @objc static func create(catalogName: NSColorList.Name, colorName: NSColor.Name) -> NSColor?

  /**
    - jsName: create
    - name: colorWithColorSpace:components:count:
    - argLabels: colorSpace, components, count
    - constructorTokens: 
    - unavailable: true
    - renamed: init(colorSpace:components:count:)
    - message: Not available in Swift
  */
  @objc static func create(colorSpace: NSColorSpace, components: UnsafePointer<CGFloat>, count: Int) -> NSColor

  /**
    - jsName: create
    - name: colorWithColorSpace:hue:saturation:brightness:alpha:
    - argLabels: colorSpace, hue, saturation, brightness, alpha
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(colorSpace:hue:saturation:brightness:alpha:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(colorSpace: NSColorSpace, hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithDeviceCyan:magenta:yellow:black:alpha:
    - argLabels: deviceCyan, magenta, yellow, black, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(deviceCyan:magenta:yellow:black:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(deviceCyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithDeviceHue:saturation:brightness:alpha:
    - argLabels: deviceHue, saturation, brightness, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(deviceHue:saturation:brightness:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(deviceHue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithDeviceRed:green:blue:alpha:
    - argLabels: deviceRed, green, blue, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(deviceRed:green:blue:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(deviceRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithDeviceWhite:alpha:
    - argLabels: deviceWhite, alpha
    - constructorTokens: 
    - unavailable: true
    - renamed: init(deviceWhite:alpha:)
    - message: Not available in Swift
  */
  @objc static func create(deviceWhite: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithDisplayP3Red:green:blue:alpha:
    - argLabels: displayP3Red, green, blue, alpha
    - constructorTokens: 
    - available: 10.12
    - unavailable: true
    - renamed: init(displayP3Red:green:blue:alpha:)
    - message: Not available in Swift
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static func create(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithGenericGamma22White:alpha:
    - argLabels: genericGamma22White, alpha
    - constructorTokens: 
    - available: 10.7
    - unavailable: true
    - renamed: init(genericGamma22White:alpha:)
    - message: Not available in Swift
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(genericGamma22White: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithHue:saturation:brightness:alpha:
    - argLabels: hue, saturation, brightness, alpha
    - constructorTokens: 
    - available: 10.9
    - unavailable: true
    - renamed: init(hue:saturation:brightness:alpha:)
    - message: Not available in Swift
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func create(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithName:dynamicProvider:
    - argLabels: name, dynamicProvider
    - constructorTokens: 
    - available: 10.15
    - unavailable: true
    - renamed: init(name:dynamicProvider:)
    - message: Not available in Swift
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static func create(name: NSColor.Name?, dynamicProvider: JSValue) -> NSColor

  /**
    - jsName: create
    - name: colorWithPatternImage:
    - argLabels: patternImage
    - constructorTokens: 
    - unavailable: true
    - renamed: init(patternImage:)
    - message: Not available in Swift
  */
  @objc static func create(patternImage: NSImage) -> NSColor

  /**
    - jsName: create
    - name: colorWithRed:green:blue:alpha:
    - argLabels: red, green, blue, alpha
    - constructorTokens: 
    - available: 10.9
    - unavailable: true
    - renamed: init(red:green:blue:alpha:)
    - message: Not available in Swift
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func create(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithSRGBRed:green:blue:alpha:
    - argLabels: srgbRed, green, blue, alpha
    - constructorTokens: 
    - available: 10.7
    - unavailable: true
    - renamed: init(srgbRed:green:blue:alpha:)
    - message: Not available in Swift
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func create(srgbRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor

  /**
    - jsName: create
    - name: colorWithWhite:alpha:
    - argLabels: white, alpha
    - constructorTokens: 
    - available: 10.9
    - unavailable: true
    - renamed: init(white:alpha:)
    - message: Not available in Swift
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) static func create(white: CGFloat, alpha: CGFloat) -> NSColor

  // Own Static Properties

  /**
    - jsName: alternateSelectedControlColor
    - name: alternateSelectedControlColor
    - argLabels: 
    - introduced: 10.2
    - deprecated: 11.0
    - Introduced: 10.2
    - Deprecated: 100000
    - Replacement: selectedContentBackgroundColor
  */
  @objc @available(OSX 10.2, *) static var alternateSelectedControlColor: NSColor { @objc get }

  /**
    - jsName: alternateSelectedControlTextColor
    - name: alternateSelectedControlTextColor
    - argLabels: 
  */
  @objc static var alternateSelectedControlTextColor: NSColor { @objc get }

  /**
    - jsName: alternatingContentBackgroundColors
    - name: alternatingContentBackgroundColors
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var alternatingContentBackgroundColors: [NSColor] { @objc get }

  /**
    - jsName: black
    - name: blackColor
    - argLabels: 
    - obsoleted: 3
    - renamed: black
  */
  @objc static var black: NSColor { @objc (blackColor) get }

  /**
    - jsName: blue
    - name: blueColor
    - argLabels: 
    - obsoleted: 3
    - renamed: blue
  */
  @objc static var blue: NSColor { @objc (blueColor) get }

  /**
    - jsName: brown
    - name: brownColor
    - argLabels: 
    - obsoleted: 3
    - renamed: brown
  */
  @objc static var brown: NSColor { @objc (brownColor) get }

  /**
    - jsName: clear
    - name: clearColor
    - argLabels: 
    - obsoleted: 3
    - renamed: clear
  */
  @objc static var clear: NSColor { @objc (clearColor) get }

  /**
    - jsName: controlAccentColor
    - name: controlAccentColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var controlAccentColor: NSColor { @objc get }

  /**
    - jsName: controlAlternatingRowBackgroundColors
    - name: controlAlternatingRowBackgroundColors
    - argLabels: 
    - introduced: 10.3
    - deprecated: 11.0
    - Introduced: 10.3
    - Deprecated: 100000
    - Replacement: alternatingContentBackgroundColors
  */
  @objc @available(OSX 10.3, *) static var controlAlternatingRowBackgroundColors: [NSColor] { @objc get }

  /**
    - jsName: controlBackgroundColor
    - name: controlBackgroundColor
    - argLabels: 
  */
  @objc static var controlBackgroundColor: NSColor { @objc get }

  /**
    - jsName: controlColor
    - name: controlColor
    - argLabels: 
  */
  @objc static var controlColor: NSColor { @objc get }

  /**
    - jsName: controlDarkShadowColor
    - name: controlDarkShadowColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use a color that matches the semantics being used, such as `separatorColor`
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlDarkShadowColor: NSColor { @objc get }

  /**
    - jsName: controlHighlightColor
    - name: controlHighlightColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use a color that matches the semantics being used, such as `separatorColor`
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlHighlightColor: NSColor { @objc get }

  /**
    - jsName: controlLightHighlightColor
    - name: controlLightHighlightColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use a color that matches the semantics being used, such as `separatorColor`
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlLightHighlightColor: NSColor { @objc get }

  /**
    - jsName: controlShadowColor
    - name: controlShadowColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use a color that matches the semantics being used, such as `separatorColor`
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use a color that matches the semantics being used, such as `separatorColor`
  */
  @objc @available(OSX 10.0, *) static var controlShadowColor: NSColor { @objc get }

  /**
    - jsName: controlTextColor
    - name: controlTextColor
    - argLabels: 
  */
  @objc static var controlTextColor: NSColor { @objc get }

  /**
    - jsName: currentControlTint
    - name: currentControlTint
    - argLabels: 
  */
  @objc static var currentControlTint: NSControlTint { @objc get }

  /**
    - jsName: cyan
    - name: cyanColor
    - argLabels: 
    - obsoleted: 3
    - renamed: cyan
  */
  @objc static var cyan: NSColor { @objc (cyanColor) get }

  /**
    - jsName: darkGray
    - name: darkGrayColor
    - argLabels: 
    - obsoleted: 3
    - renamed: darkGray
  */
  @objc static var darkGray: NSColor { @objc (darkGrayColor) get }

  /**
    - jsName: disabledControlTextColor
    - name: disabledControlTextColor
    - argLabels: 
  */
  @objc static var disabledControlTextColor: NSColor { @objc get }

  /**
    - jsName: findHighlightColor
    - name: findHighlightColor
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) static var findHighlightColor: NSColor { @objc get }

  /**
    - jsName: gray
    - name: grayColor
    - argLabels: 
    - obsoleted: 3
    - renamed: gray
  */
  @objc static var gray: NSColor { @objc (grayColor) get }

  /**
    - jsName: green
    - name: greenColor
    - argLabels: 
    - obsoleted: 3
    - renamed: green
  */
  @objc static var green: NSColor { @objc (greenColor) get }

  /**
    - jsName: gridColor
    - name: gridColor
    - argLabels: 
  */
  @objc static var gridColor: NSColor { @objc get }

  /**
    - jsName: headerColor
    - name: headerColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use NSVisualEffectMaterialHeaderView
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSVisualEffectMaterialHeaderView
  */
  @objc @available(OSX 10.0, *) static var headerColor: NSColor { @objc get }

  /**
    - jsName: headerTextColor
    - name: headerTextColor
    - argLabels: 
  */
  @objc static var headerTextColor: NSColor { @objc get }

  /**
    - jsName: highlightColor
    - name: highlightColor
    - argLabels: 
  */
  @objc static var highlightColor: NSColor { @objc get }

  /**
    - jsName: ignoresAlpha
    - name: ignoresAlpha
    - argLabels: 
  */
  @objc static var ignoresAlpha: Bool { @objc get @objc (setIgnoresAlpha:) set }

  /**
    - jsName: keyboardFocusIndicatorColor
    - name: keyboardFocusIndicatorColor
    - argLabels: 
  */
  @objc static var keyboardFocusIndicatorColor: NSColor { @objc get }

  /**
    - jsName: knobColor
    - name: knobColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use NSScroller instead
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSScroller instead
  */
  @objc @available(OSX 10.0, *) static var knobColor: NSColor { @objc get }

  /**
    - jsName: labelColor
    - name: labelColor
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var labelColor: NSColor { @objc get }

  /**
    - jsName: lightGray
    - name: lightGrayColor
    - argLabels: 
    - obsoleted: 3
    - renamed: lightGray
  */
  @objc static var lightGray: NSColor { @objc (lightGrayColor) get }

  /**
    - jsName: linkColor
    - name: linkColor
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var linkColor: NSColor { @objc get }

  /**
    - jsName: magenta
    - name: magentaColor
    - argLabels: 
    - obsoleted: 3
    - renamed: magenta
  */
  @objc static var magenta: NSColor { @objc (magentaColor) get }

  /**
    - jsName: orange
    - name: orangeColor
    - argLabels: 
    - obsoleted: 3
    - renamed: orange
  */
  @objc static var orange: NSColor { @objc (orangeColor) get }

  /**
    - jsName: placeholderTextColor
    - name: placeholderTextColor
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var placeholderTextColor: NSColor { @objc get }

  /**
    - jsName: purple
    - name: purpleColor
    - argLabels: 
    - obsoleted: 3
    - renamed: purple
  */
  @objc static var purple: NSColor { @objc (purpleColor) get }

  /**
    - jsName: quaternaryLabelColor
    - name: quaternaryLabelColor
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var quaternaryLabelColor: NSColor { @objc get }

  /**
    - jsName: red
    - name: redColor
    - argLabels: 
    - obsoleted: 3
    - renamed: red
  */
  @objc static var red: NSColor { @objc (redColor) get }

  /**
    - jsName: scrollBarColor
    - name: scrollBarColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use NSScroller instead
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSScroller instead
  */
  @objc @available(OSX 10.0, *) static var scrollBarColor: NSColor { @objc get }

  /**
    - jsName: scrubberTexturedBackground
    - name: scrubberTexturedBackgroundColor
    - argLabels: 
    - available: 10.12.2
    - obsoleted: 3
    - renamed: scrubberTexturedBackground
    - Introduced: 10.12.2
  */
  @objc @available(OSX 10.12.2, *) static var scrubberTexturedBackground: NSColor { @objc (scrubberTexturedBackgroundColor) get }

  /**
    - jsName: secondaryLabelColor
    - name: secondaryLabelColor
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var secondaryLabelColor: NSColor { @objc get }

  /**
    - jsName: secondarySelectedControlColor
    - name: secondarySelectedControlColor
    - argLabels: 
    - introduced: 10.1
    - deprecated: 11.0
    - Introduced: 10.1
    - Deprecated: 100000
    - Replacement: unemphasizedSelectedContentBackgroundColor
  */
  @objc @available(OSX 10.1, *) static var secondarySelectedControlColor: NSColor { @objc get }

  /**
    - jsName: selectedContentBackgroundColor
    - name: selectedContentBackgroundColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var selectedContentBackgroundColor: NSColor { @objc get }

  /**
    - jsName: selectedControlColor
    - name: selectedControlColor
    - argLabels: 
  */
  @objc static var selectedControlColor: NSColor { @objc get }

  /**
    - jsName: selectedControlTextColor
    - name: selectedControlTextColor
    - argLabels: 
  */
  @objc static var selectedControlTextColor: NSColor { @objc get }

  /**
    - jsName: selectedKnobColor
    - name: selectedKnobColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use NSScroller instead
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSScroller instead
  */
  @objc @available(OSX 10.0, *) static var selectedKnobColor: NSColor { @objc get }

  /**
    - jsName: selectedMenuItemColor
    - name: selectedMenuItemColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use NSVisualEffectMaterialSelection
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSVisualEffectMaterialSelection
  */
  @objc @available(OSX 10.0, *) static var selectedMenuItemColor: NSColor { @objc get }

  /**
    - jsName: selectedMenuItemTextColor
    - name: selectedMenuItemTextColor
    - argLabels: 
  */
  @objc static var selectedMenuItemTextColor: NSColor { @objc get }

  /**
    - jsName: selectedTextBackgroundColor
    - name: selectedTextBackgroundColor
    - argLabels: 
  */
  @objc static var selectedTextBackgroundColor: NSColor { @objc get }

  /**
    - jsName: selectedTextColor
    - name: selectedTextColor
    - argLabels: 
  */
  @objc static var selectedTextColor: NSColor { @objc get }

  /**
    - jsName: separatorColor
    - name: separatorColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var separatorColor: NSColor { @objc get }

  /**
    - jsName: shadowColor
    - name: shadowColor
    - argLabels: 
  */
  @objc static var shadowColor: NSColor { @objc get }

  /**
    - jsName: systemBlue
    - name: systemBlueColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemBlue
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemBlue: NSColor { @objc (systemBlueColor) get }

  /**
    - jsName: systemBrown
    - name: systemBrownColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemBrown
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemBrown: NSColor { @objc (systemBrownColor) get }

  /**
    - jsName: systemGray
    - name: systemGrayColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemGray
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemGray: NSColor { @objc (systemGrayColor) get }

  /**
    - jsName: systemGreen
    - name: systemGreenColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemGreen
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemGreen: NSColor { @objc (systemGreenColor) get }

  /**
    - jsName: systemIndigo
    - name: systemIndigoColor
    - argLabels: 
    - available: 10.15
    - obsoleted: 3
    - renamed: systemIndigo
    - Introduced: 10.15
  */
  @objc @available(OSX 10.15, *) static var systemIndigo: NSColor { @objc (systemIndigoColor) get }

  /**
    - jsName: systemOrange
    - name: systemOrangeColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemOrange
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemOrange: NSColor { @objc (systemOrangeColor) get }

  /**
    - jsName: systemPink
    - name: systemPinkColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemPink
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemPink: NSColor { @objc (systemPinkColor) get }

  /**
    - jsName: systemPurple
    - name: systemPurpleColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemPurple
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemPurple: NSColor { @objc (systemPurpleColor) get }

  /**
    - jsName: systemRed
    - name: systemRedColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemRed
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemRed: NSColor { @objc (systemRedColor) get }

  /**
    - jsName: systemTeal
    - name: systemTealColor
    - argLabels: 
    - available: 10.12
    - obsoleted: 3
    - renamed: systemTeal
    - Introduced: 10.12
  */
  @objc @available(OSX 10.12, *) static var systemTeal: NSColor { @objc (systemTealColor) get }

  /**
    - jsName: systemYellow
    - name: systemYellowColor
    - argLabels: 
    - available: 10.10
    - obsoleted: 3
    - renamed: systemYellow
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var systemYellow: NSColor { @objc (systemYellowColor) get }

  /**
    - jsName: tertiaryLabelColor
    - name: tertiaryLabelColor
    - argLabels: 
    - available: 10.10
    - Introduced: 10.10
  */
  @objc @available(OSX 10.10, *) static var tertiaryLabelColor: NSColor { @objc get }

  /**
    - jsName: textBackgroundColor
    - name: textBackgroundColor
    - argLabels: 
  */
  @objc static var textBackgroundColor: NSColor { @objc get }

  /**
    - jsName: textColor
    - name: textColor
    - argLabels: 
  */
  @objc static var textColor: NSColor { @objc get }

  /**
    - jsName: underPageBackgroundColor
    - name: underPageBackgroundColor
    - argLabels: 
    - available: 10.8
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) static var underPageBackgroundColor: NSColor { @objc get }

  /**
    - jsName: unemphasizedSelectedContentBackgroundColor
    - name: unemphasizedSelectedContentBackgroundColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var unemphasizedSelectedContentBackgroundColor: NSColor { @objc get }

  /**
    - jsName: unemphasizedSelectedTextBackgroundColor
    - name: unemphasizedSelectedTextBackgroundColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var unemphasizedSelectedTextBackgroundColor: NSColor { @objc get }

  /**
    - jsName: unemphasizedSelectedTextColor
    - name: unemphasizedSelectedTextColor
    - argLabels: 
    - available: 10.14
    - Introduced: 10.14
  */
  @objc @available(OSX 10.14, *) static var unemphasizedSelectedTextColor: NSColor { @objc get }

  /**
    - jsName: white
    - name: whiteColor
    - argLabels: 
    - obsoleted: 3
    - renamed: white
  */
  @objc static var white: NSColor { @objc (whiteColor) get }

  /**
    - jsName: windowBackgroundColor
    - name: windowBackgroundColor
    - argLabels: 
  */
  @objc static var windowBackgroundColor: NSColor { @objc get }

  /**
    - jsName: windowFrameColor
    - name: windowFrameColor
    - argLabels: 
    - introduced: 10.0
    - deprecated: 11.0
    - message: Use NSVisualEffectMaterialTitlebar
    - Introduced: 10.0
    - Deprecated: 100000
    - Message: Use NSVisualEffectMaterialTitlebar
  */
  @objc @available(OSX 10.0, *) static var windowFrameColor: NSColor { @objc get }

  /**
    - jsName: windowFrameTextColor
    - name: windowFrameTextColor
    - argLabels: 
  */
  @objc static var windowFrameTextColor: NSColor { @objc get }

  /**
    - jsName: yellow
    - name: yellowColor
    - argLabels: 
    - obsoleted: 3
    - renamed: yellow
  */
  @objc static var yellow: NSColor { @objc (yellowColor) get }

  // Instance Methods

  /**
    - jsName: blended
    - name: blendedColorWithFraction:ofColor:
    - argLabels: withFraction, of
    - constructorTokens: 
    - obsoleted: 3
    - renamed: blended(withFraction:of:)
  */
  @objc (blendedColorWithFraction:ofColor:) func blended(withFraction: CGFloat, of: NSColor) -> NSColor?

  /**
    - jsName: usingColorSpace
    - name: colorUsingColorSpace:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: usingColorSpace(_:)
  */
  @objc (colorUsingColorSpace:) func usingColorSpace(_: NSColorSpace) -> NSColor?

  /**
    - jsName: usingType
    - name: colorUsingType:
    - argLabels: _
    - constructorTokens: 
    - available: 10.13
    - obsoleted: 3
    - renamed: usingType(_:)
    - Introduced: 10.13
  */
  @objc (colorUsingType:) @available(OSX 10.13, *) func usingType(_: NSColor.ColorType) -> NSColor?

  /**
    - jsName: withAlphaComponent
    - name: colorWithAlphaComponent:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: withAlphaComponent(_:)
  */
  @objc (colorWithAlphaComponent:) func withAlphaComponent(_: CGFloat) -> NSColor

  /**
    - jsName: withSystemEffect
    - name: colorWithSystemEffect:
    - argLabels: _
    - constructorTokens: 
    - available: 10.14
    - obsoleted: 3
    - renamed: withSystemEffect(_:)
    - Introduced: 10.14
  */
  @objc (colorWithSystemEffect:) @available(OSX 10.14, *) func withSystemEffect(_: NSColor.SystemEffect) -> NSColor

  /**
    - jsName: drawSwatch
    - name: drawSwatchInRect:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: drawSwatch(in:)
  */
  @objc (drawSwatchInRect:) func drawSwatch(in: CGRect)

  /**
    - jsName: getComponents
    - name: getComponents:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func getComponents(_: UnsafeMutablePointer<CGFloat>)

  /**
    - jsName: getCyan
    - name: getCyan:magenta:yellow:black:alpha:
    - argLabels: magenta, yellow, black, alpha
    - constructorTokens: 
  */
  @objc func getCyan(_: UnsafeMutablePointer<CGFloat>?, magenta: UnsafeMutablePointer<CGFloat>?, yellow: UnsafeMutablePointer<CGFloat>?, black: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - jsName: getHue
    - name: getHue:saturation:brightness:alpha:
    - argLabels: saturation, brightness, alpha
    - constructorTokens: 
  */
  @objc func getHue(_: UnsafeMutablePointer<CGFloat>?, saturation: UnsafeMutablePointer<CGFloat>?, brightness: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - jsName: getRed
    - name: getRed:green:blue:alpha:
    - argLabels: green, blue, alpha
    - constructorTokens: 
  */
  @objc func getRed(_: UnsafeMutablePointer<CGFloat>?, green: UnsafeMutablePointer<CGFloat>?, blue: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - jsName: getWhite
    - name: getWhite:alpha:
    - argLabels: alpha
    - constructorTokens: 
  */
  @objc func getWhite(_: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?)

  /**
    - jsName: highlight
    - name: highlightWithLevel:
    - argLabels: withLevel
    - constructorTokens: 
    - obsoleted: 3
    - renamed: highlight(withLevel:)
  */
  @objc (highlightWithLevel:) func highlight(withLevel: CGFloat) -> NSColor?

  /**
    - jsName: set
    - name: set
    - argLabels: 
    - constructorTokens: 
  */
  @objc func set()

  /**
    - jsName: setFill
    - name: setFill
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setFill()

  /**
    - jsName: setStroke
    - name: setStroke
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setStroke()

  /**
    - jsName: shadow
    - name: shadowWithLevel:
    - argLabels: withLevel
    - constructorTokens: 
    - obsoleted: 3
    - renamed: shadow(withLevel:)
  */
  @objc (shadowWithLevel:) func shadow(withLevel: CGFloat) -> NSColor?

  /**
    - jsName: write
    - name: writeToPasteboard:
    - argLabels: to
    - constructorTokens: 
    - obsoleted: 3
    - renamed: write(to:)
  */
  @objc (writeToPasteboard:) func write(to: NSPasteboard)

  // Own Instance Properties

  /**
    - jsName: cgColor
    - name: CGColor
    - argLabels: 
    - available: 10.8
    - obsoleted: 3
    - renamed: cgColor
    - Introduced: 10.8
  */
  @objc @available(OSX 10.8, *) var cgColor: CGColor { @objc (CGColor) get }

  /**
    - jsName: alphaComponent
    - name: alphaComponent
    - argLabels: 
  */
  @objc var alphaComponent: CGFloat { @objc get }

  /**
    - jsName: blackComponent
    - name: blackComponent
    - argLabels: 
  */
  @objc var blackComponent: CGFloat { @objc get }

  /**
    - jsName: blueComponent
    - name: blueComponent
    - argLabels: 
  */
  @objc var blueComponent: CGFloat { @objc get }

  /**
    - jsName: brightnessComponent
    - name: brightnessComponent
    - argLabels: 
  */
  @objc var brightnessComponent: CGFloat { @objc get }

  /**
    - jsName: catalogNameComponent
    - name: catalogNameComponent
    - argLabels: 
  */
  @objc var catalogNameComponent: NSColorList.Name { @objc get }

  /**
    - jsName: colorNameComponent
    - name: colorNameComponent
    - argLabels: 
  */
  @objc var colorNameComponent: NSColor.Name { @objc get }

  /**
    - jsName: colorSpace
    - name: colorSpace
    - argLabels: 
  */
  @objc var colorSpace: NSColorSpace { @objc get }

  /**
    - jsName: cyanComponent
    - name: cyanComponent
    - argLabels: 
  */
  @objc var cyanComponent: CGFloat { @objc get }

  /**
    - jsName: greenComponent
    - name: greenComponent
    - argLabels: 
  */
  @objc var greenComponent: CGFloat { @objc get }

  /**
    - jsName: hueComponent
    - name: hueComponent
    - argLabels: 
  */
  @objc var hueComponent: CGFloat { @objc get }

  /**
    - jsName: localizedCatalogNameComponent
    - name: localizedCatalogNameComponent
    - argLabels: 
  */
  @objc var localizedCatalogNameComponent: String { @objc get }

  /**
    - jsName: localizedColorNameComponent
    - name: localizedColorNameComponent
    - argLabels: 
  */
  @objc var localizedColorNameComponent: String { @objc get }

  /**
    - jsName: magentaComponent
    - name: magentaComponent
    - argLabels: 
  */
  @objc var magentaComponent: CGFloat { @objc get }

  /**
    - jsName: numberOfComponents
    - name: numberOfComponents
    - argLabels: 
  */
  @objc var numberOfComponents: Int { @objc get }

  /**
    - jsName: patternImage
    - name: patternImage
    - argLabels: 
  */
  @objc var patternImage: NSImage { @objc get }

  /**
    - jsName: redComponent
    - name: redComponent
    - argLabels: 
  */
  @objc var redComponent: CGFloat { @objc get }

  /**
    - jsName: saturationComponent
    - name: saturationComponent
    - argLabels: 
  */
  @objc var saturationComponent: CGFloat { @objc get }

  /**
    - jsName: type
    - name: type
    - argLabels: 
    - available: 10.13
    - Introduced: 10.13
  */
  @objc @available(OSX 10.13, *) var type: NSColor.ColorType { @objc get }

  /**
    - jsName: whiteComponent
    - name: whiteComponent
    - argLabels: 
  */
  @objc var whiteComponent: CGFloat { @objc get }

  /**
    - jsName: yellowComponent
    - name: yellowComponent
    - argLabels: 
  */
  @objc var yellowComponent: CGFloat { @objc get }
}

extension NSColor: NSColorExports {
  @objc public static func create(for: NSControlTint) -> NSColor {
    return self.init(for: `for`)
  }

  @objc public static func create(named: NSColor.Name, bundle: Bundle?) -> NSColor? {
    return self.init(named: named, bundle: bundle)
  }

  @objc public static func create(cgColor: CGColor) -> NSColor? {
    return self.init(cgColor: cgColor)
  }

  @objc public static func create(ciColor: CIColor) -> NSColor {
    return self.init(ciColor: ciColor)
  }

  @objc public static func create(calibratedHue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(calibratedHue: calibratedHue, saturation: saturation, brightness: brightness, alpha: alpha)
  }

  @objc public static func create(calibratedRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(calibratedRed: calibratedRed, green: green, blue: blue, alpha: alpha)
  }

  @objc public static func create(calibratedWhite: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(calibratedWhite: calibratedWhite, alpha: alpha)
  }

  @objc public static func create(catalogName: NSColorList.Name, colorName: NSColor.Name) -> NSColor? {
    return self.init(catalogName: catalogName, colorName: colorName)
  }

  @objc public static func create(colorSpace: NSColorSpace, components: UnsafePointer<CGFloat>, count: Int) -> NSColor {
    return self.init(colorSpace: colorSpace, components: components, count: count)
  }

  @objc public static func create(colorSpace: NSColorSpace, hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(colorSpace: colorSpace, hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
  }

  @objc public static func create(deviceCyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(deviceCyan: deviceCyan, magenta: magenta, yellow: yellow, black: black, alpha: alpha)
  }

  @objc public static func create(deviceHue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(deviceHue: deviceHue, saturation: saturation, brightness: brightness, alpha: alpha)
  }

  @objc public static func create(deviceRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(deviceRed: deviceRed, green: green, blue: blue, alpha: alpha)
  }

  @objc public static func create(deviceWhite: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(deviceWhite: deviceWhite, alpha: alpha)
  }

  @objc public static func create(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(displayP3Red: displayP3Red, green: green, blue: blue, alpha: alpha)
  }

  @objc public static func create(genericGamma22White: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(genericGamma22White: genericGamma22White, alpha: alpha)
  }

  @objc public static func create(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
  }

  @objc public static func create(name: NSColor.Name?, dynamicProvider: JSValue) -> NSColor {
    return self.init(name: name, dynamicProvider: { p1 in
      let res = dynamicProvider.call(withArguments: [p1 as AnyObject])!
      return res.toObjectOf(NSColor.self) as! NSColor 
    })
  }

  @objc public static func create(patternImage: NSImage) -> NSColor {
    return self.init(patternImage: patternImage)
  }

  @objc public static func create(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(red: red, green: green, blue: blue, alpha: alpha)
  }

  @objc public static func create(srgbRed: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(srgbRed: srgbRed, green: green, blue: blue, alpha: alpha)
  }

  @objc public static func create(white: CGFloat, alpha: CGFloat) -> NSColor {
    return self.init(white: white, alpha: alpha)
  }

}
