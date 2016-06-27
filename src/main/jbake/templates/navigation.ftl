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
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>index.html">Hawkular</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/overview.html">Overview</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/user/quick-start.html">Quick Start</a></li>
                <li class=""><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>downloads.html">Downloads</a></li>
                <li class="dropdown">
                  <a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                    Metrics<span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" role="menu">
                    <li>
                      <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/components/metrics/index.html">User Guide</a>
                    </li>
                    <li>
                      <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-metrics.html">REST API</a>
                    </li>
                  </ul>
                </li>
                <li class="dropdown"><a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                  Documentation
                  <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/user/user-guide.html">User Guide</a>
                  </li>
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/user/installation-guide.html">Installation Guide</a>
                  </li>
                  <!--li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/dev/terms.html">Used Terms</a>
                  </li-->
                  <li class="menu-item dropdown dropdown-submenu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">REST API</a>
                    <ul class="dropdown-menu">
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-alerts.html">Alerts</a>
                      </li>
                      <li class="menu-item ">
                        <a href="https://hawkular.gitbooks.io/hawkular-apm-user-guide/content/apiref/rest-apm.html">Application Performance Management</a>
                      </li>
                        <li class="menu-item ">
                            <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-datamining.html">Data Mining</a>
                        </li>
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-inventory.html">Inventory</a>
                      </li>
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-metrics.html">Metrics</a>
                      </li>
                    </ul>
                  </li>
                  <li class="menu-item dropdown dropdown-submenu">
                    <a href="javascript:;" onclick="return false;" class="dropdown-toggle" data-toggle="dropdown">Sub-projects</a>
                    <ul class="dropdown-menu">
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/components/alerts/index.html">Alerts</a>
                      </li>
                      <li class="menu-item ">
                        <a href="https://hawkular.gitbooks.io/hawkular-apm-user-guide/content/">Application Performance Management</a>
                      </li>
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/components/datamining/index.html">Data Mining</a>
                      </li>
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/components/inventory/index.html">Inventory</a>
                      </li>
                      <li class="menu-item ">
                        <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/components/metrics/index.html">Metrics</a>
                      </li>
                    </ul>
                  </li>
                </ul>
                <li class="dropdown"><a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                  Community
                  <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/index.html">Home</a>
                  </li>
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/join.html">Join</a>
                  </li>
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>license.html">License</a>
                  </li>
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/dev/development.html">Developer Guide</a>
                  </li>
                  <li>
                    <a href="https://travis-ci.org/hawkular">CI Builds</a>
                  </li>
                </ul></li>
                <li class=""><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>blog.html">Blog</a></li>
              </ul>
            </div>
          </div>
        </nav>
