<cfsilent>
	<cfset homePage = application.contentManager.getActiveContentByFilename("", $.event("siteID"))/>
	<cfset ksBackerCount = application.contentManager.getActiveContentByFilename("backer-collection", $.event("siteID")).getKidsIterator().getRecordCount()/>
</cfsilent>
<cfoutput>
	<div id="info">
		<div id="infoIn">
			<div id="days">#homePage.getValue("ksDaysLeft")# days<span><span class="lightBlue">/</span> left</span></div>
			<div id="money"><p id="count">#homePage.getValue("ksAmountRaised")#</p><span><span><p class="lightBlue">/</p> #homePage.getValue("ksGoal")# GOAL</span>RAISED!</span></div>
			<div id="backers">#ksBackerCount#<span><span class="lightBlue">/</span> backers</span></div>
		</div>
	</div><!--end info-->
</cfoutput>