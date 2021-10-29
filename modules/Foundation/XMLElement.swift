import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: XMLElement
    - name: NSXMLElement
    - argLabels: 
  */

@objc(XMLElement) protocol XMLElementExports: JSExport, XMLNodeExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: addAttribute
    - name: addAttribute:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addAttribute(_: XMLNode)

  /**
    - jsName: addChild
    - name: addChild:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addChild(_: XMLNode)

  /**
    - jsName: addNamespace
    - name: addNamespace:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addNamespace(_: XMLNode)

  /**
    - jsName: attribute
    - name: attributeForLocalName:URI:
    - argLabels: forLocalName, uri
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attribute(forLocalName:uri:)
  */
  @objc (attributeForLocalName:URI:) func attribute(forLocalName: String, uri: String?) -> XMLNode?

  /**
    - jsName: attribute
    - name: attributeForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attribute(forName:)
  */
  @objc (attributeForName:) func attribute(forName: String) -> XMLNode?

  /**
    - jsName: elements
    - name: elementsForLocalName:URI:
    - argLabels: forLocalName, uri
    - constructorTokens: 
    - obsoleted: 3
    - renamed: elements(forLocalName:uri:)
  */
  @objc (elementsForLocalName:URI:) func elements(forLocalName: String, uri: String?) -> [XMLElement]

  /**
    - jsName: elements
    - name: elementsForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: elements(forName:)
  */
  @objc (elementsForName:) func elements(forName: String) -> [XMLElement]

  /**
    - jsName: createWithXMLString
    - name: initWithXMLString:error:
    - argLabels: error
    - constructorTokens: xmlString
  */
  @objc static func createWithXMLString(xmlString: String) -> Self?

  /**
    - jsName: insertChild
    - name: insertChild:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertChild(_:at:)
  */
  @objc (insertChild:atIndex:) func insertChild(_: XMLNode, at: Int)

  /**
    - jsName: insertChildren
    - name: insertChildren:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insertChildren(_:at:)
  */
  @objc (insertChildren:atIndex:) func insertChildren(_: [XMLNode], at: Int)

  /**
    - jsName: namespace
    - name: namespaceForPrefix:
    - argLabels: forPrefix
    - constructorTokens: 
    - obsoleted: 3
    - renamed: namespace(forPrefix:)
  */
  @objc (namespaceForPrefix:) func namespace(forPrefix: String) -> XMLNode?

  /**
    - jsName: normalizeAdjacentTextNodesPreservingCDATA
    - name: normalizeAdjacentTextNodesPreservingCDATA:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func normalizeAdjacentTextNodesPreservingCDATA(_: Bool)

  /**
    - jsName: removeAttribute
    - name: removeAttributeForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeAttribute(forName:)
  */
  @objc (removeAttributeForName:) func removeAttribute(forName: String)

  /**
    - jsName: removeChild
    - name: removeChildAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeChild(at:)
  */
  @objc (removeChildAtIndex:) func removeChild(at: Int)

  /**
    - jsName: removeNamespace
    - name: removeNamespaceForPrefix:
    - argLabels: forPrefix
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeNamespace(forPrefix:)
  */
  @objc (removeNamespaceForPrefix:) func removeNamespace(forPrefix: String)

  /**
    - jsName: replaceChild
    - name: replaceChildAtIndex:withNode:
    - argLabels: at, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceChild(at:with:)
  */
  @objc (replaceChildAtIndex:withNode:) func replaceChild(at: Int, with: XMLNode)

  /**
    - jsName: resolveNamespace
    - name: resolveNamespaceForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resolveNamespace(forName:)
  */
  @objc (resolveNamespaceForName:) func resolveNamespace(forName: String) -> XMLNode?

  /**
    - jsName: resolvePrefix
    - name: resolvePrefixForNamespaceURI:
    - argLabels: forNamespaceURI
    - constructorTokens: 
    - obsoleted: 3
    - renamed: resolvePrefix(forNamespaceURI:)
  */
  @objc (resolvePrefixForNamespaceURI:) func resolvePrefix(forNamespaceURI: String) -> String?

  /**
    - jsName: setAttributesAs
    - name: setAttributesAsDictionary:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setAttributesAs(_:)
    - introduced: 10.0
    - deprecated: 100000
    - Introduced: 10.0
    - Deprecated: 100000
    - Replacement: setAttributesWithDictionary:
  */
  @objc (setAttributesAsDictionary:) @available(OSX 10.0, *) func setAttributesAs(_: [AnyHashable: Any])

  /**
    - jsName: setAttributesWith
    - name: setAttributesWithDictionary:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setAttributesWith(_:)
  */
  @objc (setAttributesWithDictionary:) func setAttributesWith(_: [String: String])

  /**
    - jsName: setChildren
    - name: setChildren:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setChildren(_: [XMLNode]?)

  // Own Instance Properties

  /**
    - jsName: attributes
    - name: attributes
    - argLabels: 
  */
  @objc var attributes: [XMLNode]? { @objc get @objc (setAttributes:) set }

  /**
    - jsName: namespaces
    - name: namespaces
    - argLabels: 
  */
  @objc var namespaces: [XMLNode]? { @objc get @objc (setNamespaces:) set }
}

extension XMLElement: XMLElementExports {
  @objc public static func createWithXMLString(xmlString: String) -> Self? {
    return try? self.init(xmlString: xmlString)
  }

}
