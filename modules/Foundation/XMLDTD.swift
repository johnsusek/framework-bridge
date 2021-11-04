import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSXMLDTD
  */

@objc(XMLDTD) protocol XMLDTDExports: JSExport, XMLNodeExports {
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
    - Selector: predefinedEntityDeclarationForName:
  */
  @objc (predefinedEntityDeclarationForName:) static func predefinedEntityDeclaration(forName: String) -> XMLDTDNode?

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
    - Selector: addChild:
  */
  @objc func addChild(_: XMLNode)

  /**
    - Selector: attributeDeclarationForName:elementName:
  */
  @objc (attributeDeclarationForName:elementName:) func attributeDeclaration(forName: String, elementName: String) -> XMLDTDNode?

  /**
    - Selector: elementDeclarationForName:
  */
  @objc (elementDeclarationForName:) func elementDeclaration(forName: String) -> XMLDTDNode?

  /**
    - Selector: entityDeclarationForName:
  */
  @objc (entityDeclarationForName:) func entityDeclaration(forName: String) -> XMLDTDNode?

  /**
    - Selector: initWithContentsOfURL:options:error:
  */
  @objc static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self?

  /**
    - Selector: insertChild:atIndex:
  */
  @objc (insertChild:atIndex:) func insertChild(_: XMLNode, at: Int)

  /**
    - Selector: insertChildren:atIndex:
  */
  @objc (insertChildren:atIndex:) func insertChildren(_: [XMLNode], at: Int)

  /**
    - Selector: notationDeclarationForName:
  */
  @objc (notationDeclarationForName:) func notationDeclaration(forName: String) -> XMLDTDNode?

  /**
    - Selector: removeChildAtIndex:
  */
  @objc (removeChildAtIndex:) func removeChild(at: Int)

  /**
    - Selector: replaceChildAtIndex:withNode:
  */
  @objc (replaceChildAtIndex:withNode:) func replaceChild(at: Int, with: XMLNode)

  /**
    - Selector: setChildren:
  */
  @objc func setChildren(_: [XMLNode]?)

  // Own Instance Properties

  /**
    - Selector: publicID
  */
  @objc var publicID: String? { @objc get @objc (setPublicID:) set }

  /**
    - Selector: systemID
  */
  @objc var systemID: String? { @objc get @objc (setSystemID:) set }
}

extension XMLDTD: XMLDTDExports {
  @objc public static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self? {
    return try? self.init(contentsOf: contentsOf, options: options)
  }

}
