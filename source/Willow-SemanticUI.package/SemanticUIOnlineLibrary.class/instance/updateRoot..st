Updating
updateRoot: aRoot

	aRoot stylesheet
		url:
			('https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/<1s>/semantic.min.css'
				expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-/Z28yXtfBv/6/alw+yZuODgTbKZm86IKbPE/5kjO/xY='.
	aRoot javascript
		url:
			('https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/<1s>/semantic.min.js'
				expandMacrosWith: self version);
		anonymousSubResourceIntegrity: 'sha256-Bhi6GMQ/72uYZcJXCJ2LToOIcN3+Cx47AZnq/Bw1f7A='