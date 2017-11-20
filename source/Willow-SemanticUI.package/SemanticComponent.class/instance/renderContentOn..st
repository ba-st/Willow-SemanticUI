rendering
renderContentOn: aCanvas

	| container |

	container := aCanvas div.
	commandToContainer applyTo: container on: aCanvas.
	container with: wrappedComponent