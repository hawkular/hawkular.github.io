<#include "header.ftl">
<#include "navigation.ftl">

<div class="homepage">
    <section class="main-banner">
        <div class="container">
          <h1 class="fade-in-up one">
            Open Source Monitoring Components
          </h1>
          <div class="buttons fade-in two">
            <a class="btn btn-primary btn-lg" href="/downloads.html">Download Hawkular</a>
            <a class="btn btn-default btn-lg" href="https://github.com/hawkular">View on GitHub</a>
          </div>
          <p class="version fade-in three"><i class="fa fa-list-ul"></i><span class="latestVersion"/>
          </p>
        </div>
    </section>
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
                    <li class="col-md-3 col-sm-4">
                        <i class="fa fa-briefcase"></i>
                        <h4>Business Transaction Management</h4>
                        <p>Capture information about the business transaction instances being executed across your servers. <a href="/docs/overview.html#_business_transaction_management">More...</a></p>
                    </li>
                    <li class="col-md-3 col-sm-4">
                        <img src="http://avatars0.githubusercontent.com/ManageIQ?&s=48" alt="ManageIQ logo"></img>
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
