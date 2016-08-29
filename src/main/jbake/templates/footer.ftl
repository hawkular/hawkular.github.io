		</div>
		<div id="push"></div>
    </div>

    <section class="redhat clearfix">
      <div class="container">
        <p class="pull-left">
          <a href="http://www.redhat.com/">
            <img alt="redhatlogo-white" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/img/redhatlogo-white.png" width="130">
          </a>
        </p>
        <p class="muted credit pull-right">
				  &copy; 2016 | Hawkular is released under <a href="/license.html">Apache License v2.0</a>
					<a href="https://twitter.com/hawkular_org" class="twitter-follow-button" data-show-count="false" data-size="medium">Follow @hawkular_org</a>
				  <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
					<iframe src="https://ghbtns.com/github-btn.html?user=hawkular&repo=hawkular-services&type=star" frameborder="0" scrolling="0" class="github-stars-btn"></iframe>
				</p>

    <!--p id="forkongithubp"><span id="forkongithub">
      <a href="https://github.com/hawkular" class="bg-grey">
        Fork me on GitHub
      </a>
    </span></p-->
      </div>
    </section>

    <#include "javascripts.ftl">

  </body>
</html>
