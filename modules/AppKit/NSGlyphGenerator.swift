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
    - Selector: NSGlyphGenerator
  */

@objc(NSGlyphGenerator) protocol NSGlyphGeneratorExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Static Properties

  /**
    - Selector: sharedGlyphGenerator
  */
  @objc static var shared: NSGlyphGenerator { @objc (sharedGlyphGenerator) get }

  // Instance Methods

  /**
    - Selector: generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:
  */
  @objc (generateGlyphsForGlyphStorage:desiredNumberOfCharacters:glyphIndex:characterIndex:) func generateGlyphs(`for`: NSGlyphStorage, desiredNumberOfCharacters: Int, glyphIndex: UnsafeMutablePointer<Int>?, characterIndex: UnsafeMutablePointer<Int>?)
}

extension NSGlyphGenerator: NSGlyphGeneratorExports {
}
