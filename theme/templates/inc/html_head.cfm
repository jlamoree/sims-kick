<cfoutput><cfcontent reset="true"/><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="description" content="#HTMLEditFormat($.getMetaDesc())#" />
	<meta name="keywords" content="#HTMLEditFormat($.getMetaKeywords())#" />
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
	<cfif request.contentBean.getCredits() neq ""><meta name="author" content="#HTMLEditFormat($.content('credits'))#" /></cfif>
	<meta name="generator" content="Mura CMS #$.globalConfig('version')#" />
	<title>#HTMLEditFormat($.content('HTMLTitle'))# - #HTMLEditFormat($.siteConfig('site'))#</title>

	<link rel="icon" href="#$.siteConfig('assetPath')#/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="#$.siteConfig('assetPath')#/images/favicon.ico" type="image/x-icon" />
	<meta content="#$.siteConfig('assetPath')#/images/favicon.ico" itemprop="image"/>

	<!--- Shared Styles --->	
	<link rel="stylesheet" href="#$.siteConfig('assetPath')#/css/mura.min.css" type="text/css" media="all" />

	<!--- Theme-Specific Styles --->
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/reset.css" type="text/css" media="all" />
	<link rel="stylesheet" href="#$.siteConfig('themeAssetPath')#/css/main.css" type="text/css" media="all" />

	<script src="#$.siteConfig('themeAssetPath')#/js/cufon.js" type="text/javascript"></script>
	<script src="#$.siteConfig('themeAssetPath')#/js/ultra_300-ultra_400.font.js" type="text/javascript"></script>
	<script type="text/javascript">
		Cufon.replace('##nav ul li a, ##days, ##count, ##money span, ##backers, ##producerIn h3, ##pledged h1', { fontFamily: 'ultra', fontWeight:'300' });
	</script>
	<cfset rs = $.getBean('feedManager').getFeeds($.event('siteID'),'Local',true,true) />
	<cfloop query="rs">
	<link rel="alternate" type="application/rss+xml" title="#HTMLEditFormat($.siteConfig('site'))# - #HTMLEditFormat(rs.name)#" href="#XMLFormat('http://#listFirst(cgi.http_host,":")##$.globalConfig('context')#/tasks/feed/?feedID=#rs.feedID#')#" />
	</cfloop>
</head>
</cfoutput>