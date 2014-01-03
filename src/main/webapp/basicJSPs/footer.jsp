<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<footer class="row">
	<div class="small-12 columns">
		<hr />
		<div class="row">
			<div class="small-6 columns">
				<p>Copyright &copy; 2014 Hackerspace Bremen e.V.</p>
			</div>
			<div class="small-6 columns">
				<ul class="inline-list right">
					<li><a href="https://github.com/HackerspaceBremen/odl_bremen_site" target="_blank">Code auf Github</a></li>
					<li><a href="/impressum">Impressum</a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>

<script>
  document.write('<script src=/js/vendor/'
    + ('__proto__' in {} ? 'zepto' : 'jquery')
    + '.js><\/script>');
</script>

<script src="/js/foundation/foundation.js"></script>
<script src="/js/foundation/foundation.topbar.js"></script>
<script src="/js/basicValidation.js"></script>

<script>
  $(document).foundation();
</script>

<!-- Google Analytics mit Opt-Out Cookie -->
<script>

var gaProperty = 'UA-46836018-1';
var disableStr = 'ga-disable-' + gaProperty;
if (document.cookie.indexOf(disableStr + '=true') > -1) {
  window[disableStr] = true;
}
function gaOptout() {
  document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2099 23:59:59 UTC; path=/';
  window[disableStr] = true;
}

</script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-46836018-1', 'odl-bremen.de');
  ga('set', 'anonymizeIp', true);
  ga('send', 'pageview');

</script>