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
    - Selector: NSXMLNode
  */

@objc(XMLNode) protocol XMLNodeExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: DTDNodeWithXMLString:
  */
  @objc (DTDNodeWithXMLString:) static func dtdNode(withXMLString: String) -> Any?

  /**
    - Selector: attributeWithName:URI:stringValue:
  */
  @objc (attributeWithName:URI:stringValue:) static func attribute(withName: String, uri: String, stringValue: String) -> Any

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
    - Selector: documentWithRootElement:
  */
  @objc (documentWithRootElement:) static func document(withRootElement: XMLElement) -> Any

  /**
    - Selector: elementWithName:
  */
  @objc (elementWithName:) static func element(withName: String) -> Any

  /**
    - Selector: elementWithName:URI:
  */
  @objc (elementWithName:URI:) static func element(withName: String, uri: String) -> Any

  /**
    - Selector: elementWithName:children:attributes:
  */
  @objc (elementWithName:children:attributes:) static func element(withName: String, children: [XMLNode]?, attributes: [XMLNode]?) -> Any

  /**
    - Selector: elementWithName:stringValue:
  */
  @objc (elementWithName:stringValue:) static func element(withName: String, stringValue: String) -> Any

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

  // Instance Methods

  /**
    - Selector: XMLStringWithOptions:
  */
  @objc (XMLStringWithOptions:) func xmlString(options: XMLNode.Options) -> String

  /**
    - Selector: canonicalXMLStringPreservingComments:
  */
  @objc func canonicalXMLStringPreservingComments(_: Bool) -> String

  /**
    - Selector: childAtIndex:
  */
  @objc (childAtIndex:) func child(at: Int) -> XMLNode?

  /**
    - Selector: detach
  */
  @objc func detach()

  /**
    - Selector: nodesForXPath:error:
  */
  // throws - @objc func nodesForXPath(xpath: String) -> [XMLNode]?

  /**
    - Selector: objectsForXQuery:constants:error:
  */
  // throws - @objc func objectsForXQuery(xquery: String, constants: [String: Any]?) -> [Any]?

  /**
    - Selector: objectsForXQuery:error:
  */
  // throws - @objc func objectsForXQuery(xquery: String) -> [Any]?

  // Own Instance Properties

  /**
    - Selector: URI
  */
  @objc var uri: String? { @objc (URI) get @objc (setURI:) set }

  /**
    - Selector: XMLString
  */
  @objc var xmlString: String { @objc (XMLString) get }

  /**
    - Selector: XPath
  */
  @objc var xPath: String? { @objc (XPath) get }

  /**
    - Selector: childCount
  */
  @objc var childCount: Int { @objc get }

  /**
    - Selector: children
  */
  @objc var children: [XMLNode]? { @objc get }

  /**
    - Selector: index
  */
  @objc var index: Int { @objc get }

  /**
    - Selector: kind
  */
  @objc var kind: XMLNode.Kind { @objc get }

  /**
    - Selector: level
  */
  @objc var level: Int { @objc get }

  /**
    - Selector: localName
  */
  @objc var localName: String? { @objc get }

  /**
    - Selector: name
  */
  @objc var name: String? { @objc get @objc (setName:) set }

  /**
    - Selector: nextNode
  */
  @objc var next: XMLNode? { @objc (nextNode) get }

  /**
    - Selector: nextSibling
  */
  @objc var nextSibling: XMLNode? { @objc get }

  /**
    - Selector: objectValue
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - Selector: parent
  */
  @objc var parent: XMLNode? { @objc get }

  /**
    - Selector: prefix
  */
  @objc var prefix: String? { @objc get }

  /**
    - Selector: previousNode
  */
  @objc var previous: XMLNode? { @objc (previousNode) get }

  /**
    - Selector: previousSibling
  */
  @objc var previousSibling: XMLNode? { @objc get }

  /**
    - Selector: rootDocument
  */
  @objc var rootDocument: XMLDocument? { @objc get }

  /**
    - Selector: stringValue
  */
  @objc var stringValue: String? { @objc get @objc (setStringValue:) set }
}

extension XMLNode: XMLNodeExports {
}
