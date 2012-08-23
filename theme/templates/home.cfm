<cfoutput>
<cfinclude template="inc/html_head.cfm"/>
<body id="#$.getTopID()#" class="home">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm"/>

	<div id="intro">
		<div id="info">
			<div id="infoIn">
				<div id="days">28 days<span><span class="lightBlue">/</span> left</span></div>
				<div id="money"><p id="count">$23,454</p><span><span><p class="lightBlue">/</p>$50,000 GOAL</span>RAISED!</span></div>
				<div id="backers">351 <span><span class="lightBlue">/</span> backers</span></div>
			</div>
		</div><!--end info-->

		<div id="video">
			<div id="videoIn">
				<div id="videoContainer">
					<img src="#$.siteConfig('themeAssetPath')#/img/play.png" alt=""/>
				</div><!--end videoContainer-->
					
				<div id="videoSide">
					<h3>Help make this project a reality.</h3>
					<p>Pledge your support and recieve an Executive Producer Credit in the movie and IMDB.</p>
					<a href="" id="backThisProject"><img src="#$.siteConfig('themeAssetPath')#/img/backThisProject.png" alt=""/></a>
					<a href="" id="visit">Visit our Kickstarter page.</a>
				</div><!--end videoSider-->
			</div>
		</div><!--end video-->
		<div id="producer">
			<div id="producerIn">
				<h3>NEWEST EXECUTIVE PRODUCER: <span class="white">JOHN MICHEAL SMITH!</span> <img src="#$.siteConfig('themeAssetPath')#/img/smallThumb.png" alt=""/></h3>
				<img src="#$.siteConfig('themeAssetPath')#/img/ImBacker.png" alt="" id="ImBacker"/>
			</div>
		</div><!--end producer-->
	</div><!--end intro-->

	<div id="pledged">
		<h1>PLEDGED EXECUTIVE PRODUCERS <a href=""><img src="#$.siteConfig('themeAssetPath')#/img/questionIcon.png" alt=""/></a></h1>
		<ul>
			<li><a href=""><img src="#$.siteConfig('themeAssetPath')#/img/producerCount.png" alt=""/></a></li>
			<li><a href=""><img src="#$.siteConfig('themeAssetPath')#/img/pledge.png" alt=""/></a></li>
		</ul>
	</div><!--end pledged-->

	<cfinclude template="inc/backers.cfm"/>
	<cfinclude template="inc/footer.cfm"/>
</div>
</body>
</html>
</cfoutput>