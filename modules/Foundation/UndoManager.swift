import AppKit
import JavaScriptCore
import Quartz
import AVKit
import CoreImage
import CoreGraphics
import Foundation

// Interface 

  /**
    - jsName: UndoManager
    - name: NSUndoManager
    - argLabels: 
    - Introduced: 10.0
  */

@objc(UndoManager) protocol UndoManagerExports: JSExport, NSObjectExports {
  // Static Methods

  // Instance Methods

  /**
    - jsName: beginUndoGrouping
    - name: beginUndoGrouping
    - argLabels: 
    - constructorTokens: 
  */
  @objc func beginUndoGrouping()

  /**
    - jsName: disableUndoRegistration
    - name: disableUndoRegistration
    - argLabels: 
    - constructorTokens: 
  */
  @objc func disableUndoRegistration()

  /**
    - jsName: enableUndoRegistration
    - name: enableUndoRegistration
    - argLabels: 
    - constructorTokens: 
  */
  @objc func enableUndoRegistration()

  /**
    - jsName: endUndoGrouping
    - name: endUndoGrouping
    - argLabels: 
    - constructorTokens: 
  */
  @objc func endUndoGrouping()

  /**
    - jsName: prepare
    - name: prepareWithInvocationTarget:
    - argLabels: withInvocationTarget
    - constructorTokens: 
    - obsoleted: 3
    - renamed: prepare(withInvocationTarget:)
  */
  @objc (prepareWithInvocationTarget:) func prepare(withInvocationTarget: Any) -> Any

  /**
    - jsName: redo
    - name: redo
    - argLabels: 
    - constructorTokens: 
  */
  @objc func redo()

  /**
    - jsName: redoMenuTitle
    - name: redoMenuTitleForUndoActionName:
    - argLabels: forUndoActionName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: redoMenuTitle(forUndoActionName:)
  */
  @objc (redoMenuTitleForUndoActionName:) func redoMenuTitle(forUndoActionName: String) -> String

  /**
    - jsName: registerUndo
    - name: registerUndoWithTarget:handler:
    - argLabels: withTarget, handler
    - constructorTokens: 
    - unavailable: true
    - renamed: registerUndo(withTarget:handler:)
    - Introduced: 10.11
  */
  // jsvalue - @objc (registerUndoWithTarget:handler:) @available(OSX 10.11, *) func registerUndo(withTarget: Any, handler: JSValue)

  /**
    - jsName: registerUndo
    - name: registerUndoWithTarget:selector:object:
    - argLabels: withTarget, selector, object
    - constructorTokens: 
    - obsoleted: 3
    - renamed: registerUndo(withTarget:selector:object:)
  */
  @objc (registerUndoWithTarget:selector:object:) func registerUndo(withTarget: Any, selector: Selector, object: Any?)

  /**
    - jsName: removeAllActions
    - name: removeAllActions
    - argLabels: 
    - constructorTokens: 
  */
  @objc func removeAllActions()

  /**
    - jsName: removeAllActions
    - name: removeAllActionsWithTarget:
    - argLabels: withTarget
    - constructorTokens: 
    - obsoleted: 3
    - renamed: removeAllActions(withTarget:)
  */
  @objc (removeAllActionsWithTarget:) func removeAllActions(withTarget: Any)

  /**
    - jsName: setActionIsDiscardable
    - name: setActionIsDiscardable:
    - argLabels: 
    - constructorTokens: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) func setActionIsDiscardable(_: Bool)

  /**
    - jsName: setActionName
    - name: setActionName:
    - argLabels: 
    - constructorTokens: 
  */
  @objc func setActionName(_: String)

  /**
    - jsName: undo
    - name: undo
    - argLabels: 
    - constructorTokens: 
  */
  @objc func undo()

  /**
    - jsName: undoMenuTitle
    - name: undoMenuTitleForUndoActionName:
    - argLabels: forUndoActionName
    - constructorTokens: 
    - obsoleted: 3
    - renamed: undoMenuTitle(forUndoActionName:)
  */
  @objc (undoMenuTitleForUndoActionName:) func undoMenuTitle(forUndoActionName: String) -> String

  /**
    - jsName: undoNestedGroup
    - name: undoNestedGroup
    - argLabels: 
    - constructorTokens: 
  */
  @objc func undoNestedGroup()

  // Own Instance Properties

  /**
    - jsName: canRedo
    - name: canRedo
    - argLabels: 
  */
  @objc var canRedo: Bool { @objc get }

  /**
    - jsName: canUndo
    - name: canUndo
    - argLabels: 
  */
  @objc var canUndo: Bool { @objc get }

  /**
    - jsName: groupingLevel
    - name: groupingLevel
    - argLabels: 
  */
  @objc var groupingLevel: Int { @objc get }

  /**
    - jsName: groupsByEvent
    - name: groupsByEvent
    - argLabels: 
  */
  @objc var groupsByEvent: Bool { @objc get @objc (setGroupsByEvent:) set }

  /**
    - jsName: levelsOfUndo
    - name: levelsOfUndo
    - argLabels: 
  */
  @objc var levelsOfUndo: Int { @objc get @objc (setLevelsOfUndo:) set }

  /**
    - jsName: redoActionIsDiscardable
    - name: redoActionIsDiscardable
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var redoActionIsDiscardable: Bool { @objc get }

  /**
    - jsName: redoActionName
    - name: redoActionName
    - argLabels: 
  */
  @objc var redoActionName: String { @objc get }

  /**
    - jsName: redoMenuItemTitle
    - name: redoMenuItemTitle
    - argLabels: 
  */
  @objc var redoMenuItemTitle: String { @objc get }

  /**
    - jsName: isRedoing
    - name: redoing
    - argLabels: 
    - obsoleted: 3
    - renamed: isRedoing
  */
  @objc var isRedoing: Bool { @objc get }

  /**
    - jsName: runLoopModes
    - name: runLoopModes
    - argLabels: 
  */
  @objc var runLoopModes: [RunLoop.Mode] { @objc get @objc (setRunLoopModes:) set }

  /**
    - jsName: undoActionIsDiscardable
    - name: undoActionIsDiscardable
    - argLabels: 
    - available: 10.7
    - Introduced: 10.7
  */
  @objc @available(OSX 10.7, *) var undoActionIsDiscardable: Bool { @objc get }

  /**
    - jsName: undoActionName
    - name: undoActionName
    - argLabels: 
  */
  @objc var undoActionName: String { @objc get }

  /**
    - jsName: undoMenuItemTitle
    - name: undoMenuItemTitle
    - argLabels: 
  */
  @objc var undoMenuItemTitle: String { @objc get }

  /**
    - jsName: isUndoRegistrationEnabled
    - name: undoRegistrationEnabled
    - argLabels: 
    - obsoleted: 3
    - renamed: isUndoRegistrationEnabled
  */
  @objc var isUndoRegistrationEnabled: Bool { @objc get }

  /**
    - jsName: isUndoing
    - name: undoing
    - argLabels: 
    - obsoleted: 3
    - renamed: isUndoing
  */
  @objc var isUndoing: Bool { @objc get }
}

extension UndoManager: UndoManagerExports {
}
