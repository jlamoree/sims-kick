<cfsilent>
	<cfset backerData = arrayNew(1)/>
	<cfset latestExecutiveProducer = structNew()/>
	<cfset executiveProducerCount = 0/>
	<cfset executiveProducerLimit = 500/>
	<cfset backerIterator = application.contentManager.getActiveContentByFilename("backer-collection", $.event("siteID")).getKidsIterator()/>
	<cfloop condition="backerIterator.hasNext()">
		<cfset backerBean = backerIterator.next()/>
		<cfset backer = structNew()/>
		<cfset backer.number = backerIterator.currentIndex()/>
		<cfset backer.name = ucase(backerBean.getTitle())/>
		<cfset backer.title = ucase(backerBean.getBackerTitle())/>
		<cfset backer.facebookURL = backerBean.getURL()/>
		<cfset backer.image = backerBean.getImageURL(size="large")/>
		<cfset backer.size = backerBean.getBackerSize()/>
		<cfset arrayAppend(backerData, backer)/>
		<cfif backerBean.getBackerType() eq "ep">
			<cfset latestExecutiveProducer.name = ucase(backerBean.getTitle())/>
			<cfset latestExecutiveProducer.image = backerBean.getImageURL(width=41, height=42)/>
			<cfset executiveProducerCount = executiveProducerCount + 1/>
		</cfif>
	</cfloop>
	
	<cfset executiveProducerLeft = executiveProducerLimit - executiveProducerCount/>
</cfsilent>
<cfoutput>
<cfinclude template="inc/html_head.cfm"/>
<body id="#$.getTopID()#" class="home">
<div id="container" class="#$.createCSSid($.content('menuTitle'))#">
	<cfinclude template="inc/header.cfm"/>

	<div id="intro">
		<cfinclude template="inc/ksBar.cfm"/>

		<div id="video">
			<div id="videoIn">
				<div id="videoContainer">
					<img src="#$.siteConfig('themeAssetPath')#/img/play.png" alt=""/>
				</div><!--end videoContainer-->
					
				<div id="videoSide">
					<h3>Help make this project a reality.</h3>
					<p>Pledge your support and recieve an Executive Producer Credit in the movie and IMDB.</p>
					<a href="#$.content('ksURL')#" id="backThisProject"><img src="#$.siteConfig('themeAssetPath')#/img/backThisProject.png" alt=""/></a>
					<a href="#$.content('ksURL')#" id="visit">Visit our Kickstarter page.</a>
				</div><!--end videoSider-->
			</div>
		</div><!--end video-->
		<div id="producer">
			<div id="producerIn">
				<cfif isStruct(latestExecutiveProducer) and structCount(latestExecutiveProducer)>
					<h3>NEWEST EXECUTIVE PRODUCER: <span class="white">#latestExecutiveProducer.name#!</span> <img src="#latestExecutiveProducer.image#" alt=""/></h3>
					<img src="#$.siteConfig('themeAssetPath')#/img/ImBacker.png" alt="" id="ImBacker"/>
				</cfif>
			</div>
		</div><!--end producer-->
	</div><!--end intro-->

	<div id="pledged">
		<h1>PLEDGED EXECUTIVE PRODUCERS <a href=""><img src="#$.siteConfig('themeAssetPath')#/img/questionIcon.png" alt=""/></a></h1>
		<ul>
			<li><a href="" id="executiveProducerCount"><span>#executiveProducerLeft# of #executiveProducerLimit#</span> EXECUTIVE PRODUCER POSITIONS LEFT</a></li>
			<li><a href="#$.content('ksURL')#"><img src="#$.siteConfig('themeAssetPath')#/img/pledge.png" alt=""/></a></li>
		</ul>
	</div><!--end pledged-->

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
					<div class="facebook"><a href="#backer.facebookURL#"><img src="#$.siteConfig('themeAssetPath')#/img/facebook.png" alt=""/></a></div>
				</cfif>
			</div><!--end sSquare-->
		</cfloop>
	</div>

</div>
<cfinclude template="inc/footer.cfm"/>
<script type="text/javascript">
	$(function(){
		$('##masonry').masonry({
			itemSelector: '.box',
			columnWidth: 0,
			isAnimated: true,
			animationOptions: {
				duration: 750,
				easing: 'linear',
				queue: false
			}
		})
	});
		
	$(".box").hover(function(){
		$(".overlay", this).css('display','none');
	});
	$(".box").mouseleave(function(){
		$(".overlay", this).css('display','block');
	});
		
</script>
</body>
</html>
</cfoutput>