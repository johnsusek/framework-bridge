import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSXMLDTDNode
  */

@objc(XMLDTDNode) protocol XMLDTDNodeExports: JSExport, XMLNodeExports {
  // Static Methods

  /**
    - Selector: attributeWithName:stringValue:
  */
  @objc (attributeWithName:stringValue:) static func attribute(withName: String, stringValue: String) -> Any

  /**
    - Selector: commentWithStringValue:
  */
  @objc (commentWithStringValue:) static func comment(withStringValue: String) -> Any

  /**
    - Selector: document
  */
  @objc static func document() -> Any

  /**
    - Selector: DTDNodeWithXMLString:
  */
  @objc (DTDNodeWithXMLString:) static func dtdNode(withXMLString: String) -> Any?

  /**
    - Selector: elementWithName:
  */
  @objc (elementWithName:) static func element(withName: String) -> Any

  /**
    - Selector: localNameForName:
  */
  @objc (localNameForName:) static func localName(forName: String) -> String

  /**
    - Selector: namespaceWithName:stringValue:
  */
  @objc (namespaceWithName:stringValue:) static func namespace(withName: String, stringValue: String) -> Any

  /**
    - Selector: predefinedNamespaceForPrefix:
  */
  @objc (predefinedNamespaceForPrefix:) static func predefinedNamespace(forPrefix: String) -> XMLNode?

  /**
    - Selector: prefixForName:
  */
  @objc (prefixForName:) static func prefix(forName: String) -> String?

  /**
    - Selector: processingInstructionWithName:stringValue:
  */
  @objc (processingInstructionWithName:stringValue:) static func processingInstruction(withName: String, stringValue: String) -> Any

  /**
    - Selector: textWithStringValue:
  */
  @objc (textWithStringValue:) static func text(withStringValue: String) -> Any

  // Own Instance Properties

  /**
    - Selector: DTDKind
  */
  @objc var dtdKind: XMLDTDNode.DTDKind { @objc (DTDKind) get @objc (setDTDKind:) set }

  /**
    - Selector: external
  */
  @objc var isExternal: Bool { @objc get }

  /**
    - Selector: notationName
  */
  @objc var notationName: String? { @objc get @objc (setNotationName:) set }

  /**
    - Selector: publicID
  */
  @objc var publicID: String? { @objc get @objc (setPublicID:) set }

  /**
    - Selector: systemID
  */
  @objc var systemID: String? { @objc get @objc (setSystemID:) set }
}

extension XMLDTDNode: XMLDTDNodeExports {
}
