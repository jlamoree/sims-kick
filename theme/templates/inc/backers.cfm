<cfsilent>
	<cfset backerData = arrayNew(1)/>
	<cfset backerIterator = application.contentManager.getActiveContentByFilename("backer-collection", $.event("siteID")).getKidsIterator()/>
	<cfloop condition="backerIterator.hasNext()">
		<cfset backerBean = backerIterator.next()/>
		<cfset backer = structNew()/>
		<cfset backer.number = backerIterator.currentIndex()/>
		<cfset backer.name = ucase(backerBean.getTitle())/>
		<cfset backer.title = ucase("Executive Producer")/>
		<cfset backer.facebookURL = backerBean.getURL()/>
		<cfset backer.image = backerBean.getImageURL(size="large")/>
		<cfset backer.size = backerBean.getBackerSize()/>
		<cfset arrayAppend(backerData, backer)/>
	</cfloop>
</cfsilent>
<cfoutput>
<div id="masonry">
	<cfloop array="#backerData#" index="backer">
		<div class="box #backer.size#">
			<img src="#backer.image#" alt=""/>
			<div class="info">
				<h3>#htmlEditFormat(backer.name)#</h3>
				<p>#htmlEditFormat(backer.title)#</p>
			</div><!--end info-->
			<div class="overlay"></div>
			<div class="backer"></div>
			<div class="number">###backer.number#</div>
			<cfif len(backer.facebookURL)>
				<div class="facebook"><a href=""><img src="#$.siteConfig('themeAssetPath')#/img/facebook.png" alt=""/></a></div>
			</cfif>
		</div><!--end sSquare-->
	</cfloop>
</div>
</cfoutput>