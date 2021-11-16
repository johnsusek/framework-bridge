import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreMedia
import CoreSpotlight
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - Selector: NSUndoManager
    - Introduced: 10.0
  */

@objc(UndoManager) protocol UndoManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - Selector: beginUndoGrouping
  */
  @objc func beginUndoGrouping()

  /**
    - Selector: disableUndoRegistration
  */
  @objc func disableUndoRegistration()

  /**
    - Selector: enableUndoRegistration
  */
  @objc func enableUndoRegistration()

  /**
    - Selector: endUndoGrouping
  */
  @objc func endUndoGrouping()

  /**
    - Selector: prepareWithInvocationTarget:
  */
  @objc (prepareWithInvocationTarget:) func prepare(withInvocationTarget: Any) -> Any

  /**
    - Selector: redo
  */
  @objc func redo()

  /**
    - Selector: redoMenuTitleForUndoActionName:
  */
  @objc (redoMenuTitleForUndoActionName:) func redoMenuTitle(forUndoActionName: String) -> String

  /**
    - Selector: registerUndoWithTarget:handler:
    - Introduced: 10.11
  */
  // jsvalue @objc @available(OSX 10.11, *) func registerUndoWithTargetWithHandler(withTarget: Any, handler: JSValue)

  /**
    - Selector: registerUndoWithTarget:selector:object:
  */
  @objc (registerUndoWithTarget:selector:object:) func registerUndo(withTarget: Any, selector: Selector, object: Any?)

  /**
    - Selector: removeAllActions
  */
  @objc func removeAllActions()

  /**
    - Selector: removeAllActionsWithTarget:
  */
  @objc (removeAllActionsWithTarget:) func removeAllActions(withTarget: Any)

  /**
    - Selector: setActionIsDiscardable:
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func setActionIsDiscardable(_: Bool)

  /**
    - Selector: setActionName:
  */
  @objc func setActionName(_: String)

  /**
    - Selector: undo
  */
  @objc func undo()

  /**
    - Selector: undoMenuTitleForUndoActionName:
  */
  @objc (undoMenuTitleForUndoActionName:) func undoMenuTitle(forUndoActionName: String) -> String

  /**
    - Selector: undoNestedGroup
  */
  @objc func undoNestedGroup()

  // Own Instance Properties

  /**
    - Selector: canRedo
  */
  @objc var canRedo: Bool { @objc get }

  /**
    - Selector: canUndo
  */
  @objc var canUndo: Bool { @objc get }

  /**
    - Selector: groupingLevel
  */
  @objc var groupingLevel: Int { @objc get }

  /**
    - Selector: groupsByEvent
  */
  @objc var groupsByEvent: Bool { @objc get @objc (setGroupsByEvent:) set }

  /**
    - Selector: levelsOfUndo
  */
  @objc var levelsOfUndo: Int { @objc get @objc (setLevelsOfUndo:) set }

  /**
    - Selector: redoActionIsDiscardable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var redoActionIsDiscardable: Bool { @objc get }

  /**
    - Selector: redoActionName
  */
  @objc var redoActionName: String { @objc get }

  /**
    - Selector: redoMenuItemTitle
  */
  @objc var redoMenuItemTitle: String { @objc get }

  /**
    - Selector: redoing
  */
  @objc var isRedoing: Bool { @objc get }

  /**
    - Selector: runLoopModes
  */
  @objc var runLoopModes: [RunLoop.Mode] { @objc get @objc (setRunLoopModes:) set }

  /**
    - Selector: undoActionIsDiscardable
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var undoActionIsDiscardable: Bool { @objc get }

  /**
    - Selector: undoActionName
  */
  @objc var undoActionName: String { @objc get }

  /**
    - Selector: undoMenuItemTitle
  */
  @objc var undoMenuItemTitle: String { @objc get }

  /**
    - Selector: undoRegistrationEnabled
  */
  @objc var isUndoRegistrationEnabled: Bool { @objc get }

  /**
    - Selector: undoing
  */
  @objc var isUndoing: Bool { @objc get }
}

extension UndoManager: UndoManagerExports {
}
