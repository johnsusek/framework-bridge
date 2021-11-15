const classesToRegister = {
  "Foundation": [
    "BlockOperation",
    "Bundle",
    "CachedURLResponse",
    "Dimension",
    "DistributedNotificationCenter",
    "FileHandle",
    "FileWrapper",
    "Host",
    "HTTPCookie",
    "HTTPCookieStorage",
    "HTTPURLResponse",
    "JSONSerialization",
    "MessagePort",
    "NetServiceBrowser",
    "NotificationCenter",
    "NotificationQueue",
    "NSAppleEventDescriptor",
    "NSAppleScript",
    "NSAssertionHandler",
    "NSAttributedString",
    "NSBackgroundActivityScheduler",
    "NSClassDescription",
    "NSCloneCommand",
    "NSCloseCommand",
    "NSComparisonPredicate",
    "NSCompoundPredicate",
    "NSCondition",
    "NSCountCommand",
    "NSCreateCommand",
    "NSDataDetector",
    "NSDecimalNumberHandler",
    "NSDeleteCommand",
    "NSException",
    "NSExistsCommand",
    "NSExtensionContext",
    "NSExtensionItem",
    "NSFileAccessIntent",
    "NSFileCoordinator",
    "NSFileProviderService",
    "NSFileSecurity",
    "NSFileVersion",
    "NSGetCommand",
    "NSIndexSpecifier",
    "NSItemProvider",
    "NSLogicalTest",
    "NSMachPort",
    "NSMetadataItem",
    "NSMetadataQuery",
    "NSMetadataQueryAttributeValueTuple",
    "NSMetadataQueryResultGroup",
    "NSMiddleSpecifier",
    "NSMoveCommand",
    "NSMutableAttributedString",
    "NSNameSpecifier",
    "NSNull",
    "NSOrthography",
    "NSPointerArray",
    "NSPointerFunctions",
    "NSPositionalSpecifier",
    "NSPredicate",
    "NSPropertySpecifier",
    "NSQuitCommand",
    "NSRandomSpecifier",
    "NSRangeSpecifier",
    "NSRegularExpression",
    "NSRelativeSpecifier",
    "NSScriptClassDescription",
    "NSScriptCoercionHandler",
    "NSScriptCommand",
    "NSScriptExecutionContext",
    "NSScriptObjectSpecifier",
    "NSScriptSuiteRegistry",
    "NSScriptWhoseTest",
    "NSSecureUnarchiveFromDataTransformer",
    "NSSetCommand",
    "NSSortDescriptor",
    "NSSpecifierTest",
    "NSSpellServer",
    "NSTextCheckingResult",
    "NSUbiquitousKeyValueStore",
    "NSUniqueIDSpecifier",
    "NSURL",
    "NSURLConnection",
    "NSURLDownload",
    "NSURLHandle",
    "NSUserActivity",
    "NSUserAppleScriptTask",
    "NSUserAutomatorTask",
    "NSUserNotification",
    "NSUserNotificationAction",
    "NSUserNotificationCenter",
    "NSUserScriptTask",
    "NSUserUnixTask",
    "NSValue",
    "NSWhoseSpecifier",
    "NSXPCConnection",
    "NSXPCListener",
    "NSXPCListenerEndpoint",
    "Operation",
    "OperationQueue",
    "Pipe",
    "Port",
    "Process",
    "ProcessInfo",
    "PropertyListSerialization",
    "Stream",
    "Thread",
    "Timer",
    "UndoManager",
    "Unit",
    "UnitAcceleration",
    "UnitAngle",
    "UnitArea",
    "UnitConcentrationMass",
    "UnitConverter",
    "UnitConverterLinear",
    "UnitDispersion",
    "UnitDuration",
    "UnitElectricCharge",
    "UnitElectricCurrent",
    "UnitElectricPotentialDifference",
    "UnitElectricResistance",
    "UnitEnergy",
    "UnitFrequency",
    "UnitFuelEfficiency",
    "UnitIlluminance",
    "UnitLength",
    "UnitMass",
    "UnitPower",
    "UnitPressure",
    "UnitSpeed",
    "UnitTemperature",
    "UnitVolume",
    "URLAuthenticationChallenge",
    "URLCache",
    "URLCredentialStorage",
    "URLProtocol",
    "URLResponse",
    "URLSession",
    "URLSessionConfiguration",
    "URLSessionDataTask",
    "URLSessionDownloadTask",
    "URLSessionStreamTask",
    "URLSessionTask",
    "URLSessionTaskMetrics",
    "URLSessionUploadTask",
    "URLSessionWebSocketTask",
    "UserDefaults",
    "ValueTransformer",
    "XMLDocument",
    "XMLDTD",
    "XMLDTDNode",
    "XMLElement",
    "XMLNode",
    "XMLParser",
  ],
  "AppKit": [
    "NSAccessibilityCustomRotor",
    "NSActionCell",
    "NSAlert",
    "NSAlignmentFeedbackFilter",
    "NSAnimation",
    "NSAnimationContext",
    "NSAppearance",
    "NSApplication",
    "NSBezierPath",
    "NSBindingSelectionMarker",
    "NSBitmapImageRep",
    "NSBox",
    "NSBrowser",
    "NSBrowserCell",
    "NSButton",
    "NSButtonCell",
    "NSButtonTouchBarItem",
    "NSCell",
    "NSCIImageRep",
    "NSClickGestureRecognizer",
    "NSClipView",
    "NSCollectionLayoutAnchor",
    "NSCollectionLayoutBoundarySupplementaryItem",
    "NSCollectionLayoutDecorationItem",
    "NSCollectionLayoutDimension",
    "NSCollectionLayoutEdgeSpacing",
    "NSCollectionLayoutGroup",
    "NSCollectionLayoutGroupCustomItem",
    "NSCollectionLayoutItem",
    "NSCollectionLayoutSection",
    "NSCollectionLayoutSize",
    "NSCollectionLayoutSpacing",
    "NSCollectionLayoutSupplementaryItem",
    "NSCollectionView",
    "NSCollectionViewCompositionalLayout",
    "NSCollectionViewCompositionalLayoutConfiguration",
    "NSCollectionViewFlowLayout",
    "NSCollectionViewGridLayout",
    "NSCollectionViewItem",
    "NSCollectionViewLayout",
    "NSCollectionViewLayoutAttributes",
    "NSCollectionViewTransitionLayout",
    "NSCollectionViewUpdateItem",
    "NSColor",
    "NSColorList",
    "NSColorPanel",
    "NSColorPicker",
    "NSColorPickerTouchBarItem",
    "NSColorSampler",
    "NSColorSpace",
    "NSColorWell",
    "NSComboBox",
    "NSComboBoxCell",
    "NSControl",
    "NSController",
    "NSCursor",
    "NSCustomImageRep",
    "NSCustomTouchBarItem",
    "NSDataAsset",
    "NSDatePicker",
    "NSDatePickerCell",
    "NSDictionaryControllerKeyValuePair",
    "NSDockTile",
    "NSDocument",
    "NSDocumentController",
    "NSDraggingImageComponent",
    "NSDraggingItem",
    "NSDraggingSession",
    "NSEPSImageRep",
    "NSFilePromiseProvider",
    "NSFilePromiseReceiver",
    "NSFontAssetRequest",
    "NSFontCollection",
    "NSFontDescriptor",
    "NSFontPanel",
    "NSFormCell",
    "NSGestureRecognizer",
    "NSGlyphGenerator",
    "NSGlyphInfo",
    "NSGraphicsContext",
    "NSGridCell",
    "NSGridColumn",
    "NSGridRow",
    "NSGridView",
    "NSGroupTouchBarItem",
    "NSHapticFeedbackManager",
    "NSHelpManager",
    "NSImage",
    "NSImageCell",
    "NSImageRep",
    "NSImageView",
    "NSLayoutAnchor",
    "NSLayoutConstraint",
    "NSLayoutDimension",
    "NSLayoutGuide",
    "NSLayoutManager",
    "NSLayoutXAxisAnchor",
    "NSLayoutYAxisAnchor",
    "NSLevelIndicator",
    "NSLevelIndicatorCell",
    "NSMagnificationGestureRecognizer",
    "NSMatrix",
    "NSMediaLibraryBrowserController",
    "NSMenu",
    "NSMenuItem",
    "NSMenuItemCell",
    "NSMenuToolbarItem",
    "NSMutableFontCollection",
    "NSMutableParagraphStyle",
    "NSNib",
    "NSOpenPanel",
    "NSOutlineView",
    "NSPageController",
    "NSPageLayout",
    "NSPanel",
    "NSPanGestureRecognizer",
    "NSParagraphStyle",
    "NSPasteboard",
    "NSPasteboardItem",
    "NSPathComponentCell",
    "NSPathControl",
    "NSPathControlItem",
    "NSPDFImageRep",
    "NSPDFPanel",
    "NSPersistentDocument",
    "NSPickerTouchBarItem",
    "NSPICTImageRep",
    "NSPopover",
    "NSPopoverTouchBarItem",
    "NSPopUpButton",
    "NSPopUpButtonCell",
    "NSPredicateEditor",
    "NSPredicateEditorRowTemplate",
    "NSPressGestureRecognizer",
    "NSPressureConfiguration",
    "NSPrinter",
    "NSPrintOperation",
    "NSProgressIndicator",
    "NSResponder",
    "NSRotationGestureRecognizer",
    "NSRuleEditor",
    "NSRulerView",
    "NSRunningApplication",
    "NSSavePanel",
    "NSScreen",
    "NSScroller",
    "NSScrollView",
    "NSScrubber",
    "NSScrubberArrangedView",
    "NSScrubberFlowLayout",
    "NSScrubberImageItemView",
    "NSScrubberItemView",
    "NSScrubberLayout",
    "NSScrubberLayoutAttributes",
    "NSScrubberProportionalLayout",
    "NSScrubberSelectionStyle",
    "NSScrubberSelectionView",
    "NSScrubberTextItemView",
    "NSSearchField",
    "NSSearchFieldCell",
    "NSSecureTextField",
    "NSSecureTextFieldCell",
    "NSSegmentedCell",
    "NSSegmentedControl",
    "NSShadow",
    "NSSharingService",
    "NSSharingServicePicker",
    "NSSharingServicePickerToolbarItem",
    "NSSharingServicePickerTouchBarItem",
    "NSSlider",
    "NSSliderAccessory",
    "NSSliderAccessoryBehavior",
    "NSSliderCell",
    "NSSound",
    "NSSpeechRecognizer",
    "NSSpeechSynthesizer",
    "NSSplitView",
    "NSSplitViewController",
    "NSSplitViewItem",
    "NSStackView",
    "NSStatusBar",
    "NSStatusBarButton",
    "NSStatusItem",
    "NSStepper",
    "NSStepperCell",
    "NSStepperTouchBarItem",
    "NSStoryboard",
    "NSStoryboardSegue",
    "NSStringDrawingContext",
    "NSSwitch",
    "NSTableCellView",
    "NSTableColumn",
    "NSTableHeaderCell",
    "NSTableHeaderView",
    "NSTableRowView",
    "NSTableView",
    "NSTableViewRowAction",
    "NSTabView",
    "NSTabViewController",
    "NSTabViewItem",
    "NSText",
    "NSTextAlternatives",
    "NSTextAttachment",
    "NSTextAttachmentCell",
    "NSTextBlock",
    "NSTextCheckingController",
    "NSTextField",
    "NSTextFieldCell",
    "NSTextFinder",
    "NSTextInputContext",
    "NSTextList",
    "NSTextStorage",
    "NSTextTab",
    "NSTextTable",
    "NSTextTableBlock",
    "NSTextView",
    "NSTitlebarAccessoryViewController",
    "NSTokenField",
    "NSTokenFieldCell",
    "NSToolbar",
    "NSToolbarItem",
    "NSToolbarItemGroup",
    "NSTouchBar",
    "NSTouchBarItem",
    "NSUserDefaultsController",
    "NSUserInterfaceCompressionOptions",
    "NSView",
    "NSViewAnimation",
    "NSViewController",
    "NSVisualEffectView",
    "NSWindow",
    "NSWindowTab",
    "NSWindowTabGroup"
  ],
  "AVFoundation": [
    "AVAsset",
    "AVAssetCache",
    "AVAssetExportSession",
    "AVAssetImageGenerator",
    "AVAssetReaderOutputMetadataAdaptor",
    "AVAssetResourceLoader",
    "AVAssetResourceLoadingContentInformationRequest",
    "AVAssetResourceLoadingDataRequest",
    "AVAssetResourceLoadingRequest",
    "AVAssetResourceLoadingRequestor",
    "AVAssetResourceRenewalRequest",
    "AVAssetTrack",
    "AVAssetTrackGroup",
    "AVAssetTrackSegment",
    "AVAssetWriterInputGroup",
    "AVAssetWriterInputMetadataAdaptor",
    "AVAssetWriterInputPassDescription",
    "AVAsynchronousCIImageFilteringRequest",
    "AVAudioBuffer",
    "AVAudioCompressedBuffer",
    "AVAudioConnectionPoint",
    "AVAudioConverter",
    "AVAudioEnvironmentDistanceAttenuationParameters",
    "AVAudioEnvironmentNode",
    "AVAudioEnvironmentReverbParameters",
    "AVAudioFile",
    "AVAudioInputNode",
    "AVAudioIONode",
    "AVAudioMix",
    "AVAudioMixerNode",
    "AVAudioMixingDestination",
    "AVAudioNode",
    "AVAudioOutputNode",
    "AVAudioPlayer",
    "AVAudioRecorder",
    "AVAudioSequencer",
    "AVAudioSinkNode",
    "AVAudioSourceNode",
    "AVAudioTime",
    "AVAudioUnit",
    "AVAudioUnitComponent",
    "AVAudioUnitComponentManager",
    "AVAudioUnitDelay",
    "AVAudioUnitDistortion",
    "AVAudioUnitEffect",
    "AVAudioUnitEQ",
    "AVAudioUnitEQFilterParameters",
    "AVAudioUnitGenerator",
    "AVAudioUnitReverb",
    "AVAudioUnitTimeEffect",
    "AVAudioUnitTimePitch",
    "AVAudioUnitVarispeed",
    "AVCameraCalibrationData",
    "AVCaptureAudioChannel",
    "AVCaptureAudioDataOutput",
    "AVCaptureAudioFileOutput",
    "AVCaptureAudioPreviewOutput",
    "AVCaptureConnection",
    "AVCaptureDevice",
    "AVCaptureFileOutput",
    "AVCaptureInput",
    "AVCaptureMovieFileOutput",
    "AVCaptureOutput",
    "AVCapturePhotoSettings",
    "AVCaptureResolvedPhotoSettings",
    "AVCaptureScreenInput",
    "AVCaptureSession",
    "AVComposition",
    "AVCompositionTrack",
    "AVCompositionTrackSegment",
    "AVContentKeyRequest",
    "AVContentKeyResponse",
    "AVContentKeySession",
    "AVDateRangeMetadataGroup",
    "AVFragmentedAsset",
    "AVFragmentedAssetTrack",
    "AVFragmentedMovieTrack",
    "AVFrameRateRange",
    "AVMediaDataStorage",
    "AVMediaSelection",
    "AVMediaSelectionGroup",
    "AVMediaSelectionOption",
    "AVMetadataBodyObject",
    "AVMetadataCatBodyObject",
    "AVMetadataDogBodyObject",
    "AVMetadataFaceObject",
    "AVMetadataGroup",
    "AVMetadataHumanBodyObject",
    "AVMetadataItemFilter",
    "AVMetadataObject",
    "AVMetadataSalientObject",
    "AVMIDIPlayer",
    "AVMovieTrack",
    "AVMusicTrack",
    "AVMutableAudioMix",
    "AVMutableComposition",
    "AVMutableDateRangeMetadataGroup",
    "AVMutableMediaSelection",
    "AVMutableVideoCompositionInstruction",
    "AVMutableVideoCompositionLayerInstruction",
    "AVPersistableContentKeyRequest",
    "AVPlayer",
    "AVPlayerItemAccessLogEvent",
    "AVPlayerItemErrorLogEvent",
    "AVPlayerItemLegibleOutput",
    "AVPlayerItemMediaDataCollector",
    "AVPlayerItemMetadataCollector",
    "AVPlayerItemMetadataOutput",
    "AVPlayerItemOutput",
    "AVPlayerItemTrack",
    "AVPlayerLooper",
    "AVPlayerMediaSelectionCriteria",
    "AVQueuePlayer",
    "AVRouteDetector",
    "AVSampleBufferAudioRenderer",
    "AVSampleBufferRequest",
    "AVSpeechSynthesisVoice",
    "AVSpeechSynthesizer",
    "AVSpeechUtterance",
    "AVTextStyleRule",
    "AVURLAsset",
    "AVVideoComposition",
    "AVVideoCompositionInstruction",
    "AVVideoCompositionLayerInstruction",
    "AVVideoCompositionRenderHint"
  ],
  "AVKit": [
    "AVCaptureView",
    "AVPictureInPictureController",
    "AVPlayerView"
  ],
  "Quartz": [
    "IKCameraDeviceView",
    "IKDeviceBrowserView",
    "IKFilterBrowserView",
    "IKFilterUIView",
    "IKImageBrowserCell",
    "IKImageEditPanel",
    "IKPictureTaker",
    "IKSaveOptions",
    "IKScannerDeviceView",
    "IKSlideshow",
    "QLPreviewPanel",
    "QLPreviewView",
    "QuartzFilter",
    "QuartzFilterManager",
    "QuartzFilterView"
  ]
}

const levels = ['error', 'warn', 'log', 'info', 'debug'];

for (const level of levels) {
  let original = console[level];
  console[level] = (...args) => {
    original(...args);
    globalThis.VueKitLog(level, JSON.stringify(args));
  };
}

function decapitalize(str) {
  return str.charAt(0).toLowerCase() + str.slice(1);
}

function getClassName(obj) {
  return Object.prototype.toString.call(obj).slice(8, -12);
}

function bridgedConstructor(elementClass, props) {
  if (!props || Object(props) !== props) return elementClass.create();
  let definedProps = Object.keys(props).filter(key => props[key] !== undefined);
  let candidateName;
  let candidateArgLabels = [];

  // All of the constructors from the bridge start with "createWith"
  let constructors = Object.getOwnPropertyNames(elementClass).filter(name => name.startsWith('createWith'));

  // createWithFooWithBarBazWithBlarg -> ["foo", "barBaz", "blarg"]
  let constructorsMap = constructors.map(n => n.split('With').slice(1).map(decapitalize));

  // Now we want to check to see which constructors could be called
  // with all the defined props we have
  for (let idx = 0; idx < constructorsMap.length; idx++) {
    let candidateArgumentLabels = constructorsMap[idx];
    let candidateIsUsable = true;

    for (let jdx = 0; jdx < candidateArgumentLabels.length; jdx++) {
      let argLabel = candidateArgumentLabels[jdx];
      let hasProp = definedProps.includes(argLabel);
      let firstParamIsClassName = jdx === 0 && argLabel.toLowerCase() === getClassName(elementClass).toLowerCase();
      if (!hasProp && !firstParamIsClassName) {
        candidateIsUsable = false;
        break;
      }
    }

    // Use the candidate with the most matching args
    if (candidateIsUsable && candidateArgumentLabels.length > candidateArgLabels.length) {
      candidateArgLabels = candidateArgumentLabels;
      candidateName = constructors[idx];
    }
  }

  if (candidateName) {
    let args = candidateArgLabels.map(c => props[c]);
    // TODO: for props that were defined but not part of constructor,
    // apply them here? (or will patchProp immediately set them anyways?)
    return elementClass[candidateName](...args);
  }

  if (definedProps.length) {
    console.log(`Using default constructor for ${elementClass}`);
    // console.warn(
    //   `Could not find constructor for ${elementClass
    //   } using args: [${definedProps.join(', ')
    //   }]\nCandidates were: ${constructors.join(', ')}`
    // );
  }

  return elementClass.create();
}

function createConstructors() {
  // Creating new instances of bridged JSExport classes works like this:
  // `Button.create()` or `Button.createWithTitle('foo')`
  //
  // We want to change this to:
  // `Button()` and `Button({ title: 'foo' })`
  //
  // To this end, this replaces the bridged class at e.g. globalThis.Button
  // with a function that internally calls the correct .createXYZ function
  //
  // This will create a new global function with the name of the class
  // (thus replacing it). All static and instance properties point to
  // the original bridged class.
  //
  for (let className of Object.values(classesToRegister).flat()) {
    try {
      let bridgedClass = globalThis[className];

      // Changes e.g. globalThis.Button from a bridged JSExport class
      // to a function that creates Button instances
      globalThis[className] = args => bridgedConstructor(bridgedClass, args);

      // Point all static properties to the bridged class
      for (let name of Object.getOwnPropertyNames(bridgedClass)) {
        globalThis[className][name] = bridgedClass[name];
      }

      // Use the bridged prototype for instance properties
      // globalThis[className].prototype = Object.create(bridgedClass.prototype);
      globalThis[className].prototype = bridgedClass.prototype;
    }
    catch (error) {
      console.log(`Could not register ${className}`, error);
    }
  }
}

let defaultContentRect = {
  x: 10,
  y: 10,
  width: 320,
  height: 240
};

let StyleMask = {
  Borderless: 0,
  Titled: 1,
  Closable: 2,
  Miniaturizable: 4,
  Resizable: 8,
  TexturedBackground: 256,
  UnifiedTitleAndToolbar: 4096,
  FullScreen: 16384,
  FullSizeContentView: 32768,
  UtilityWindow: 16,
  DocModalWindow: 64,
  NonactivatingPanel: 128,
  HUDWindow: 8192
}

let defaultStyleMask = StyleMask.Resizable | StyleMask.Titled | StyleMask.Closable | StyleMask.Miniaturizable;

createConstructors();

let win = NSWindow({
  contentRect: defaultContentRect,
  styleMask: defaultStyleMask,
  backing: 0,
  defer: true
})

let btn = NSButton({ title: "Foobar" });

win.makeKeyAndOrderFront(null);
win.center();
