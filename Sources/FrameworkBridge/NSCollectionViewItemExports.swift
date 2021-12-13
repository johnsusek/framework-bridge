import AppKit
import JavaScriptCore

@objc(CollectionViewItem) class CollectionViewItem: NSCollectionViewItem {
  override func loadView() {
    let stackView = NSStackView()
    stackView.orientation = .vertical
    self.view = stackView
  }
}

@objc protocol CollectionViewExports: JSExport {}

extension CollectionViewItem: CollectionViewExports {}