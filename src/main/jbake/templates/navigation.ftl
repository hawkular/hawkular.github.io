<!-- Fixed navbar -->
<nav class="navbar navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/">Home</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>blog.html" role="button">Blog</a></li>
        <li class="dropdown"><a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
          Community
          <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li class="menu-item">
              <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/docs/getting-involved/">Getting Involved</a>
            </li>
            <li class="menu-item">
              <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/docs/developer-guide/">Developer Guide</a>
            </li>
            <li class="menu-item dropdown dropdown-submenu">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Labs</a>
                <ul class="dropdown-menu">
                  <li class="menu-item ">
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/labs/datamining/">Datamining</a>
                  </li>
                  <li class="menu-item ">
                    <a href="https://github.com/pilhuhn/hawkfx">HawkFX</a>
                  </li>
                  <li class="menu-item ">
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-clients/android-client/">Android client</a>
                  </li>
                  <li class="menu-item ">
                    <a href="https://github.com/jotak/hawkular-java-toolbox">Client-side java toolbox</a>
                  </li>
                </ul>
            </li>
            <li>
              <a href="https://github.com/hawkular">GitHub Repositories</a>
            <li>
              <a href="https://travis-ci.org/hawkular">CI Builds</a>
            </li>
          </ul>
        </li>
      </ul>
      <div id="wrap">
        <div class="dropup">
          <a class="tabnav-closed" href="#" id="tab">Red Hat</a>
          <script>
            window.addEventListener('load', function() {
              renderTabzilla("Hawkular", "https://hawkular.github.io", true );
            }, false);
          </script>
        </div>
      </div>
    </div>
</nav>
