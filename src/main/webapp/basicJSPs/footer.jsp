<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<footer class="row">
	<div class="small-12 columns">
		<hr />
		<div class="row">
			<div class="small-6 columns">
				<p>Copyright &copy; 2013 Hackerspace Bremen</p>
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

<!-- Check for Zepto support, load jQuery if necessary -->
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