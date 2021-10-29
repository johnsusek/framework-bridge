import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: XMLParser
    - name: NSXMLParser
    - argLabels: 
  */

@objc(XMLParser) protocol XMLParserExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: abortParsing
    - name: abortParsing
    - argLabels: 
    - constructorTokens: 
  */
  @objc func abortParsing()

  /**
    - jsName: createWithContentsOfURL
    - name: initWithContentsOfURL:
    - argLabels: 
    - constructorTokens: contentsOf
  */
  @objc static func createWithContentsOfURL(_: URL) -> Self?

  /**
    - jsName: createWithStream
    - name: initWithStream:
    - argLabels: 
    - constructorTokens: stream
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) static func createWithStream(_: InputStream) -> Self

  /**
    - jsName: parse
    - name: parse
    - argLabels: 
    - constructorTokens: 
  */
  @objc func parse() -> Bool

  // Own Instance Properties

  /**
    - jsName: allowedExternalEntityURLs
    - name: allowedExternalEntityURLs
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var allowedExternalEntityURLs: Set<URL>? { @objc get @objc (setAllowedExternalEntityURLs:) set }

  /**
    - jsName: columnNumber
    - name: columnNumber
    - argLabels: 
  */
  @objc var columnNumber: Int { @objc get }

  /**
    - jsName: delegate
    - name: delegate
    - argLabels: 
  */
  @objc var delegate: XMLParserDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - jsName: externalEntityResolvingPolicy
    - name: externalEntityResolvingPolicy
    - argLabels: 
    - available: 10.9
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var externalEntityResolvingPolicy: XMLParser.ExternalEntityResolvingPolicy { @objc get @objc (setExternalEntityResolvingPolicy:) set }

  /**
    - jsName: lineNumber
    - name: lineNumber
    - argLabels: 
  */
  @objc var lineNumber: Int { @objc get }

  /**
    - jsName: parserError
    - name: parserError
    - argLabels: 
  */
  @objc var parserError: Error? { @objc get }

  /**
    - jsName: publicID
    - name: publicID
    - argLabels: 
  */
  @objc var publicID: String? { @objc get }

  /**
    - jsName: shouldProcessNamespaces
    - name: shouldProcessNamespaces
    - argLabels: 
  */
  @objc var shouldProcessNamespaces: Bool { @objc get @objc (setShouldProcessNamespaces:) set }

  /**
    - jsName: shouldReportNamespacePrefixes
    - name: shouldReportNamespacePrefixes
    - argLabels: 
  */
  @objc var shouldReportNamespacePrefixes: Bool { @objc get @objc (setShouldReportNamespacePrefixes:) set }

  /**
    - jsName: shouldResolveExternalEntities
    - name: shouldResolveExternalEntities
    - argLabels: 
  */
  @objc var shouldResolveExternalEntities: Bool { @objc get @objc (setShouldResolveExternalEntities:) set }

  /**
    - jsName: systemID
    - name: systemID
    - argLabels: 
  */
  @objc var systemID: String? { @objc get }
}

extension XMLParser: XMLParserExports {
  @objc public static func createWithContentsOfURL(_ contentsOf: URL) -> Self? {
    return self.init(contentsOf: contentsOf)
  }

  @objc public static func createWithStream(_ stream: InputStream) -> Self {
    return self.init(stream: stream)
  }

}
