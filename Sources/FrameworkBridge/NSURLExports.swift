import AppKit
import JavaScriptCore

@objc protocol NSURLExportsManual: JSExport {
  @objc @available(OSX 10.6, *) func pathIdentifier() -> String?
}

extension NSURL: NSURLExportsManual {
  func pathIdentifier() -> String? {
      guard let fileExtension = self.pathExtension else { return nil }
      let unmanagedString = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, fileExtension as CFString, nil)

      if (unmanagedString != nil) {
        let typeIdentifier = unmanagedString!.takeRetainedValue() as String
        return typeIdentifier
      }

      return nil
  }
}
