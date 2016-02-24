<#include "header.ftl">
<#include "navigation.ftl">

<div class="homepage">
    <section class="main-banner">
        <div class="container">
          <h1 class="fade-in-up one">
            Components for Middleware
            <span>Monitoring and Management</span>
          </h1>
          <div class="buttons fade-in two">
            <a class="btn btn-primary btn-lg" href="/downloads.html">Download Hawkular</a>
            <a class="btn btn-default btn-lg" href="https://github.com/hawkular">View on GitHub</a>
          </div>
          <p class="version fade-in three"><i class="fa fa-list-ul"></i><span class="latestVersion"/>
          </p>
        </div>
    </section>
    <!--section class="boxes">
        <div class="row">
            <div class="server-side box col-sm-4">
                <div class="content">
                    <h3>React on various events</h3>
                    <p>Setup alerts and do your own stuff</p>
                </div>
            </div>
            <div class="services box col-sm-4">
                <div class="content">
                    <h3>Monitoring ready to use</h3>
                </div>
            </div>
            <div class="cloud box col-sm-4">
                <div class="content">
                    <h3>On-premise or in the cloud</h3>

                    <p>Will also run on OpenShift</p>
                </div>
            </div>
        </div>
    </section-->
    <!--section class="description">
        <p>
            Hawkular is an Open Source monitoring solution, following the
            successful <a href="http://rhq-project.github.io/rhq/">RHQ Project</a>,
            benefiting from years of experience. Hawkular is developed
            with modularity and scalability in mind. Components can be re-used in applications outside
            of Hawkular.<br/>
            Hawkular is able to receive monitoring data from various existing sources (collectd, gmond,...). We will
            also provide an agent of its own.
            <br/>
            Hawkular will allow you to get application-centric views on your infrastructure with its connected
            resources.
            and the possibility to drill in to get at individual resources of your application
            <br/>
            While Hawkular is under heavy development, this is
            also a great time to <a href="/community/join.html" target="_blank">join the discussions</a> and
            why not even <a href="https://github.com/hawkular" target="_blank">contribute</a>. We know it's
            very rough at the moment and documentation is coming up but feel free to ask anything on
            <a href="irc://irc.freenode.net/#hawkular" target="_blank">IRC</a> or by
            <a href="https://lists.jboss.org/mailman/listinfo/hawkular-dev" target="_blank">EMail</a>.
        </p>
    </section-->
    <section class="main-features">
        <div class="container">
            <h2>Hawkular Features</h2>
            <div class="row">
                <ul>
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-cloud"></i>
                        <h4>Metric Storage</h4>
                        <p>Flexible, scalable and high performance metric storage based on Cassandra. <a href="/docs/overview.html#_metric_storage">More...</a></p>
                    </li>
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-bell"></i>
                        <h4>Alerting</h4>
                        <p>Notify administrators of performance problems or other user defined conditions. <a href="/docs/overview.html#_alerting">More...</a></p>
                    </li>
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-sitemap"></i>
                        <h4>Inventory</h4>
                        <p>Keep track of the monitored topology and all the monitored resource metadata. <a href="/docs/overview.html#_inventory">More...</a></p>
                    </li>
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-bar-chart"></i>
                        <h4>Metric Data Visualization</h4>
                        <p>View your data and add charts where you need them most, including real time monitoring. <a href="/docs/overview.html#_metric_data_visualization">More...</a></p>
                    </li>
                    <!--li class="col-md-3 col-sm-4">
                        <i class="fa fa-mobile"></i>
                        <h4>Pluggable action mechanism <span>(coming soon)</span></h4>
                        <p>As a result of Hawkular Alerts let Aerogear notify your smartphone when something went
                            wrong. <a href="/docs/overview#_pluggable_notifications_mechanism">More...</a></p>
                    </li-->
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-lock"></i>
                        <h4>Security</h4>
                        <p>Authentication, Authorization and Multitenancy. <a href="/docs/overview.html#_security_2">More...</a></p>
                    </li>
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-heartbeat"></i>
                        <h4>Pinger</h4>
                        <p>Checks if given web is up and running by sending HTTP HEAD requests. <a href="/docs/overview.html#_pinger">More...</a></p>
                    </li>
                    <#--<li class="col-md-3 col-sm-4">-->
                        <#--<i class="fa fa-server"></i>-->
                        <#--<h4>Middleware Management Console</h4>-->
                        <#--<p>Console to manage Middleware servers. <a href="/docs/overview.html#_middleware_management_console">More...</a></p>-->
                    <#--</li>-->
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-briefcase"></i>
                        <h4>Business Transaction Management</h4>
                        <p>Capture information about the business transaction instances being executed across your servers. <a href="/docs/overview.html#_business_transaction_management">More...</a></p>
                    </li>
                </ul>
            </div>
        </div>
    </section>
</div>

<script>
   $.getJSON( "properties.json", function( data ) {
      var latestRelease = data.releases[0];
      $('.latestVersion').html(latestRelease.version + " - " + moment(latestRelease.date, "MM-DD-YYYY").fromNow());
  });
</script>


<#include "footer.ftl">
