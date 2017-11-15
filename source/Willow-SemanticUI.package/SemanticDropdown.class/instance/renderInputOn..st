private - rendering
renderInputOn: aCanvas

	| component |

	component := aCanvas hiddenInput.
	self configureValueOf: component.
	self configureCallbackOf: component.
	interactionInterpreter applyTo: component on: aCanvas