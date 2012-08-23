<cfoutput>
<cfinclude template="inc/html_head.cfm" />
<body id="#$.getTopID()#" class="oneCol depth#arrayLen($.event('crumbdata'))#">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm"/>
	<div id="intro">
		<cfinclude template="inc/ksBar.cfm"/>
	</div><!--end intro-->

	<div id="content" class="clearfix">
		<article>
			#$.dspBody(body=$.content('body'), pageTitle='', crumbList=0, showMetaImage=1)#
		</article>
	</div>
	<cfinclude template="inc/footer.cfm" />
</div>
</body>
</html>
</cfoutput>