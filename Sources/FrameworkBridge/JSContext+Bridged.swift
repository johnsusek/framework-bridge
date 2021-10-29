import JavaScriptCore

let subclassed = [
  "AVPlayerView",
  "IKCameraDeviceView",
  "IKDeviceBrowserView",
  "IKFilterBrowserView",
  "IKFilterUIView",
  "IKImageView",
  "IKScannerDeviceView",
  "NSBox",
  "NSBrowser",
  "NSButton",
  "NSClipView",
  "NSCollectionView",
  "NSColorWell",
  "NSComboBox",
  "NSDatePicker",
  "NSGridView",
  "NSImageView",
  "NSLevelIndicator",
  "NSMatrix",
  "NSOutlineView",
  "NSPathControl",
  "NSPopUpButton",
  "NSPredicateEditor",
  "NSProgressIndicator",
  "NSRuleEditor",
  "NSRulerView",
  "NSScroller",
  "NSScrollView",
  "NSScrubber",
  "NSScrubberArrangedView",
  "NSScrubberImageItemView",
  "NSScrubberTextItemView",
  "NSSearchField",
  "NSSecureTextField",
  "NSSegmentedControl",
  "NSSlider",
  "NSSplitView",
  "NSStackView",
  "NSStatusBarButton",
  "NSStepper",
  "NSSwitch",
  "NSTableCellView",
  "NSTableHeaderView",
  "NSTableRowView",
  "NSTableView",
  "NSTabView",
  "NSText",
  "NSTextField",
  "NSTextView",
  "NSTokenField",
  "NSVisualEffectView",
  "QLPreviewView",
  "QuartzFilterView"
]

func classOrProtoFromString(_ name: String) -> Any? {
  let cls: AnyClass? = NSClassFromString(name)
  if cls != nil { return cls }
  let pro = NSProtocolFromString(name)
  if pro != nil {
    return pro
  }
  return nil
}

public extension JSContext {
  func bridgeClass(_ classOrProto: String) -> Bool {
    let classType = classOrProtoFromString(classOrProto)
    let className = classOrProto
    var registered = false

    if subclassed.contains(className) {
      let subclassName = String(className.dropFirst(2))

      if let subClassType = classOrProtoFromString(subclassName) {
        self.setObject(subClassType, forKeyedSubscript: subclassName as (NSCopying & NSObjectProtocol)?)
        print("✔ Registered \(String(describing: subClassType)) as \(subclassName)")
        registered = true
      }
    }

    if (classType != nil) {
      self.setObject(classType!, forKeyedSubscript: className as (NSCopying & NSObjectProtocol)?)
      print("✔ Registered \(classOrProto) as \(className)")
      registered = true
    }
    else {
      print("[bridge] Could not register \(className) because classType nil")
    }

    return registered
  }
}
