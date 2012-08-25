<cfsilent>
	<cfset homePage = application.contentManager.getActiveContentByFilename("", $.event("siteID"))/>
</cfsilent>
<cfoutput>
	<footer>
		<a href="#homePage.getValue('ksURL')#">GET INVOLVED.</a>
	</footer>
	
	<script src="#$.siteConfig('themeAssetPath')#/js/jquery.min.js" type="text/javascript"></script>
	<script src="#$.siteConfig('themeAssetPath')#/js/jquery.masonry.min.js" type="text/javascript"></script>
</cfoutput>