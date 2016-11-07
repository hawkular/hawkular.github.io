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
              <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>overview/">Overview</a></li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>blog.html">Blog</a></li>
                <li class="dropdown">
                  <a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                    Hawkular Services<span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" role="menu">
                    <li class="menu-item dropdown dropdown-submenu">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Documentation</a>
                      <ul class="dropdown-menu">
                        <li class="menu-item ">
                          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-services/docs/quickstart-guide/">Quickstart</a>
                        </li>
                        <li class="menu-item ">
                          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-services/docs/installation-guide/">Installation Guide</a>
                        </li>
                        <li class="menu-item ">
                          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-services/docs/user-guide/">User Guide</a>
                        </li>
                        <li class="menu-item dropdown dropdown-submenu">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">REST API</a>
                          <ul class="dropdown-menu">
                            <li class="menu-item ">
                              <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-alerts.html">Alerting</a>
                            </li>
                            <li class="menu-item ">
                              <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-inventory.html">Inventory</a>
                            </li>
                            <li class="menu-item ">
                              <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-metrics.html">Metrics</a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="https://github.com/hawkular/hawkular-services/releases">Download</a>
                    </li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                    Hawkular APM<span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" role="menu">
                    <li>
                      <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-apm/">Overview</a></li>
                    </li>
                    <li>
                      <a href="https://hawkular.gitbooks.io/hawkular-apm-user-guide/content/">Documentation</a>
                    </li>
                    <li>
                      <a href="https://github.com/hawkular/hawkular-apm/releases/">Download</a>
                    </li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                    Hawkular Metrics<span class="caret"></span>
                  </a>
                  <ul class="dropdown-menu" role="menu">
                  <li class="menu-item dropdown dropdown-submenu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Documentation</a>
                      <ul class="dropdown-menu">
                        <li class="menu-item ">
                          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-metrics/docs/user-guide/">User Guide</a>
                        </li>
                        <li class="menu-item ">
                          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-metrics.html">Metrics REST API</a>
                        </li>
                        <li class="menu-item ">
                          <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-alerts.html">Alerting REST API</a>
                        </li>
                      </ul>
                  </li>
                    <li>
                      <a href="https://github.com/hawkular/hawkular-metrics/releases/">Download</a>
                    </li>
                  </ul>
                </li>
                <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-clients/">Hawkular Clients</a></li>
                <li class="dropdown"><a aria-expanded="false" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">
                  Community
                  <span class="caret"></span>
                </a>
                <ul class="dropdown-menu" role="menu">
                  <li>
                    <a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/docs/getting-involved/">Getting Involved</a>
                  </li>
                  <li class="menu-item ">
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
                      </ul>
                  </li>
                  <li>
                    <a href="https://github.com/hawkular">GitHub Repositories</a>
                  <li>
                    <a href="https://travis-ci.org/hawkular">CI Builds</a>
                  </li>
                </ul></li>
              </ul>
            </div>
          </div>
        </nav>
