<#include "header.ftl">
<#include "navigation.ftl">

<div class="homepage">
    <section class="main-banner">
        <div class="container">
          <h1 class="fade-in-up one">
            Open Source Monitoring Components
          </h1>
          <div class="buttons fade-in two">
            <a class="btn btn-primary btn-lg" href="/overview/">Hawkular Overview</a>
          </div>
        </div>
    </section>
    <section class="main-features">
        <div class="container">
            <div class="row">
                <ul>
                    <li class="col-md-3">
                        <h3>Federated Alerting</h3>
                        <a href="/overview/index.html#_alerting"><i class="fa fa-bell"></i></a>
                        <p class="text-left">H-Alerts integrates with Prometheus, Elastic, Kafka and you.</p>
                        <p class="text-left"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/docs/developer-guide/alerts-v2.html">About</a></p>
                        <p class="text-left"><a href="http://hub.docker.com/r/hawkular/hawkular-alerts/">Download</a></p>
                        <p class="text-left"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/docs/developer-guide/alerts-v2.html">User Guide</a></p>
                        <p class="text-left"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-alerts-v2.html">REST API Guide</a></p>
                        <p class="text-left"><a href="http://github.com/hawkular/hawkular-alerts/tree/master/examples/tutorial">Tutorial</a></p>
                        <p class="text-left"><a href="http://github.com/hawkular/hawkular-alerts/tree/master/examples">Examples</a></p>
                        <p class="text-left"><a href="http://github.com/hawkular/hawkular-alerts">Github</a></p>
                    </li>
                    <li class="col-md-3">
                        <h3>Distributed Tracing</h3>
                        <a href="/overview/index.html#_application_performance_management"><i class="fa fa-briefcase"></i></a>
                        <p class="text-left">The Hawkular Team collaborate on the Jaeger OpenTracing distributed tracing project.</p>
                        <p class="text-left"><a href="http://jaeger.readthedocs.io/en/latest/">Documentation</a></p>
                        <p class="text-left"><a href="https://github.com/uber/jaeger">Github</a></p>
                    </li>
                    <li class="col-md-3">
                        <h3>Metrics TSDB</h3>
                        <a href="/overview/index.html#_metric_storage"><i class="fa fa-bar-chart"></i></a>
                        <p class="text-left">H-Metrics is a Scalable, performant, long-term TSDB based on Cassandra.</p>
                        <p class="text-left"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-metrics/docs/user-guide/">About</a></p>
                        <p class="text-left"><a href="https://github.com/hawkular/hawkular-metrics/releases/">Download</a></p>
                        <p class="text-left"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-metrics/docs/user-guide/">User Guide</a></p>
                        <p class="text-left"><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>docs/rest/rest-metrics.html">REST API Guide</a></p>
                        <p class="text-left"><a href="http://github.com/hawkular/hawkular-metrics">Github</a></p>
                    </li>
                    <li class="col-md-3">
                        <h3>ManageIQ Provider</h3>
                        <a href="http://manageiq.org/"><img src="http://avatars0.githubusercontent.com/ManageIQ?&s=48" alt="ManageIQ logo"></img></a>
                        <p class="text-left">The ManageIQ middleware provider is powered by Hawkular Services.</p>
                        <p class="text-left"><a href="https://github.com/hawkular/hawkular-services">About</a></p>
                        <p class="text-left"><a href="http://manageiq.org/">ManageIQ</a></p>
                        <p class="text-left"><a href="http://github.com/ManageIQ/manageiq-providers-hawkular/">ManageIQ Hawkular Provider</a></p>
                        <p class="text-left"><a href="http://github.com/hawkular/hawkular-client-ruby/">Hawkular Client - Ruby</a></p>
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

<div class="container">
  <hr/><h4>Tags:</h4>
  <#include "show_all_tags.ftl">
</div>

<#include "footer.ftl">
