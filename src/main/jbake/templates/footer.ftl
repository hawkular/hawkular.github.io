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
        <p class="muted credit pull-right">&copy; 2015 | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
    <p id="forkongithubp"><span id="forkongithub">
      <a href="https://github.com/hawkular" class="bg-grey">
        Fork me on GitHub
      </a>
    </span></p>
      </div>
    </section>

    <#include "javascripts.ftl">

  </body>
</html>
