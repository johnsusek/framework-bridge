import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSBitmapImageRep
    - name: NSBitmapImageRep
    - argLabels: 
  */

@objc(NSBitmapImageRep) protocol NSBitmapImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  /**
    - jsName: tiffRepresentationOfImageReps
    - name: TIFFRepresentationOfImageRepsInArray:
    - argLabels: in
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tiffRepresentationOfImageReps(in:)
  */
  @objc (TIFFRepresentationOfImageRepsInArray:) static func tiffRepresentationOfImageReps(in: [NSImageRep]) -> Data?

  /**
    - jsName: tiffRepresentationOfImageReps
    - name: TIFFRepresentationOfImageRepsInArray:usingCompression:factor:
    - argLabels: in, using, factor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tiffRepresentationOfImageReps(in:using:factor:)
  */
  @objc (TIFFRepresentationOfImageRepsInArray:usingCompression:factor:) static func tiffRepresentationOfImageReps(in: [NSImageRep], using: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?

  /**
    - jsName: getTIFFCompressionTypes
    - name: getTIFFCompressionTypes:count:
    - argLabels: count
    - constructorTokens: 
  */
  @objc static func getTIFFCompressionTypes(_: UnsafeMutablePointer<UnsafePointer<NSBitmapImageRep.TIFFCompression>?>, count: UnsafeMutablePointer<NSInteger>)

  /**
    - jsName: create
    - name: imageRepWithData:
    - argLabels: data
    - constructorTokens: 
    - unavailable: true
    - renamed: init(data:)
    - message: Not available in Swift
  */
  @objc static func create(data: Data) -> Self?

  /**
    - jsName: imageReps
    - name: imageRepsWithData:
    - argLabels: with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: imageReps(with:)
  */
  @objc (imageRepsWithData:) static func imageReps(with: Data) -> [NSImageRep]

  /**
    - jsName: localizedName
    - name: localizedNameForTIFFCompressionType:
    - argLabels: forTIFFCompressionType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: localizedName(forTIFFCompressionType:)
  */
  @objc (localizedNameForTIFFCompressionType:) static func localizedName(forTIFFCompressionType: NSBitmapImageRep.TIFFCompression) -> String?

  /**
    - jsName: representationOfImageReps
    - name: representationOfImageRepsInArray:usingType:properties:
    - argLabels: in, using, properties
    - constructorTokens: 
    - obsoleted: 3
    - renamed: representationOfImageReps(in:using:properties:)
  */
  @objc (representationOfImageRepsInArray:usingType:properties:) static func representationOfImageReps(in: [NSImageRep], using: NSBitmapImageRep.FileType, properties: [NSBitmapImageRep.PropertyKey: Any]) -> Data?

  // Instance Methods

  /**
    - jsName: tiffRepresentation
    - name: TIFFRepresentationUsingCompression:factor:
    - argLabels: using, factor
    - constructorTokens: 
    - obsoleted: 3
    - renamed: tiffRepresentation(using:factor:)
  */
  @objc (TIFFRepresentationUsingCompression:factor:) func tiffRepresentation(using: NSBitmapImageRep.TIFFCompression, factor: Float) -> Data?

  /**
    - jsName: converting
    - name: bitmapImageRepByConvertingToColorSpace:renderingIntent:
    - argLabels: to, renderingIntent
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: converting(to:renderingIntent:)
    - Introduced: 10.6
  */
  @objc (bitmapImageRepByConvertingToColorSpace:renderingIntent:) @available(OSX 10.6, *) func converting(to: NSColorSpace, renderingIntent: NSColorRenderingIntent) -> NSBitmapImageRep?

  /**
    - jsName: retagging
    - name: bitmapImageRepByRetaggingWithColorSpace:
    - argLabels: with
    - constructorTokens: 
    - available: 10.6
    - obsoleted: 3
    - renamed: retagging(with:)
    - Introduced: 10.6
  */
  @objc (bitmapImageRepByRetaggingWithColorSpace:) @available(OSX 10.6, *) func retagging(with: NSColorSpace) -> NSBitmapImageRep?

  /**
    - jsName: canBeCompressed
    - name: canBeCompressedUsing:
    - argLabels: using
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canBeCompressed(using:)
  */
  @objc (canBeCompressedUsing:) func canBeCompressed(using: NSBitmapImageRep.TIFFCompression) -> Bool

  /**
    - jsName: colorAt
    - name: colorAtX:y:
    - argLabels: x, y
    - constructorTokens: 
    - obsoleted: 3
    - renamed: colorAt(x:y:)
  */
  @objc (colorAtX:y:) func colorAt(x: Int, y: Int) -> NSColor?

  /**
    - jsName: colorize
    - name: colorizeByMappingGray:toColor:blackMapping:whiteMapping:
    - argLabels: byMappingGray, to, blackMapping, whiteMapping
    - constructorTokens: 
    - obsoleted: 3
    - renamed: colorize(byMappingGray:to:blackMapping:whiteMapping:)
  */
  @objc (colorizeByMappingGray:toColor:blackMapping:whiteMapping:) func colorize(byMappingGray: CGFloat, to: NSColor?, blackMapping: NSColor?, whiteMapping: NSColor?)

  /**
    - jsName: getBitmapDataPlanes
    - name: getBitmapDataPlanes:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func getBitmapDataPlanes(_: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>)

  /**
    - jsName: getCompression
    - name: getCompression:factor:
    - argLabels: factor
    - constructorTokens: 
  */
  @objc func getCompression(_: UnsafeMutablePointer<NSBitmapImageRep.TIFFCompression>?, factor: UnsafeMutablePointer<Float>?)

  /**
    - jsName: getPixel
    - name: getPixel:atX:y:
    - argLabels: atX, y
    - constructorTokens: 
  */
  @objc func getPixel(_: UnsafeMutablePointer<Int>, atX: Int, y: Int)

  /**
    - jsName: incrementalLoad
    - name: incrementalLoadFromData:complete:
    - argLabels: from, complete
    - constructorTokens: 
    - obsoleted: 3
    - renamed: incrementalLoad(from:complete:)
  */
  @objc (incrementalLoadFromData:complete:) func incrementalLoad(from: Data, complete: Bool) -> Int

  /**
    - jsName: createForIncrementalLoad
    - name: initForIncrementalLoad
    - argLabels: 
    - constructorTokens: forIncrementalLoad
  */
  @objc static func createForIncrementalLoad() -> Self

  /**
    - jsName: createWithBitmapDataPlanes
    - name: initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bitmapFormat:bytesPerRow:bitsPerPixel:
    - argLabels: pixelsWide, pixelsHigh, bitsPerSample, samplesPerPixel, hasAlpha, isPlanar, colorSpaceName, bitmapFormat, bytesPerRow, bitsPerPixel
    - constructorTokens: bitmapDataPlanes, pixelsWide, pixelsHigh, bitsPerSample, samplesPerPixel, hasAlpha, isPlanar, colorSpaceName, bitmapFormat, bytesPerRow, bitsPerPixel
  */
  @objc static func createWithBitmapDataPlanes(_: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>?, pixelsWide: Int, pixelsHigh: Int, bitsPerSample: Int, samplesPerPixel: Int, hasAlpha: Bool, isPlanar: Bool, colorSpaceName: NSColorSpaceName, bitmapFormat: NSBitmapImageRep.Format, bytesPerRow: Int, bitsPerPixel: Int) -> Self?

  /**
    - jsName: createWithBitmapDataPlanes
    - name: initWithBitmapDataPlanes:pixelsWide:pixelsHigh:bitsPerSample:samplesPerPixel:hasAlpha:isPlanar:colorSpaceName:bytesPerRow:bitsPerPixel:
    - argLabels: pixelsWide, pixelsHigh, bitsPerSample, samplesPerPixel, hasAlpha, isPlanar, colorSpaceName, bytesPerRow, bitsPerPixel
    - constructorTokens: bitmapDataPlanes, pixelsWide, pixelsHigh, bitsPerSample, samplesPerPixel, hasAlpha, isPlanar, colorSpaceName, bytesPerRow, bitsPerPixel
  */
  @objc static func createWithBitmapDataPlanes(_: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>?, pixelsWide: Int, pixelsHigh: Int, bitsPerSample: Int, samplesPerPixel: Int, hasAlpha: Bool, isPlanar: Bool, colorSpaceName: NSColorSpaceName, bytesPerRow: Int, bitsPerPixel: Int) -> Self?

  /**
    - jsName: createWithCGImage
    - name: initWithCGImage:
    - argLabels: 
    - constructorTokens: cgImage
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func createWithCGImage(_: CGImage) -> Self

  /**
    - jsName: createWithCIImage
    - name: initWithCIImage:
    - argLabels: 
    - constructorTokens: ciImage
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) static func createWithCIImage(_: CIImage) -> Self

  /**
    - jsName: representation
    - name: representationUsingType:properties:
    - argLabels: using, properties
    - constructorTokens: 
    - obsoleted: 3
    - renamed: representation(using:properties:)
  */
  @objc (representationUsingType:properties:) func representation(using: NSBitmapImageRep.FileType, properties: [NSBitmapImageRep.PropertyKey: Any]) -> Data?

  /**
    - jsName: setColor
    - name: setColor:atX:y:
    - argLabels: atX, y
    - constructorTokens: 
  */
  @objc func setColor(_: NSColor, atX: Int, y: Int)

  /**
    - jsName: setCompression
    - name: setCompression:factor:
    - argLabels: factor
    - constructorTokens: 
  */
  @objc func setCompression(_: NSBitmapImageRep.TIFFCompression, factor: Float)

  /**
    - jsName: setPixel
    - name: setPixel:atX:y:
    - argLabels: atX, y
    - constructorTokens: 
  */
  @objc func setPixel(_: UnsafeMutablePointer<Int>, atX: Int, y: Int)

  /**
    - jsName: setProperty
    - name: setProperty:withValue:
    - argLabels: withValue
    - constructorTokens: 
  */
  @objc func setProperty(_: NSBitmapImageRep.PropertyKey, withValue: Any?)

  /**
    - jsName: value
    - name: valueForProperty:
    - argLabels: forProperty
    - constructorTokens: 
    - obsoleted: 3
    - renamed: value(forProperty:)
  */
  @objc (valueForProperty:) func value(forProperty: NSBitmapImageRep.PropertyKey) -> Any?

  // Own Instance Properties

  /**
    - jsName: cgImage
    - name: CGImage
    - argLabels: 
    - available: 10.5
    - obsoleted: 3
    - renamed: cgImage
    - Introduced: 10.5
  */
  @objc @available(OSX 10.5, *) var cgImage: CGImage? { @objc (CGImage) get }

  /**
    - jsName: tiffRepresentation
    - name: TIFFRepresentation
    - argLabels: 
    - obsoleted: 3
    - renamed: tiffRepresentation
  */
  @objc var tiffRepresentation: Data? { @objc (TIFFRepresentation) get }

  /**
    - jsName: bitmapData
    - name: bitmapData
    - argLabels: 
  */
  @objc var bitmapData: UnsafeMutablePointer<UInt8>? { @objc get }

  /**
    - jsName: bitmapFormat
    - name: bitmapFormat
    - argLabels: 
  */
  @objc var bitmapFormat: NSBitmapImageRep.Format { @objc get }

  /**
    - jsName: bitsPerPixel
    - name: bitsPerPixel
    - argLabels: 
  */
  @objc var bitsPerPixel: Int { @objc get }

  /**
    - jsName: bytesPerPlane
    - name: bytesPerPlane
    - argLabels: 
  */
  @objc var bytesPerPlane: Int { @objc get }

  /**
    - jsName: bytesPerRow
    - name: bytesPerRow
    - argLabels: 
  */
  @objc var bytesPerRow: Int { @objc get }

  /**
    - jsName: colorSpace
    - name: colorSpace
    - argLabels: 
    - available: 10.6
    - Introduced: 10.6
  */
  @objc @available(OSX 10.6, *) var colorSpace: NSColorSpace { @objc get }

  /**
    - jsName: numberOfPlanes
    - name: numberOfPlanes
    - argLabels: 
  */
  @objc var numberOfPlanes: Int { @objc get }

  /**
    - jsName: isPlanar
    - name: planar
    - argLabels: 
    - obsoleted: 3
    - renamed: isPlanar
  */
  @objc var isPlanar: Bool { @objc get }

  /**
    - jsName: samplesPerPixel
    - name: samplesPerPixel
    - argLabels: 
  */
  @objc var samplesPerPixel: Int { @objc get }
}

extension NSBitmapImageRep: NSBitmapImageRepExports {
  @objc public static func create(data: Data) -> Self? {
    return self.init(data: data)
  }

  @objc public static func createForIncrementalLoad() -> Self {
    return self.init()
  }

  @objc public static func createWithBitmapDataPlanes(_ bitmapDataPlanes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>?, pixelsWide: Int, pixelsHigh: Int, bitsPerSample: Int, samplesPerPixel: Int, hasAlpha: Bool, isPlanar: Bool, colorSpaceName: NSColorSpaceName, bitmapFormat: NSBitmapImageRep.Format, bytesPerRow: Int, bitsPerPixel: Int) -> Self? {
    return self.init(bitmapDataPlanes: bitmapDataPlanes, pixelsWide: pixelsWide, pixelsHigh: pixelsHigh, bitsPerSample: bitsPerSample, samplesPerPixel: samplesPerPixel, hasAlpha: hasAlpha, isPlanar: isPlanar, colorSpaceName: colorSpaceName, bitmapFormat: bitmapFormat, bytesPerRow: bytesPerRow, bitsPerPixel: bitsPerPixel)
  }

  @objc public static func createWithBitmapDataPlanes(_ bitmapDataPlanes: UnsafeMutablePointer<UnsafeMutablePointer<UInt8>?>?, pixelsWide: Int, pixelsHigh: Int, bitsPerSample: Int, samplesPerPixel: Int, hasAlpha: Bool, isPlanar: Bool, colorSpaceName: NSColorSpaceName, bytesPerRow: Int, bitsPerPixel: Int) -> Self? {
    return self.init(bitmapDataPlanes: bitmapDataPlanes, pixelsWide: pixelsWide, pixelsHigh: pixelsHigh, bitsPerSample: bitsPerSample, samplesPerPixel: samplesPerPixel, hasAlpha: hasAlpha, isPlanar: isPlanar, colorSpaceName: colorSpaceName, bytesPerRow: bytesPerRow, bitsPerPixel: bitsPerPixel)
  }

  @objc public static func createWithCGImage(_ cgImage: CGImage) -> Self {
    return self.init(cgImage: cgImage)
  }

  @objc public static func createWithCIImage(_ ciImage: CIImage) -> Self {
    return self.init(ciImage: ciImage)
  }

}
