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
    - Selector: NSXMLParser
  */

@objc(XMLParser) protocol XMLParserExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: abortParsing
  */
  @objc func abortParsing()

  /**
    - Selector: parse
  */
  @objc func parse() -> Bool

  // Own Instance Properties

  /**
    - Selector: allowedExternalEntityURLs
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var allowedExternalEntityURLs: Set<URL>? { @objc get @objc (setAllowedExternalEntityURLs:) set }

  /**
    - Selector: columnNumber
  */
  @objc var columnNumber: Int { @objc get }

  /**
    - Selector: delegate
  */
  @objc var delegate: XMLParserDelegate? { @objc get @objc (setDelegate:) set }

  /**
    - Selector: externalEntityResolvingPolicy
    - Introduced: 10.9
  */
  @objc @available(OSX 10.9, *) var externalEntityResolvingPolicy: XMLParser.ExternalEntityResolvingPolicy { @objc get @objc (setExternalEntityResolvingPolicy:) set }

  /**
    - Selector: lineNumber
  */
  @objc var lineNumber: Int { @objc get }

  /**
    - Selector: parserError
  */
  @objc var parserError: Error? { @objc get }

  /**
    - Selector: publicID
  */
  @objc var publicID: String? { @objc get }

  /**
    - Selector: shouldProcessNamespaces
  */
  @objc var shouldProcessNamespaces: Bool { @objc get @objc (setShouldProcessNamespaces:) set }

  /**
    - Selector: shouldReportNamespacePrefixes
  */
  @objc var shouldReportNamespacePrefixes: Bool { @objc get @objc (setShouldReportNamespacePrefixes:) set }

  /**
    - Selector: shouldResolveExternalEntities
  */
  @objc var shouldResolveExternalEntities: Bool { @objc get @objc (setShouldResolveExternalEntities:) set }

  /**
    - Selector: systemID
  */
  @objc var systemID: String? { @objc get }
}

extension XMLParser: XMLParserExports {
}
