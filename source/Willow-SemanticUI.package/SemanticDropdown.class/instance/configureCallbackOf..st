private - configuring
configureCallbackOf: anInput

	anInput callback: [ :indexString | self chooseOptionAt: indexString asNumber ]