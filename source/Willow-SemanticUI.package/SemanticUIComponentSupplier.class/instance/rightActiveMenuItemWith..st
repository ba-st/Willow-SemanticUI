Supplying - Non Portable
rightActiveMenuItemWith: aContentBlock

	^ [ :canvas | 
	canvas div
		class: SemanticStyle for right item active;
		with: aContentBlock ]