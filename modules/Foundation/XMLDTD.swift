import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: XMLDTD
    - name: NSXMLDTD
    - argLabels: 
  */

@objc(XMLDTD) protocol XMLDTDExports: JSExport, XMLNodeExports {
  // Static Methods

  /**
    - jsName: predefinedEntityDeclaration
    - name: predefinedEntityDeclarationForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: predefinedEntityDeclaration(forName:)
  */
  @objc (predefinedEntityDeclarationForName:) static func predefinedEntityDeclaration(forName: String) -> XMLDTDNode?

  // Instance Methods

  /**
    - jsName: addChild
    - name: addChild:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func addChild(_: XMLNode)

  /**
    - jsName: attributeDeclaration
    - name: attributeDeclarationForName:elementName:
    - argLabels: forName, elementName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attributeDeclaration(forName:elementName:)
  */
  @objc (attributeDeclarationForName:elementName:) func attributeDeclaration(forName: String, elementName: String) -> XMLDTDNode?

  /**
    - jsName: elementDeclaration
    - name: elementDeclarationForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: elementDeclaration(forName:)
  */
  @objc (elementDeclarationForName:) func elementDeclaration(forName: String) -> XMLDTDNode?

  /**
    - jsName: entityDeclaration
    - name: entityDeclarationForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: entityDeclaration(forName:)
  */
  @objc (entityDeclarationForName:) func entityDeclaration(forName: String) -> XMLDTDNode?

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:options:error:
    - argLabels: options, error
    - constructorTokens: contentsOf, options
  */
  @objc static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self?

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
    - jsName: notationDeclaration
    - name: notationDeclarationForName:
    - argLabels: forName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: notationDeclaration(forName:)
  */
  @objc (notationDeclarationForName:) func notationDeclaration(forName: String) -> XMLDTDNode?

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
    - jsName: setChildren
    - name: setChildren:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setChildren(_: [XMLNode]?)

  // Own Instance Properties

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

extension XMLDTD: XMLDTDExports {
  @objc public static func createWithContentsOfURL(contentsOf: URL, options: XMLNode.Options) -> Self? {
    return try? self.init(contentsOf: contentsOf, options: options)
  }

}
