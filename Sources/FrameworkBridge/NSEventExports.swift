import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import AppKit

@objc protocol NSEventExports: JSExport {
	@objc var timestamp: TimeInterval { @objc get }
	@objc var type: NSEvent.EventType { @objc get }
	@objc var window: NSWindow? { @objc get }
}

extension NSEvent: NSEventExports {
}
