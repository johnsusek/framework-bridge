import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSEPSImageRep
    - name: NSEPSImageRep
    - argLabels: 
  */

@objc(NSEPSImageRep) protocol NSEPSImageRepExports: JSExport, NSImageRepExports {
  // Static Methods

  // Own Instance Properties

  /**
    - jsName: epsRepresentation
    - name: EPSRepresentation
    - argLabels: 
    - obsoleted: 3
    - renamed: epsRepresentation
  */
  @objc var epsRepresentation: Data { @objc (EPSRepresentation) get }

  /**
    - jsName: boundingBox
    - name: boundingBox
    - argLabels: 
  */
  @objc var boundingBox: CGRect { @objc get }
}

extension NSEPSImageRep: NSEPSImageRepExports {
}
