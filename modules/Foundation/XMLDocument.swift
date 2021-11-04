import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSXMLDocument
  */

@objc(XMLDocument) protocol XMLDocumentExports: JSExport, XMLNodeExports {
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
    - Selector: replacementClassForClass:
  */
  @objc (replacementClassForClass:) static func replacementClass(`for`: AnyClass) -> AnyClass

  /**
    - Selector: textWithStringValue:
  */
  @objc (textWithStringValue:) static func text(withStringValue: String) -> Any

  // Instance Methods

  /**
    - Selector: XMLDataWithOptions:
  */
  @objc (XMLDataWithOptions:) func xmlData(options: XMLNode.Options) -> Data

  /**
    - Selector: addChild:
  */
  @objc func addChild(_: XMLNode)

  /**
    - Selector: initWithContentsOfURL:options:error:
  */
  @objc static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self?

  /**
    - Selector: initWithRootElement:
  */
  @objc static func createWithRootElement(_: XMLElement?) -> Self

  /**
    - Selector: initWithXMLString:options:error:
  */
  @objc static func createWithXMLString(xmlString: String, options: XMLNode.Options) -> Self?

  /**
    - Selector: insertChild:atIndex:
  */
  @objc (insertChild:atIndex:) func insertChild(_: XMLNode, at: Int)

  /**
    - Selector: insertChildren:atIndex:
  */
  @objc (insertChildren:atIndex:) func insertChildren(_: [XMLNode], at: Int)

  /**
    - Selector: objectByApplyingXSLT:arguments:error:
  */
  // throws - @objc func objectByApplyingXSLT(`arguments`: Data, error: [String: String]?) -> Any?

  /**
    - Selector: objectByApplyingXSLTAtURL:arguments:error:
  */
  // throws - @objc func objectByApplyingXSLTAtURL(`arguments`: URL, error: [String: String]?) -> Any?

  /**
    - Selector: objectByApplyingXSLTString:arguments:error:
  */
  // throws - @objc func objectByApplyingXSLTString(`arguments`: String, error: [String: String]?) -> Any?

  /**
    - Selector: removeChildAtIndex:
  */
  @objc (removeChildAtIndex:) func removeChild(at: Int)

  /**
    - Selector: replaceChildAtIndex:withNode:
  */
  @objc (replaceChildAtIndex:withNode:) func replaceChild(at: Int, with: XMLNode)

  /**
    - Selector: rootElement
  */
  @objc func rootElement() -> XMLElement?

  /**
    - Selector: setChildren:
  */
  @objc func setChildren(_: [XMLNode]?)

  /**
    - Selector: setRootElement:
  */
  @objc func setRootElement(_: XMLElement)

  /**
    - Selector: validateAndReturnError:
  */
  // throws - @objc func validateAndReturnError() -> Bool

  // Own Instance Properties

  /**
    - Selector: DTD
  */
  @objc var dtd: XMLDTD? { @objc (DTD) get @objc (setDTD:) set }

  /**
    - Selector: MIMEType
  */
  @objc var mimeType: String? { @objc (MIMEType) get @objc (setMIMEType:) set }

  /**
    - Selector: XMLData
  */
  @objc var xmlData: Data { @objc (XMLData) get }

  /**
    - Selector: characterEncoding
  */
  @objc var characterEncoding: String? { @objc get @objc (setCharacterEncoding:) set }

  /**
    - Selector: documentContentKind
  */
  @objc var documentContentKind: XMLDocument.ContentKind { @objc get @objc (setDocumentContentKind:) set }

  /**
    - Selector: standalone
  */
  @objc var isStandalone: Bool { @objc get @objc (setStandalone:) set }

  /**
    - Selector: version
  */
  @objc var version: String? { @objc get @objc (setVersion:) set }
}

extension XMLDocument: XMLDocumentExports {
  @objc public static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self? {
    return try? self.init(contentsOf: contentsOf, options: options)
  }

  @objc public static func createWithRootElement(_ rootElement: XMLElement?) -> Self {
    return self.init(rootElement: rootElement)
  }

  @objc public static func createWithXMLString(xmlString: String, options: XMLNode.Options) -> Self? {
    return try? self.init(xmlString: xmlString, options: options)
  }

}
