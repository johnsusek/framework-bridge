import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSURLDownload
    - name: NSURLDownload
    - argLabels: 
  */

@objc(NSURLDownload) protocol NSURLDownloadExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: canResumeDownloadDecoded
    - name: canResumeDownloadDecodedWithEncodingMIMEType:
    - argLabels: withEncodingMIMEType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: canResumeDownloadDecoded(withEncodingMIMEType:)
  */
  @objc (canResumeDownloadDecodedWithEncodingMIMEType:) static func canResumeDownloadDecoded(withEncodingMIMEType: String) -> Bool

  // Instance Methods

  /**
    - jsName: cancel
    - name: cancel
    - argLabels: 
    - constructorTokens: 
  */
  @objc func cancel()

  /**
    - jsName: setDestination
    - name: setDestination:allowOverwrite:
    - argLabels: allowOverwrite
    - constructorTokens: 
  */
  @objc func setDestination(_: String, allowOverwrite: Bool)

  // Own Instance Properties

  /**
    - jsName: deletesFileUponFailure
    - name: deletesFileUponFailure
    - argLabels: 
  */
  @objc var deletesFileUponFailure: Bool { @objc get @objc (setDeletesFileUponFailure:) set }

  /**
    - jsName: request
    - name: request
    - argLabels: 
  */
  @objc var request: URLRequest { @objc get }

  /**
    - jsName: resumeData
    - name: resumeData
    - argLabels: 
  */
  @objc var resumeData: Data? { @objc get }
}

extension NSURLDownload: NSURLDownloadExports {
}
