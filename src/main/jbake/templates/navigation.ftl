	<!-- Fixed navbar -->
    <nav class="navbar navbar-fixed-top" role="navigation">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button class="navbar-toggle collapsed" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">Home</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">Hawkular</a></li>
            <li>
              <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/#getting-started">Getting Started</a>
            </li>
            <li class=""><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>downloads.html">Downloads</a></li>
            <li class="dropdown"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs">Documentation</a></li>
            <li class="dropdown"><a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
              Community
              <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li>
                <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community">Home</a>
              </li>
              <li>
                <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>license.html">License</a>
              </li>
              <li>
                <a href="https://travis-ci.org/hawkular/hawkular/builds">CI Builds</a>
              </li>
            </ul></li>
            <li class=""><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>blog.html">Blog</a></li>
          </ul>
        </div>
      </div>
    </nav>
