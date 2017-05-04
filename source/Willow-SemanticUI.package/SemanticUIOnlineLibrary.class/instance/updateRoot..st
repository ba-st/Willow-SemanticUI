Updating
updateRoot: aRoot

	aRoot stylesheet
		url:
			('https://cdn.jsdelivr.net/semantic-ui/<1s>/semantic.min.css'
				expandMacrosWith: self version).
	aRoot javascript
		url:
			('https://cdn.jsdelivr.net/semantic-ui/<1s>/semantic.min.js' expandMacrosWith: self version)