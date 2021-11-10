import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

// Interface 

  /**
    - Selector: NSTextAttachment
    - Introduced: 10.0
  */

@objc(NSTextAttachment) protocol NSTextAttachmentExports: JSExport, NSObjectExports {
  // Static Methods

  // Own Instance Properties

  /**
    - Selector: attachmentCell
    - Introduced: 10.0
  */
  @objc @available(OSX 10.0, *) var attachmentCell: NSTextAttachmentCellProtocol? { @objc get @objc (setAttachmentCell:) set }

  /**
    - Selector: bounds
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var bounds: CGRect { @objc get @objc (setBounds:) set }

  /**
    - Selector: contents
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var contents: Data? { @objc get @objc (setContents:) set }

  /**
    - Selector: fileType
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var fileType: String? { @objc get @objc (setFileType:) set }

  /**
    - Selector: fileWrapper
  */
  @objc var fileWrapper: FileWrapper? { @objc get @objc (setFileWrapper:) set }

  /**
    - Selector: image
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var image: NSImage? { @objc get @objc (setImage:) set }
}

extension NSTextAttachment: NSTextAttachmentExports {
}
