import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSAppleEventDescriptor
  */

@objc(NSAppleEventDescriptor) protocol NSAppleEventDescriptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - Selector: appleEventWithEventClass:eventID:targetDescriptor:returnID:transactionID:
  */
  @objc (appleEventWithEventClass:eventID:targetDescriptor:returnID:transactionID:) static func appleEvent(withEventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: Int16, transactionID: Int32) -> NSAppleEventDescriptor

  /**
    - Selector: currentProcessDescriptor
    - Introduced: 10.11
  */
  @objc (currentProcessDescriptor) @available(OSX 10.11, *) static func currentProcess() -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithApplicationURL:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(applicationURL: URL) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithBoolean:
  */
  @objc static func create(boolean: Bool) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithBundleIdentifier:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(bundleIdentifier: String) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithDate:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(date: Date) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithDescriptorType:bytes:length:
  */
  @objc static func create(descriptorType: DescType, bytes: UnsafeRawPointer?, length: Int) -> NSAppleEventDescriptor?

  /**
    - Selector: descriptorWithDescriptorType:data:
  */
  @objc static func create(descriptorType: DescType, data: Data?) -> NSAppleEventDescriptor?

  /**
    - Selector: descriptorWithDouble:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(double: Double) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithEnumCode:
  */
  @objc static func create(enumCode: OSType) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithFileURL:
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(fileURL: URL) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithInt32:
  */
  @objc static func create(int32: Int32) -> NSAppleEventDescriptor

  /**
    - Selector: descriptorWithTypeCode:
  */
  @objc static func create(typeCode: OSType) -> NSAppleEventDescriptor

  /**
    - Selector: listDescriptor
  */
  @objc (listDescriptor) static func list() -> NSAppleEventDescriptor

  /**
    - Selector: nullDescriptor
  */
  @objc (nullDescriptor) static func null() -> NSAppleEventDescriptor

  /**
    - Selector: recordDescriptor
  */
  @objc (recordDescriptor) static func record() -> NSAppleEventDescriptor

  // Instance Methods

  /**
    - Selector: attributeDescriptorForKeyword:
  */
  @objc (attributeDescriptorForKeyword:) func attributeDescriptor(forKeyword: AEKeyword) -> NSAppleEventDescriptor?

  /**
    - Selector: coerceToDescriptorType:
  */
  @objc (coerceToDescriptorType:) func coerce(toDescriptorType: DescType) -> NSAppleEventDescriptor?

  /**
    - Selector: descriptorAtIndex:
  */
  @objc (descriptorAtIndex:) func atIndex(_: Int) -> NSAppleEventDescriptor?

  /**
    - Selector: descriptorForKeyword:
  */
  @objc (descriptorForKeyword:) func forKeyword(_: AEKeyword) -> NSAppleEventDescriptor?

  /**
    - Selector: initListDescriptor
  */
  @objc static func createListDescriptor() -> Self

  /**
    - Selector: initRecordDescriptor
  */
  @objc static func createRecordDescriptor() -> Self

  /**
    - Selector: initWithAEDescNoCopy:
  */
  @objc static func createWithAEDescNoCopy(_: UnsafePointer<AEDesc>) -> Self

  /**
    - Selector: initWithEventClass:eventID:targetDescriptor:returnID:transactionID:
  */
  @objc static func createWithEventClass(_: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: Int16, transactionID: Int32) -> Self

  /**
    - Selector: insertDescriptor:atIndex:
  */
  @objc (insertDescriptor:atIndex:) func insert(_: NSAppleEventDescriptor, at: Int)

  /**
    - Selector: keywordForDescriptorAtIndex:
  */
  @objc (keywordForDescriptorAtIndex:) func keywordForDescriptor(at: Int) -> AEKeyword

  /**
    - Selector: paramDescriptorForKeyword:
  */
  @objc (paramDescriptorForKeyword:) func paramDescriptor(forKeyword: AEKeyword) -> NSAppleEventDescriptor?

  /**
    - Selector: removeDescriptorAtIndex:
  */
  @objc (removeDescriptorAtIndex:) func remove(at: Int)

  /**
    - Selector: removeDescriptorWithKeyword:
  */
  @objc (removeDescriptorWithKeyword:) func remove(withKeyword: AEKeyword)

  /**
    - Selector: removeParamDescriptorWithKeyword:
  */
  @objc (removeParamDescriptorWithKeyword:) func removeParamDescriptor(withKeyword: AEKeyword)

  /**
    - Selector: sendEventWithOptions:timeout:error:
    - Introduced: 10.11
  */
  // throws - @objc @available(OSX 10.11, *) func sendEventWithOptions(timeout: NSAppleEventDescriptor.SendOptions, error: TimeInterval) -> NSAppleEventDescriptor?

  /**
    - Selector: setAttributeDescriptor:forKeyword:
  */
  @objc (setAttributeDescriptor:forKeyword:) func setAttribute(_: NSAppleEventDescriptor, forKeyword: AEKeyword)

  /**
    - Selector: setDescriptor:forKeyword:
  */
  @objc func setDescriptor(_: NSAppleEventDescriptor, forKeyword: AEKeyword)

  /**
    - Selector: setParamDescriptor:forKeyword:
  */
  @objc (setParamDescriptor:forKeyword:) func setParam(_: NSAppleEventDescriptor, forKeyword: AEKeyword)

  // Own Instance Properties

  /**
    - Selector: aeDesc
  */
  @objc var aeDesc: UnsafePointer<AEDesc>? { @objc get }

  /**
    - Selector: booleanValue
  */
  @objc var booleanValue: Bool { @objc get }

  /**
    - Selector: data
  */
  @objc var data: Data { @objc get }

  /**
    - Selector: dateValue
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var dateValue: Date? { @objc get }

  /**
    - Selector: descriptorType
  */
  @objc var descriptorType: DescType { @objc get }

  /**
    - Selector: doubleValue
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var doubleValue: Double { @objc get }

  /**
    - Selector: enumCodeValue
  */
  @objc var enumCodeValue: OSType { @objc get }

  /**
    - Selector: eventClass
  */
  @objc var eventClass: AEEventClass { @objc get }

  /**
    - Selector: eventID
  */
  @objc var eventID: AEEventID { @objc get }

  /**
    - Selector: fileURLValue
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var fileURLValue: URL? { @objc get }

  /**
    - Selector: int32Value
  */
  @objc var int32Value: Int32 { @objc get }

  /**
    - Selector: isRecordDescriptor
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isRecordDescriptor: Bool { @objc get }

  /**
    - Selector: numberOfItems
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - Selector: returnID
  */
  @objc var returnID: Int16 { @objc get }

  /**
    - Selector: stringValue
  */
  @objc var stringValue: String? { @objc get }

  /**
    - Selector: transactionID
  */
  @objc var transactionID: Int32 { @objc get }

  /**
    - Selector: typeCodeValue
  */
  @objc var typeCodeValue: OSType { @objc get }
}

extension NSAppleEventDescriptor: NSAppleEventDescriptorExports {
  @objc public static func create(applicationURL: URL) -> NSAppleEventDescriptor {
    return self.init(applicationURL: applicationURL)
  }

  @objc public static func create(boolean: Bool) -> NSAppleEventDescriptor {
    return self.init(boolean: boolean)
  }

  @objc public static func create(bundleIdentifier: String) -> NSAppleEventDescriptor {
    return self.init(bundleIdentifier: bundleIdentifier)
  }

  @objc public static func create(date: Date) -> NSAppleEventDescriptor {
    return self.init(date: date)
  }

  @objc public static func create(descriptorType: DescType, bytes: UnsafeRawPointer?, length: Int) -> NSAppleEventDescriptor? {
    return self.init(descriptorType: descriptorType, bytes: bytes, length: length)
  }

  @objc public static func create(descriptorType: DescType, data: Data?) -> NSAppleEventDescriptor? {
    return self.init(descriptorType: descriptorType, data: data)
  }

  @objc public static func create(double: Double) -> NSAppleEventDescriptor {
    return self.init(double: double)
  }

  @objc public static func create(enumCode: OSType) -> NSAppleEventDescriptor {
    return self.init(enumCode: enumCode)
  }

  @objc public static func create(fileURL: URL) -> NSAppleEventDescriptor {
    return self.init(fileURL: fileURL)
  }

  @objc public static func create(int32: Int32) -> NSAppleEventDescriptor {
    return self.init(int32: int32)
  }

  @objc public static func create(typeCode: OSType) -> NSAppleEventDescriptor {
    return self.init(typeCode: typeCode)
  }

  @objc public static func createListDescriptor() -> Self {
    return self.init()
  }

  @objc public static func createRecordDescriptor() -> Self {
    return self.init()
  }

  @objc public static func createWithAEDescNoCopy(_ aeDescNoCopy: UnsafePointer<AEDesc>) -> Self {
    return self.init(aeDescNoCopy: aeDescNoCopy)
  }

  @objc public static func createWithEventClass(_ eventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: Int16, transactionID: Int32) -> Self {
    return self.init(eventClass: eventClass, eventID: eventID, targetDescriptor: targetDescriptor, returnID: returnID, transactionID: transactionID)
  }

}
