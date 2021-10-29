import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: XMLDocument
    - name: NSXMLDocument
    - argLabels: 
  */

@objc(XMLDocument) protocol XMLDocumentExports: JSExport, XMLNodeExports {
  // Static Methods

  /**
    - jsName: replacementClass
    - name: replacementClassForClass:
    - argLabels: for
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replacementClass(for:)
  */
  @objc (replacementClassForClass:) static func replacementClass(`for`: AnyClass) -> AnyClass

  // Instance Methods

  /**
    - jsName: xmlData
    - name: XMLDataWithOptions:
    - argLabels: options
    - constructorTokens: 
    - obsoleted: 3
    - renamed: xmlData(options:)
  */
  @objc (XMLDataWithOptions:) func xmlData(options: XMLNode.Options) -> Data

  /**
    - jsName: addChild
    - name: addChild:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addChild(_: XMLNode)

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:options:error:
    - argLabels: options, error
    - constructorTokens: contentsOf, options
  */
  @objc static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self?

  /**
    - jsName: createWithRootElement
    - name: initWithRootElement:
    - argLabels: 
    - constructorTokens: rootElement
  */
  @objc static func createWithRootElement(_: XMLElement?) -> Self

  /**
    - jsName: createWithXMLString
    - name: initWithXMLString:options:error:
    - argLabels: options, error
    - constructorTokens: xmlString, options
  */
  @objc static func createWithXMLString(xmlString: String, options: XMLNode.Options) -> Self?

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
    - jsName: objectByApplyingXSLT
    - name: objectByApplyingXSLT:arguments:error:
    - argLabels: arguments, error
    - constructorTokens: 
  */
  // throws - @objc func objectByApplyingXSLT(`arguments`: Data, error: [String: String]?) -> Any?

  /**
    - jsName: objectByApplyingXSLTAtURL
    - name: objectByApplyingXSLTAtURL:arguments:error:
    - argLabels: arguments, error
    - constructorTokens: 
  */
  // throws - @objc func objectByApplyingXSLTAtURL(`arguments`: URL, error: [String: String]?) -> Any?

  /**
    - jsName: objectByApplyingXSLTString
    - name: objectByApplyingXSLTString:arguments:error:
    - argLabels: arguments, error
    - constructorTokens: 
  */
  // throws - @objc func objectByApplyingXSLTString(`arguments`: String, error: [String: String]?) -> Any?

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
    - jsName: replaceChild
    - name: replaceChildAtIndex:withNode:
    - argLabels: at, with
    - constructorTokens: 
    - obsoleted: 3
    - renamed: replaceChild(at:with:)
  */
  @objc (replaceChildAtIndex:withNode:) func replaceChild(at: Int, with: XMLNode)

  /**
    - jsName: rootElement
    - name: rootElement
    - argLabels: 
    - constructorTokens: 
  */
  @objc func rootElement() -> XMLElement?

  /**
    - jsName: setChildren
    - name: setChildren:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setChildren(_: [XMLNode]?)

  /**
    - jsName: setRootElement
    - name: setRootElement:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setRootElement(_: XMLElement)

  /**
    - jsName: validateAndReturnError
    - name: validateAndReturnError:
    - argLabels: 
    - constructorTokens: 
  */
  // throws - @objc func validateAndReturnError() -> Bool

  // Own Instance Properties

  /**
    - jsName: dtd
    - name: DTD
    - argLabels: 
    - obsoleted: 3
    - renamed: dtd
  */
  @objc var dtd: XMLDTD? { @objc (DTD) get @objc (setDTD:) set }

  /**
    - jsName: mimeType
    - name: MIMEType
    - argLabels: 
    - obsoleted: 3
    - renamed: mimeType
  */
  @objc var mimeType: String? { @objc (MIMEType) get @objc (setMIMEType:) set }

  /**
    - jsName: xmlData
    - name: XMLData
    - argLabels: 
    - obsoleted: 3
    - renamed: xmlData
  */
  @objc var xmlData: Data { @objc (XMLData) get }

  /**
    - jsName: characterEncoding
    - name: characterEncoding
    - argLabels: 
  */
  @objc var characterEncoding: String? { @objc get @objc (setCharacterEncoding:) set }

  /**
    - jsName: documentContentKind
    - name: documentContentKind
    - argLabels: 
  */
  @objc var documentContentKind: XMLDocument.ContentKind { @objc get @objc (setDocumentContentKind:) set }

  /**
    - jsName: isStandalone
    - name: standalone
    - argLabels: 
    - obsoleted: 3
    - renamed: isStandalone
  */
  @objc var isStandalone: Bool { @objc get @objc (setStandalone:) set }

  /**
    - jsName: version
    - name: version
    - argLabels: 
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
