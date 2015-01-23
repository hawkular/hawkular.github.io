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
        <p class="muted credit">&copy; 2015 | Mixed with <a href="http://getbootstrap.com/">Bootstrap v3.1.1</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
      </div>
    </section>
    
    <!-- javascript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- js -->
    <script src="http://static.jboss.org/theme/js/libs/jquery/jquery-1.9.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="http://static.jboss.org/js/_jbossorg-tabzilla.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/behavior.js"></script>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/prettify.js"></script>
    
<#include "analytics.ftl">

  </body>
</html>
