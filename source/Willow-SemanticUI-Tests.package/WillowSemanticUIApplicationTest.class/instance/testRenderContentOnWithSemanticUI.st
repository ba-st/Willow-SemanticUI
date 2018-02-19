tests
testRenderContentOnWithSemanticUI

	| html application |

	application := WillowTestingApplication using: self componentSupplier.
	html := self fullDocumentRendering: application.

	self
		assert: html
		equals:
			'<!DOCTYPE html><html lang="en"><head><title>The official testing app</title><script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script><script type="text/javascript" src="/files/willow-6.0.0/js/willow.js"></script><meta name="viewport" content="width=device-width, initial-scale=1.0"/><link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.css" integrity="sha256-/Z28yXtfBv/6/alw+yZuODgTbKZm86IKbPE/5kjO/xY=" crossorigin="anonymous"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.13/semantic.min.js" integrity="sha256-Bhi6GMQ/72uYZcJXCJ2LToOIcN3+Cx47AZnq/Bw1f7A=" crossorigin="anonymous"></script></head><body onload="onLoad()"><span><div class="item ui selection dropdown item" id="id1"><input name="2" type="hidden"/><i class="dropdown icon"></i><div class="default text"></div><div class="menu"></div></div></span><div id="willow-dialog-section" class="willow-dialog-container"></div><div id="willow-notification-section"></div><script type="text/javascript">function onLoad(){$("#id1").dropdown();};</script></body></html>'
