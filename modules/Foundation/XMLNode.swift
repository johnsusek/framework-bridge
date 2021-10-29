import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: XMLNode
    - name: NSXMLNode
    - argLabels: 
  */

@objc(XMLNode) protocol XMLNodeExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: dtdNode
    - name: DTDNodeWithXMLString:
    - argLabels: withXMLString
    - constructorTokens: 
    - obsoleted: 3
    - renamed: dtdNode(withXMLString:)
  */
  @objc (DTDNodeWithXMLString:) static func dtdNode(withXMLString: String) -> Any?

  /**
    - jsName: attribute
    - name: attributeWithName:URI:stringValue:
    - argLabels: withName, uri, stringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attribute(withName:uri:stringValue:)
  */
  @objc (attributeWithName:URI:stringValue:) static func attribute(withName: String, uri: String, stringValue: String) -> Any

  /**
    - jsName: attribute
    - name: attributeWithName:stringValue:
    - argLabels: withName, stringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attribute(withName:stringValue:)
  */
  @objc (attributeWithName:stringValue:) static func attribute(withName: String, stringValue: String) -> Any

  /**
    - jsName: comment
    - name: commentWithStringValue:
    - argLabels: withStringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: comment(withStringValue:)
  */
  @objc (commentWithStringValue:) static func comment(withStringValue: String) -> Any

  /**
    - jsName: document
    - name: document
    - argLabels: 
    - constructorTokens: 
  */
  @objc static func document() -> Any

  /**
    - jsName: document
    - name: documentWithRootElement:
    - argLabels: withRootElement
    - constructorTokens: 
    - obsoleted: 3
    - renamed: document(withRootElement:)
  */
  @objc (documentWithRootElement:) static func document(withRootElement: XMLElement) -> Any

  /**
    - jsName: element
    - name: elementWithName:
    - argLabels: withName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: element(withName:)
  */
  @objc (elementWithName:) static func element(withName: String) -> Any

  /**
    - jsName: element
    - name: elementWithName:URI:
    - argLabels: withName, uri
    - constructorTokens: 
    - obsoleted: 3
    - renamed: element(withName:uri:)
  */
  @objc (elementWithName:URI:) static func element(withName: String, uri: String) -> Any

  /**
    - jsName: element
    - name: elementWithName:children:attributes:
    - argLabels: withName, children, attributes
    - constructorTokens: 
    - obsoleted: 3
    - renamed: element(withName:children:attributes:)
  */
  @objc (elementWithName:children:attributes:) static func element(withName: String, children: [XMLNode]?, attributes: [XMLNode]?) -> Any

  /**
    - jsName: element
    - name: elementWithName:stringValue:
    - argLabels: withName, stringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: element(withName:stringValue:)
  */
  @objc (elementWithName:stringValue:) static func element(withName: String, stringValue: String) -> Any

  /**
    - jsName: localName
    - name: localNameForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: localName(forName:)
  */
  @objc (localNameForName:) static func localName(forName: String) -> String

  /**
    - jsName: namespace
    - name: namespaceWithName:stringValue:
    - argLabels: withName, stringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: namespace(withName:stringValue:)
  */
  @objc (namespaceWithName:stringValue:) static func namespace(withName: String, stringValue: String) -> Any

  /**
    - jsName: predefinedNamespace
    - name: predefinedNamespaceForPrefix:
    - argLabels: forPrefix
    - constructorTokens: 
    - obsoleted: 3
    - renamed: predefinedNamespace(forPrefix:)
  */
  @objc (predefinedNamespaceForPrefix:) static func predefinedNamespace(forPrefix: String) -> XMLNode?

  /**
    - jsName: prefix
    - name: prefixForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prefix(forName:)
  */
  @objc (prefixForName:) static func prefix(forName: String) -> String?

  /**
    - jsName: processingInstruction
    - name: processingInstructionWithName:stringValue:
    - argLabels: withName, stringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: processingInstruction(withName:stringValue:)
  */
  @objc (processingInstructionWithName:stringValue:) static func processingInstruction(withName: String, stringValue: String) -> Any

  /**
    - jsName: text
    - name: textWithStringValue:
    - argLabels: withStringValue
    - constructorTokens: 
    - obsoleted: 3
    - renamed: text(withStringValue:)
  */
  @objc (textWithStringValue:) static func text(withStringValue: String) -> Any

  // Instance Methods

  /**
    - jsName: xmlString
    - name: XMLStringWithOptions:
    - argLabels: options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: xmlString(options:)
  */
  @objc (XMLStringWithOptions:) func xmlString(options: XMLNode.Options) -> String

  /**
    - jsName: canonicalXMLStringPreservingComments
    - name: canonicalXMLStringPreservingComments:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func canonicalXMLStringPreservingComments(_: Bool) -> String

  /**
    - jsName: child
    - name: childAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: child(at:)
  */
  @objc (childAtIndex:) func child(at: Int) -> XMLNode?

  /**
    - jsName: detach
    - name: detach
    - argLabels: 
    - constructorTokens: 
  */
  @objc func detach()

  /**
    - jsName: createWithKind
    - name: initWithKind:
    - argLabels: 
    - constructorTokens: kind
  */
  @objc static func createWithKind(_: XMLNode.Kind) -> Self

  /**
    - jsName: createWithKind
    - name: initWithKind:options:
    - argLabels: options
    - constructorTokens: kind, options
  */
  @objc static func createWithKind(_: XMLNode.Kind, options: XMLNode.Options) -> Self

  /**
    - jsName: nodesForXPath
    - name: nodesForXPath:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func nodesForXPath(error: String) -> [XMLNode]?

  /**
    - jsName: objectsForXQuery
    - name: objectsForXQuery:constants:error:
    - argLabels: constants, error
    - constructorTokens: 
  */
  // throws - @objc func objectsForXQuery(constants: String, error: [String: Any]?) -> [Any]?

  /**
    - jsName: objectsForXQuery
    - name: objectsForXQuery:error:
    - argLabels: error
    - constructorTokens: 
  */
  // throws - @objc func objectsForXQuery(error: String) -> [Any]?

  // Own Instance Properties

  /**
    - jsName: uri
    - name: URI
    - argLabels: 
    - obsoleted: 3
    - renamed: uri
  */
  @objc var uri: String? { @objc (URI) get @objc (setURI:) set }

  /**
    - jsName: xmlString
    - name: XMLString
    - argLabels: 
    - obsoleted: 3
    - renamed: xmlString
  */
  @objc var xmlString: String { @objc (XMLString) get }

  /**
    - jsName: xPath
    - name: XPath
    - argLabels: 
    - obsoleted: 3
    - renamed: xPath
  */
  @objc var xPath: String? { @objc (XPath) get }

  /**
    - jsName: childCount
    - name: childCount
    - argLabels: 
  */
  @objc var childCount: Int { @objc get }

  /**
    - jsName: children
    - name: children
    - argLabels: 
  */
  @objc var children: [XMLNode]? { @objc get }

  /**
    - jsName: index
    - name: index
    - argLabels: 
  */
  @objc var index: Int { @objc get }

  /**
    - jsName: kind
    - name: kind
    - argLabels: 
  */
  @objc var kind: XMLNode.Kind { @objc get }

  /**
    - jsName: level
    - name: level
    - argLabels: 
  */
  @objc var level: Int { @objc get }

  /**
    - jsName: localName
    - name: localName
    - argLabels: 
  */
  @objc var localName: String? { @objc get }

  /**
    - jsName: name
    - name: name
    - argLabels: 
  */
  @objc var name: String? { @objc get @objc (setName:) set }

  /**
    - jsName: next
    - name: nextNode
    - argLabels: 
    - obsoleted: 3
    - renamed: next
  */
  @objc var next: XMLNode? { @objc (nextNode) get }

  /**
    - jsName: nextSibling
    - name: nextSibling
    - argLabels: 
  */
  @objc var nextSibling: XMLNode? { @objc get }

  /**
    - jsName: objectValue
    - name: objectValue
    - argLabels: 
  */
  @objc var objectValue: Any? { @objc get @objc (setObjectValue:) set }

  /**
    - jsName: parent
    - name: parent
    - argLabels: 
  */
  @objc var parent: XMLNode? { @objc get }

  /**
    - jsName: prefix
    - name: prefix
    - argLabels: 
  */
  @objc var prefix: String? { @objc get }

  /**
    - jsName: previous
    - name: previousNode
    - argLabels: 
    - obsoleted: 3
    - renamed: previous
  */
  @objc var previous: XMLNode? { @objc (previousNode) get }

  /**
    - jsName: previousSibling
    - name: previousSibling
    - argLabels: 
  */
  @objc var previousSibling: XMLNode? { @objc get }

  /**
    - jsName: rootDocument
    - name: rootDocument
    - argLabels: 
  */
  @objc var rootDocument: XMLDocument? { @objc get }

  /**
    - jsName: stringValue
    - name: stringValue
    - argLabels: 
  */
  @objc var stringValue: String? { @objc get @objc (setStringValue:) set }
}

extension XMLNode: XMLNodeExports {
  @objc public static func createWithKind(_ kind: XMLNode.Kind) -> Self {
    return self.init(kind: kind)
  }

  @objc public static func createWithKind(_ kind: XMLNode.Kind, options: XMLNode.Options) -> Self {
    return self.init(kind: kind, options: options)
  }

}
