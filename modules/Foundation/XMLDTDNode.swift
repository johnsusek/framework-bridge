import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: XMLDTDNode
    - name: NSXMLDTDNode
    - argLabels: 
  */

@objc(XMLDTDNode) protocol XMLDTDNodeExports: JSExport, XMLNodeExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithXMLString
    - name: initWithXMLString:
    - argLabels: 
    - constructorTokens: xmlString
  */
  @objc static func createWithXMLString(_: String) -> Self?

  // Own Instance Properties

  /**
    - jsName: dtdKind
    - name: DTDKind
    - argLabels: 
    - obsoleted: 3
    - renamed: dtdKind
  */
  @objc var dtdKind: XMLDTDNode.DTDKind { @objc (DTDKind) get @objc (setDTDKind:) set }

  /**
    - jsName: isExternal
    - name: external
    - argLabels: 
    - obsoleted: 3
    - renamed: isExternal
  */
  @objc var isExternal: Bool { @objc get }

  /**
    - jsName: notationName
    - name: notationName
    - argLabels: 
  */
  @objc var notationName: String? { @objc get @objc (setNotationName:) set }

  /**
    - jsName: publicID
    - name: publicID
    - argLabels: 
  */
  @objc var publicID: String? { @objc get @objc (setPublicID:) set }

  /**
    - jsName: systemID
    - name: systemID
    - argLabels: 
  */
  @objc var systemID: String? { @objc get @objc (setSystemID:) set }
}

extension XMLDTDNode: XMLDTDNodeExports {
  @objc public static func createWithXMLString(_ xmlString: String) -> Self? {
    return self.init(xmlString: xmlString)
  }

}
