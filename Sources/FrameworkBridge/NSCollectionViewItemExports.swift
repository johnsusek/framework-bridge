import AppKit
import JavaScriptCore

@objc(CollectionViewItem) class CollectionViewItem: NSCollectionViewItem {
  override func loadView() {
    let textField = NSTextField()
    self.textField = textField
    let imageView = NSImageView()
    self.imageView = imageView
    let stackView = NSStackView.init(views: [imageView, textField])
    stackView.orientation = .vertical
    stackView.wantsLayer = true
    self.view = stackView
  }
}

@objc protocol CollectionViewExports: JSExport {}

extension CollectionViewItem: CollectionViewExports {}