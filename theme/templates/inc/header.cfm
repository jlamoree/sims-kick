<cfoutput>
	<div id="header">
		<div id="nav">
			<cf_CacheOMatic key="dspPrimaryNav#request.contentBean.getcontentID()#">
				#$.dspPrimaryNav(
					viewDepth="1",
					displayHome="Never",
					closePortals="true",
					showCurrentChildrenOnly="false"
				)#
			</cf_CacheOMatic>
			<div id="logo">
				<a href=""><img src="#$.siteConfig('themeAssetPath')#/img/logo.png" alt=""/></a>
			</div><!--end logo-->
		</div><!--end nav-->
	</div><!--end header-->
</cfoutput>