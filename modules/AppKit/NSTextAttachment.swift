import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - jsName: NSTextAttachment
    - name: NSTextAttachment
    - argLabels: 
    - Introduced: 10.0
  */

@objc(NSTextAttachment) protocol NSTextAttachmentExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: createWithFileWrapper
    - name: initWithFileWrapper:
    - argLabels: 
    - constructorTokens: fileWrapper
  */
  @objc static func createWithFileWrapper(_: FileWrapper?) -> Self

  // Own Instance Properties

  /**
    - jsName: attachmentCell
    - name: attachmentCell
    - argLabels: 
    - available: 10.0
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var attachmentCell: NSTextAttachmentCellProtocol? { @objc get @objc (setAttachmentCell:) set }

  /**
    - jsName: bounds
    - name: bounds
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var bounds: CGRect { @objc get @objc (setBounds:) set }

  /**
    - jsName: contents
    - name: contents
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var contents: Data? { @objc get @objc (setContents:) set }

  /**
    - jsName: fileType
    - name: fileType
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var fileType: String? { @objc get @objc (setFileType:) set }

  /**
    - jsName: fileWrapper
    - name: fileWrapper
    - argLabels: 
  */
  @objc var fileWrapper: FileWrapper? { @objc get @objc (setFileWrapper:) set }

  /**
    - jsName: image
    - name: image
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var image: NSImage? { @objc get @objc (setImage:) set }
}

extension NSTextAttachment: NSTextAttachmentExports {
  @objc public static func createWithFileWrapper(_ fileWrapper: FileWrapper?) -> Self {
    return self.init(fileWrapper: fileWrapper)
  }

}
