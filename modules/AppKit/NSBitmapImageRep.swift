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
    - Selector: NSBitmapImageRep
  */

@objc(NSBitmapImageRep) protocol NSBitmapImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - Selector: TIFFRepresentationOfImageRepsInArray:
  */
  @objc (TIFFRepresentationOfImageRepsInArray:) static func tiffRepresentationOfImageReps(in: [NSImageRep]) -> Data?

  /**
    - Selector: TIFFRepresentationOfImageRepsInArray:usingCompression:factor:
  */
  @objc (TIFFRepresentationOfImageRepsInArray:usingCompression:factor:) static func tiffRepresentationOfImageReps(in: [NSImageRep], using: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?

  /**
    - Selector: canInitWithData:
  */
  @objc (canInitWithData:) static func canInit(with: Data) -> Bool

  /**
    - Selector: getTIFFCompressionTypes:count:
  */
  @objc static func getTIFFCompressionTypes(_: UnsafeMutablePointer<UnsafePointer<NSBitmapImageRep.TIFFCompression>?>, count: UnsafeMutablePointer<NSInteger>)

  /**
    - Selector: imageRepWithData:
  */
  @objc static func createWithData(_ data: Data) -> Self?

  /**
    - Selector: imageRepsWithContentsOfFile:
  */
  @objc (imageRepsWithContentsOfFile:) static func imageReps(withContentsOfFile: String) -> [NSImageRep]?

  /**
    - Selector: imageRepsWithData:
  */
  @objc (imageRepsWithData:) static func imageReps(with: Data) -> [NSImageRep]

  /**
    - Selector: localizedNameForTIFFCompressionType:
  */
  @objc (localizedNameForTIFFCompressionType:) static func localizedName(forTIFFCompressionType: NSBitmapImageRep.TIFFCompression) -> String?

  /**
    - Selector: registerImageRepClass:
  */
  @objc (registerImageRepClass:) static func registerClass(_: AnyClass)

  /**
    - Selector: representationOfImageRepsInArray:usingType:properties:
  */
  @objc (representationOfImageRepsInArray:usingType:properties:) static func representationOfImageReps(in: [NSImageRep], using: NSBitmapImageRep.FileType, properties: [NSBitmapImageRep.PropertyKey: Any]) -> Data?

  /**
    - Selector: unregisterImageRepClass:
  */
  @objc (unregisterImageRepClass:) static func unregisterClass(_: AnyClass)

  // Instance Methods

  /**
    - Selector: TIFFRepresentationUsingCompression:factor:
  */
  @objc (TIFFRepresentationUsingCompression:factor:) func tiffRepresentation(using: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?

  /**
    - Selector: bitmapImageRepByConvertingToColorSpace:renderingIntent:
    - Introduced: 10.6
  */
  @objc (bitmapImageRepByConvertingToColorSpace:renderingIntent:) @available(OSX 10.6, *) func converting(to: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?

  /**
    - Selector: bitmapImageRepByRetaggingWithColorSpace:
    - Introduced: 10.6
  */
  @objc (bitmapImageRepByRetaggingWithColorSpace:) @available(OSX 10.6, *) func retagging(with: NSColorSpace) -> NSBitmapImageRep?

  /**
    - Selector: canBeCompressedUsing:
  */
  @objc (canBeCompressedUsing:) func canBeCompressed(using: NSBitmapImageRep.TIFFCompression) -> Bool

  /**
    - Selector: colorAtX:y:
  */
  @objc (colorAtX:y:) func colorAt(x: Int, y: Int) -> NSColor?

  /**
    - Selector: colorizeByMappingGray:toColor:blackMapping:whiteMapping:
  */
  @objc (colorizeByMappingGray:toColor:blackMapping:whiteMapping:) func colorize(byMappingGray: CGFloat, to: NSColor?, blackMapping: NSColor?, whiteMapping: NSColor?)

  /**
    - Selector: getBitmapDataPlanes:
  */
  @objc func getBitmapDataPlanes(_: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>)

  /**
    - Selector: getCompression:factor:
  */
  @objc func getCompression(_: UnsafeMutablePointer<NSBitmapImageRep.TIFFCompression>?, factor: UnsafeMutablePointer<Float>?)

  /**
    - Selector: getPixel:atX:y:
  */
  @objc func getPixel(_: UnsafeMutablePointer<Int>, atX: Int, y: Int)

  /**
    - Selector: incrementalLoadFromData:complete:
  */
  @objc (incrementalLoadFromData:complete:) func incrementalLoad(from: Data, complete: Bool) -> Int

  /**
    - Selector: representationUsingType:properties:
  */
  @objc (representationUsingType:properties:) func representation(using: NSBitmapImageRep.FileType, properties: [NSBitmapImageRep.PropertyKey: Any]) -> Data?

  /**
    - Selector: setColor:atX:y:
  */
  @objc func setColor(_: NSColor, atX: Int, y: Int)

  /**
    - Selector: setCompression:factor:
  */
  @objc func setCompression(_: NSBitmapImageRep.TIFFCompression, factor: Float)

  /**
    - Selector: setPixel:atX:y:
  */
  @objc func setPixel(_: UnsafeMutablePointer<Int>, atX: Int, y: Int)

  /**
    - Selector: setProperty:withValue:
  */
  @objc func setProperty(_: NSBitmapImageRep.PropertyKey, withValue: Any?)

  /**
    - Selector: valueForProperty:
  */
  @objc (valueForProperty:) func value(forProperty: NSBitmapImageRep.PropertyKey) -> Any?

  // Own Instance Properties

  /**
    - Selector: CGImage
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var cgImage: CGImage? { @objc (CGImage) get }

  /**
    - Selector: TIFFRepresentation
  */
  @objc var tiffRepresentation: Data? { @objc (TIFFRepresentation) get }

  /**
    - Selector: bitmapData
  */
  @objc var bitmapData: UnsafeMutablePointer<UInt8>? { @objc get }

  /**
    - Selector: bitmapFormat
  */
  @objc var bitmapFormat: NSBitmapImageRep.Format { @objc get }

  /**
    - Selector: bitsPerPixel
  */
  @objc var bitsPerPixel: Int { @objc get }

  /**
    - Selector: bytesPerPlane
  */
  @objc var bytesPerPlane: Int { @objc get }

  /**
    - Selector: bytesPerRow
  */
  @objc var bytesPerRow: Int { @objc get }

  /**
    - Selector: colorSpace
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var colorSpace: NSColorSpace { @objc get }

  /**
    - Selector: numberOfPlanes
  */
  @objc var numberOfPlanes: Int { @objc get }

  /**
    - Selector: planar
  */
  @objc var isPlanar: Bool { @objc get }

  /**
    - Selector: samplesPerPixel
  */
  @objc var samplesPerPixel: Int { @objc get }
}

extension NSBitmapImageRep: NSBitmapImageRepExports {

  /**
    - Selector: imageRepWithData:
  */
  @objc public static func createWithData(_ data: Data) -> Self? {
    return self.init(data: data)
  }

}
