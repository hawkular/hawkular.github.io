		</div>
		<div id="push"></div>
    </div>

    <div id="footer">
      <div class="container">
          <a href="http://www.ej-technologies.com/products/jprofiler/overview.html">Built using JProfiler Java profiler
              <br/>
            <img src="http://www.ej-technologies.com/images/product_banners/jprofiler_small.png" alt="JProfiler logo"/>
           </a>
      </div>
    </div>

    <section class="redhat">
      <div class="container">
        <p class="text-center">
          <a href="http://www.redhat.com/">
            <img alt="redhatlogo-white" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/img/redhatlogo-white.png" width="130">
          </a>
        </p>
        <p class="muted credit">&copy; 2015 | Baked with <a href="http://jbake.org">JBake ${jbake-core.version}</a></p>
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
