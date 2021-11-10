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
    - Selector: NSXMLElement
  */

@objc(XMLElement) protocol XMLElementExports: JSExport, XMLNodeExports {
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

  // Instance Methods

  /**
    - Selector: addAttribute:
  */
  @objc func addAttribute(_: XMLNode)

  /**
    - Selector: addChild:
  */
  @objc func addChild(_: XMLNode)

  /**
    - Selector: addNamespace:
  */
  @objc func addNamespace(_: XMLNode)

  /**
    - Selector: attributeForLocalName:URI:
  */
  @objc (attributeForLocalName:URI:) func attribute(forLocalName: String, uri: String?) -> XMLNode?

  /**
    - Selector: attributeForName:
  */
  @objc (attributeForName:) func attribute(forName: String) -> XMLNode?

  /**
    - Selector: elementsForLocalName:URI:
  */
  @objc (elementsForLocalName:URI:) func elements(forLocalName: String, uri: String?) -> [XMLElement]

  /**
    - Selector: elementsForName:
  */
  @objc (elementsForName:) func elements(forName: String) -> [XMLElement]

  /**
    - Selector: insertChild:atIndex:
  */
  @objc (insertChild:atIndex:) func insertChild(_: XMLNode, at: Int)

  /**
    - Selector: insertChildren:atIndex:
  */
  @objc (insertChildren:atIndex:) func insertChildren(_: [XMLNode], at: Int)

  /**
    - Selector: namespaceForPrefix:
  */
  @objc (namespaceForPrefix:) func namespace(forPrefix: String) -> XMLNode?

  /**
    - Selector: normalizeAdjacentTextNodesPreservingCDATA:
  */
  @objc func normalizeAdjacentTextNodesPreservingCDATA(_: Bool)

  /**
    - Selector: removeAttributeForName:
  */
  @objc (removeAttributeForName:) func removeAttribute(forName: String)

  /**
    - Selector: removeChildAtIndex:
  */
  @objc (removeChildAtIndex:) func removeChild(at: Int)

  /**
    - Selector: removeNamespaceForPrefix:
  */
  @objc (removeNamespaceForPrefix:) func removeNamespace(forPrefix: String)

  /**
    - Selector: replaceChildAtIndex:withNode:
  */
  @objc (replaceChildAtIndex:withNode:) func replaceChild(at: Int, with: XMLNode)

  /**
    - Selector: resolveNamespaceForName:
  */
  @objc (resolveNamespaceForName:) func resolveNamespace(forName: String) -> XMLNode?

  /**
    - Selector: resolvePrefixForNamespaceURI:
  */
  @objc (resolvePrefixForNamespaceURI:) func resolvePrefix(forNamespaceURI: String) -> String?

  /**
    - Selector: setAttributesAsDictionary:
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: setAttributesWithDictionary:
  */
  @objc (setAttributesAsDictionary:) @available(OSX 10.0, *) func setAttributesAs(_: [AnyHashable: Any])

  /**
    - Selector: setAttributesWithDictionary:
  */
  @objc (setAttributesWithDictionary:) func setAttributesWith(_: [String: String])

  /**
    - Selector: setChildren:
  */
  @objc func setChildren(_: [XMLNode]?)

  // Own Instance Properties

  /**
    - Selector: attributes
  */
  @objc var attributes: [XMLNode]? { @objc get @objc (setAttributes:) set }

  /**
    - Selector: namespaces
  */
  @objc var namespaces: [XMLNode]? { @objc get @objc (setNamespaces:) set }
}

extension XMLElement: XMLElementExports {
}
