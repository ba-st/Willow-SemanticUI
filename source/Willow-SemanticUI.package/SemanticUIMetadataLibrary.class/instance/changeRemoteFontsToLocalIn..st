private
changeRemoteFontsToLocalIn: aContent

	<ignoreForCoverage>

	^ aContent
		copyReplaceAll: '@import url(''https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&subset=latin'');'
		with:
			'/*@import url(''https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&subset=latin'');*/
@font-face {
  font-family: "Lato";
  src: url("LatoLatin-Medium.eot"); /* IE9 Compat Modes */
  src: url("LatoLatin-Medium.eot?#iefix") format("embedded-opentype"), /* IE6-IE8 */
       url("LatoLatin-Medium.woff2") format("woff2"), /* Super Modern Browsers */
       url("LatoLatin-Medium.woff") format("woff"), /* Pretty Modern Browsers */
       url("LatoLatin-Medium.ttf")  format("truetype"), /* Safari, Android, iOS */
       url("LatoLatin-Medium.svg#svgFontName") format("svg"); /* Legacy iOS */
}'