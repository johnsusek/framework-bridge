import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: NSAppleEventDescriptor
    - name: NSAppleEventDescriptor
    - argLabels: 
  */

@objc(NSAppleEventDescriptor) protocol NSAppleEventDescriptorExports: JSExport, NSObjectExports {
  // Static Methods

  /**
    - jsName: appleEvent
    - name: appleEventWithEventClass:eventID:targetDescriptor:returnID:transactionID:
    - argLabels: withEventClass, eventID, targetDescriptor, returnID, transactionID
    - constructorTokens: 
    - obsoleted: 3
    - renamed: appleEvent(withEventClass:eventID:targetDescriptor:returnID:transactionID:)
  */
  @objc (appleEventWithEventClass:eventID:targetDescriptor:returnID:transactionID:) static func appleEvent(withEventClass: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: Int16, transactionID: Int32) -> NSAppleEventDescriptor

  /**
    - jsName: currentProcess
    - name: currentProcessDescriptor
    - argLabels: 
    - constructorTokens: 
    - available: 10.11
    - obsoleted: 3
    - renamed: currentProcess()
    - Introduced: 10.11
  */
  @objc (currentProcessDescriptor) @available(OSX 10.11, *) static func currentProcess() -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithApplicationURL:
    - argLabels: applicationURL
    - constructorTokens: 
    - available: 10.11
    - unavailable: true
    - renamed: init(applicationURL:)
    - message: Not available in Swift
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(applicationURL: URL) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithBoolean:
    - argLabels: boolean
    - constructorTokens: 
    - unavailable: true
    - renamed: init(boolean:)
    - message: Not available in Swift
  */
  @objc static func create(boolean: Bool) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithBundleIdentifier:
    - argLabels: bundleIdentifier
    - constructorTokens: 
    - available: 10.11
    - unavailable: true
    - renamed: init(bundleIdentifier:)
    - message: Not available in Swift
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(bundleIdentifier: String) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithDate:
    - argLabels: date
    - constructorTokens: 
    - available: 10.11
    - unavailable: true
    - renamed: init(date:)
    - message: Not available in Swift
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(date: Date) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithDescriptorType:bytes:length:
    - argLabels: descriptorType, bytes, length
    - constructorTokens: 
    - unavailable: true
    - renamed: init(descriptorType:bytes:length:)
    - message: Not available in Swift
  */
  @objc static func create(descriptorType: DescType, bytes: UnsafeRawPointer?, length: Int) -> NSAppleEventDescriptor?

  /**
    - jsName: create
    - name: descriptorWithDescriptorType:data:
    - argLabels: descriptorType, data
    - constructorTokens: 
    - unavailable: true
    - renamed: init(descriptorType:data:)
    - message: Not available in Swift
  */
  @objc static func create(descriptorType: DescType, data: Data?) -> NSAppleEventDescriptor?

  /**
    - jsName: create
    - name: descriptorWithDouble:
    - argLabels: double
    - constructorTokens: 
    - available: 10.11
    - unavailable: true
    - renamed: init(double:)
    - message: Not available in Swift
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(double: Double) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithEnumCode:
    - argLabels: enumCode
    - constructorTokens: 
    - unavailable: true
    - renamed: init(enumCode:)
    - message: Not available in Swift
  */
  @objc static func create(enumCode: OSType) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithFileURL:
    - argLabels: fileURL
    - constructorTokens: 
    - available: 10.11
    - unavailable: true
    - renamed: init(fileURL:)
    - message: Not available in Swift
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) static func create(fileURL: URL) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithInt32:
    - argLabels: int32
    - constructorTokens: 
    - unavailable: true
    - renamed: init(int32:)
    - message: Not available in Swift
  */
  @objc static func create(int32: Int32) -> NSAppleEventDescriptor

  /**
    - jsName: create
    - name: descriptorWithTypeCode:
    - argLabels: typeCode
    - constructorTokens: 
    - unavailable: true
    - renamed: init(typeCode:)
    - message: Not available in Swift
  */
  @objc static func create(typeCode: OSType) -> NSAppleEventDescriptor

  /**
    - jsName: list
    - name: listDescriptor
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: list()
  */
  @objc (listDescriptor) static func list() -> NSAppleEventDescriptor

  /**
    - jsName: null
    - name: nullDescriptor
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: null()
  */
  @objc (nullDescriptor) static func null() -> NSAppleEventDescriptor

  /**
    - jsName: record
    - name: recordDescriptor
    - argLabels: 
    - constructorTokens: 
    - obsoleted: 3
    - renamed: record()
  */
  @objc (recordDescriptor) static func record() -> NSAppleEventDescriptor

  // Instance Methods

  /**
    - jsName: attributeDescriptor
    - name: attributeDescriptorForKeyword:
    - argLabels: forKeyword
    - constructorTokens: 
    - obsoleted: 3
    - renamed: attributeDescriptor(forKeyword:)
  */
  @objc (attributeDescriptorForKeyword:) func attributeDescriptor(forKeyword: AEKeyword) -> NSAppleEventDescriptor?

  /**
    - jsName: coerce
    - name: coerceToDescriptorType:
    - argLabels: toDescriptorType
    - constructorTokens: 
    - obsoleted: 3
    - renamed: coerce(toDescriptorType:)
  */
  @objc (coerceToDescriptorType:) func coerce(toDescriptorType: DescType) -> NSAppleEventDescriptor?

  /**
    - jsName: atIndex
    - name: descriptorAtIndex:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: atIndex(_:)
  */
  @objc (descriptorAtIndex:) func atIndex(_: Int) -> NSAppleEventDescriptor?

  /**
    - jsName: forKeyword
    - name: descriptorForKeyword:
    - argLabels: _
    - constructorTokens: 
    - obsoleted: 3
    - renamed: forKeyword(_:)
  */
  @objc (descriptorForKeyword:) func forKeyword(_: AEKeyword) -> NSAppleEventDescriptor?

  /**
    - jsName: createListDescriptor
    - name: initListDescriptor
    - argLabels: 
    - constructorTokens: listDescriptor
  */
  @objc static func createListDescriptor() -> Self

  /**
    - jsName: createRecordDescriptor
    - name: initRecordDescriptor
    - argLabels: 
    - constructorTokens: recordDescriptor
  */
  @objc static func createRecordDescriptor() -> Self

  /**
    - jsName: createWithAEDescNoCopy
    - name: initWithAEDescNoCopy:
    - argLabels: 
    - constructorTokens: aeDescNoCopy
  */
  @objc static func createWithAEDescNoCopy(_: UnsafePointer<AEDesc>) -> Self

  /**
    - jsName: createWithEventClass
    - name: initWithEventClass:eventID:targetDescriptor:returnID:transactionID:
    - argLabels: eventID, targetDescriptor, returnID, transactionID
    - constructorTokens: eventClass, eventID, targetDescriptor, returnID, transactionID
  */
  @objc static func createWithEventClass(_: AEEventClass, eventID: AEEventID, targetDescriptor: NSAppleEventDescriptor?, returnID: Int16, transactionID: Int32) -> Self

  /**
    - jsName: insert
    - name: insertDescriptor:atIndex:
    - argLabels: _, at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: insert(_:at:)
  */
  @objc (insertDescriptor:atIndex:) func insert(_: NSAppleEventDescriptor, at: Int)

  /**
    - jsName: keywordForDescriptor
    - name: keywordForDescriptorAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: keywordForDescriptor(at:)
  */
  @objc (keywordForDescriptorAtIndex:) func keywordForDescriptor(at: Int) -> AEKeyword

  /**
    - jsName: paramDescriptor
    - name: paramDescriptorForKeyword:
    - argLabels: forKeyword
    - constructorTokens: 
    - obsoleted: 3
    - renamed: paramDescriptor(forKeyword:)
  */
  @objc (paramDescriptorForKeyword:) func paramDescriptor(forKeyword: AEKeyword) -> NSAppleEventDescriptor?

  /**
    - jsName: remove
    - name: removeDescriptorAtIndex:
    - argLabels: at
    - constructorTokens: 
    - obsoleted: 3
    - renamed: remove(at:)
  */
  @objc (removeDescriptorAtIndex:) func remove(at: Int)

  /**
    - jsName: remove
    - name: removeDescriptorWithKeyword:
    - argLabels: withKeyword
    - constructorTokens: 
    - obsoleted: 3
    - renamed: remove(withKeyword:)
  */
  @objc (removeDescriptorWithKeyword:) func remove(withKeyword: AEKeyword)

  /**
    - jsName: removeParamDescriptor
    - name: removeParamDescriptorWithKeyword:
    - argLabels: withKeyword
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeParamDescriptor(withKeyword:)
  */
  @objc (removeParamDescriptorWithKeyword:) func removeParamDescriptor(withKeyword: AEKeyword)

  /**
    - jsName: sendEventWithOptions
    - name: sendEventWithOptions:timeout:error:
    - argLabels: timeout, error
    - constructorTokens: 
    - Introduced: 10.11
  */
  // throws - @objc @available(OSX 10.11, *) func sendEventWithOptions(timeout: NSAppleEventDescriptor.SendOptions, error: TimeInterval) -> NSAppleEventDescriptor?

  /**
    - jsName: setAttribute
    - name: setAttributeDescriptor:forKeyword:
    - argLabels: _, forKeyword
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setAttribute(_:forKeyword:)
  */
  @objc (setAttributeDescriptor:forKeyword:) func setAttribute(_: NSAppleEventDescriptor, forKeyword: AEKeyword)

  /**
    - jsName: setDescriptor
    - name: setDescriptor:forKeyword:
    - argLabels: forKeyword
    - constructorTokens: 
  */
  @objc func setDescriptor(_: NSAppleEventDescriptor, forKeyword: AEKeyword)

  /**
    - jsName: setParam
    - name: setParamDescriptor:forKeyword:
    - argLabels: _, forKeyword
    - constructorTokens: 
    - obsoleted: 3
    - renamed: setParam(_:forKeyword:)
  */
  @objc (setParamDescriptor:forKeyword:) func setParam(_: NSAppleEventDescriptor, forKeyword: AEKeyword)

  // Own Instance Properties

  /**
    - jsName: aeDesc
    - name: aeDesc
    - argLabels: 
  */
  @objc var aeDesc: UnsafePointer<AEDesc>? { @objc get }

  /**
    - jsName: booleanValue
    - name: booleanValue
    - argLabels: 
  */
  @objc var booleanValue: Bool { @objc get }

  /**
    - jsName: data
    - name: data
    - argLabels: 
  */
  @objc var data: Data { @objc get }

  /**
    - jsName: dateValue
    - name: dateValue
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var dateValue: Date? { @objc get }

  /**
    - jsName: descriptorType
    - name: descriptorType
    - argLabels: 
  */
  @objc var descriptorType: DescType { @objc get }

  /**
    - jsName: doubleValue
    - name: doubleValue
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var doubleValue: Double { @objc get }

  /**
    - jsName: enumCodeValue
    - name: enumCodeValue
    - argLabels: 
  */
  @objc var enumCodeValue: OSType { @objc get }

  /**
    - jsName: eventClass
    - name: eventClass
    - argLabels: 
  */
  @objc var eventClass: AEEventClass { @objc get }

  /**
    - jsName: eventID
    - name: eventID
    - argLabels: 
  */
  @objc var eventID: AEEventID { @objc get }

  /**
    - jsName: fileURLValue
    - name: fileURLValue
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var fileURLValue: URL? { @objc get }

  /**
    - jsName: int32Value
    - name: int32Value
    - argLabels: 
  */
  @objc var int32Value: Int32 { @objc get }

  /**
    - jsName: isRecordDescriptor
    - name: isRecordDescriptor
    - argLabels: 
    - available: 10.11
    - Introduced: 10.11
  */
  @objc @available(OSX 10.11, *) var isRecordDescriptor: Bool { @objc get }

  /**
    - jsName: numberOfItems
    - name: numberOfItems
    - argLabels: 
  */
  @objc var numberOfItems: Int { @objc get }

  /**
    - jsName: returnID
    - name: returnID
    - argLabels: 
  */
  @objc var returnID: Int16 { @objc get }

  /**
    - jsName: stringValue
    - name: stringValue
    - argLabels: 
  */
  @objc var stringValue: String? { @objc get }

  /**
    - jsName: transactionID
    - name: transactionID
    - argLabels: 
  */
  @objc var transactionID: Int32 { @objc get }

  /**
    - jsName: typeCodeValue
    - name: typeCodeValue
    - argLabels: 
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
