		</div>
		<div id="push"></div>
    </div>
    
    <div id="footer">
      <div class="container">
        
      </div>
    </div>

    <section class="redhat">
      <div class="container">
        <p class="text-center">
          <a href="http://www.redhat.com/">
            <img alt="redhatlogo-white" src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/img/redhatlogo-white.png" width="130">
          </a>
        </p>
        <p class="muted credit">&copy; 2015 | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
      </div>
    </section>
    
    <!-- javascript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- js -->
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.2.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jbossorg-tabzilla.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/behavior.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/prettify.js"></script>

    <p><span id="forkongithub">
      <a href="https://github.com/hawkular" class="bg-grey">
        Fork me on GitHub
      </a>
    </span></p>
    
<#include "analytics.ftl">

  </body>
</html>
