import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSPICTImageRep
    - name: NSPICTImageRep
    - argLabels: 
  */

@objc(NSPICTImageRep) protocol NSPICTImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: pictRepresentation
    - name: PICTRepresentation
    - argLabels: 
    - obsoleted: 3
    - renamed: pictRepresentation
  */
  @objc var pictRepresentation: Data { @objc (PICTRepresentation) get }

  /**
    - jsName: boundingBox
    - name: boundingBox
    - argLabels: 
  */
  @objc var boundingBox: CGRect { @objc get }
}

extension NSPICTImageRep: NSPICTImageRepExports {
}
