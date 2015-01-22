	<!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>">Hawkular</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs#getting-started.html">Getting Started</a></li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>downloads.html">Downloads</a></li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>documentation.html">Documentation</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Community <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">Home</a></li>
                <li><a href="#">Licence</a></li>
                <li><a href="#">CI Builds</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
            <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>blog.html">Blog</a></li>
          </ul
        </div><!--/.nav-collapse -->
      </div>
    </div>
    <div class="container">
