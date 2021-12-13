import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import AppKit

@objc protocol NSCollectionViewExportsManual: JSExport {
  @objc (registerClassString:forItemWithIdentifier:) @available(OSX 10.11, *) func register(_ p0: String, forItemWithIdentifier: NSUserInterfaceItemIdentifier)
  @objc (registerClassString:forSupplementaryViewOfKind:withIdentifier:) @available(OSX 10.11, *) func register(_ p0: String, forSupplementaryViewOfKind: NSCollectionView.SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier)
}

extension NSCollectionView: NSCollectionViewExportsManual {
  func register(_ p0: String, forItemWithIdentifier: NSUserInterfaceItemIdentifier) {
    guard let cls: AnyClass = NSClassFromString(p0) else {
      NSLog("Could not find class named \(p0)")
      return;
    }

    register(cls.self, forItemWithIdentifier: forItemWithIdentifier)
  }

  func register(_ p0: String, forSupplementaryViewOfKind: SupplementaryElementKind, withIdentifier: NSUserInterfaceItemIdentifier) {
    guard let cls: AnyClass = NSClassFromString(p0) else {
      NSLog("Could not find class named \(p0)")
      return;
    }

    register(cls.self, forSupplementaryViewOfKind: forSupplementaryViewOfKind, withIdentifier: withIdentifier)
  }
}
