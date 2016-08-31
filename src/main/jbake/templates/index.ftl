<#include "header.ftl">
<#include "navigation.ftl">

<div class="homepage">
    <section class="main-banner">
        <div class="container">
          <h1 class="fade-in-up one">
            Open Source Monitoring Components
          </h1>
          <div class="buttons fade-in two">
            <a class="btn btn-primary btn-lg" href="/overview/">Overview</a>
            <a class="btn btn-default btn-lg" href="/hawkular-services/docs/quickstart-guide/">Get Started!</a>
          </div>
          <!--p class="version fade-in three"><i class="fa fa-list-ul"></i><span class="latestVersion"/>
          </p-->
        </div>
    </section>
    <section class="main-features">
        <div class="container">
            <h2>Hawkular Features</h2>
            <div class="row">
                <ul>
                    <li class="col-md-4 col-sm-4">
                        <a href="/overview/index.html#_metric_storage"><i class="fa fa-cloud"></i></a>
                        <h4>Metric Storage</h4>
                        <p>Flexible, scalable and high performance metric storage based on Cassandra. <a href="/overview/index.html#_metric_storage">More...</a></p>
                    </li>
                    <li class="col-md-4 col-sm-4">
                        <a href="/overview/index.html#_alerting"><i class="fa fa-bell"></i></a>
                        <h4>Alerting</h4>
                        <p>Notify administrators of performance problems or other user defined conditions. <a href="/overview/index.html#_alerting">More...</a></p>
                    </li>
                    <li class="col-md-4 col-sm-4">
                        <a href="/overview/index.html#_inventory"><i class="fa fa-sitemap"></i></a>
                        <h4>Inventory</h4>
                        <p>Keep track of the monitored topology and all the monitored resource metadata. <a href="/overview/index.html#_inventory">More...</a></p>
                    </li>
                    <li class="col-md-4 col-sm-4">
                        <a href="/overview/index.html#_metric_data_visualization"><i class="fa fa-bar-chart"></i></a>
                        <h4>Metric Data Visualization</h4>
                        <p>View your data and add charts where you need them most, including real time monitoring. <a href="/overview/index.html#_metric_data_visualization">More...</a></p>
                    </li>
                    <li class="col-md-4 col-sm-4">
                        <a href="/overview/index.html#_application_performance_management"><i class="fa fa-briefcase"></i></a>
                        <h4>Application Performance Management</h4>
                        <p>Capture information about the application invocations being executed across your servers. <a href="/overview/index.html#_application_performance_management">More...</a></p>
                    </li>
                    <li class="col-md-4 col-sm-4">
                        <a href="http://manageiq.org/"><img src="http://avatars0.githubusercontent.com/ManageIQ?&s=48" alt="ManageIQ logo"></img></a>
                        <h4>Integration with ManageIQ</h4>
                        <p>ManageIQ lets you manage container, virtual, private, and public cloud infrastructures. <a href="http://manageiq.org/">More...</a></p>
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
