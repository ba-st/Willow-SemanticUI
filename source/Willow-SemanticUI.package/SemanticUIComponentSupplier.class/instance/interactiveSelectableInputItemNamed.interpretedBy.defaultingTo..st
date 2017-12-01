Supplying - Non Portable
interactiveSelectableInputItemNamed: aName interpretedBy: anInputInterpreter defaultingTo: aDefaultModel

	| inputView |

	inputView := self interactiveInputItemNamed: aName interpretedBy: anInputInterpreter.
	^ SemanticSelectableInput
		selecting: inputView
		defaultingTo: aDefaultModel
		applying: [ :theInput | theInput addClass semantic: [ :style | style item ] ]