<#include "header.ftl">
<#include "navigation.ftl">

<div class="homepage">
    <section class="main-banner">
        <div class="container">
          <h1 class="fade-in-up one">
            Open Source Monitoring
          </h1>
          <div class="buttons fade-in two">
            <a class="btn btn-primary btn-lg" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>hawkular-metrics/docs/user-guide/">Metrics</a>
            <a class="btn btn-primary btn-lg" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>community/docs/developer-guide/alerts.html">Alerting</a>
          </div>
          <!--p class="version fade-in three"><i class="fa fa-list-ul"></i><span class="latestVersion"/>
          </p-->
        </div>
    </section>
</div>

<div class="container">
  <div class="row">
    <h2>What is Hawkular?</h2>
    <div class="paragraph">
      <p>
        Hawkular a hawk with a monocular. Hawks are known to have a very sharp vision and very good hunters, they can catch preys anticipating their movements at a very fast speed.
        The analogy is our goal to be able to monitor and catch anomalies in fast pace environments.
      </p>
    </div>
    <div class="paragraph">
      <p>
        The organization started around the end of 2014 as a successor of the <a href="http://www.rhq-project.org">RHQ Project</a>.
        It’s a set of open source (Apache License v2) components targeted for monitoring solutions and is sponsored by <a href="http://www.redhat.com">Red Hat</a>.
      </p>
    </div>
  </div>

  <div class="row">
    <h2>Mission Statement and Strategy</h2>
    <div class="paragraph">
      <p>
        <strong>Mission Statement</strong>: Be the most popular open source monitoring solution.
      </p>
    </div>
    <div class="paragraph">
      <p>
        The main goal of the Hawkular organization is provide tools to monitor, view, predict, and guide to make informed decisions about deployed applications and infrastructure.
      </p>
    </div>
  </div>

  <div class="row">
    <h2>Contributing</h2>
    <div class="paragraph">
      <p>
        All contributions are welcome and there are several ways to join the Hawkular community. The best option to reach the developers and other community members. For a complete
      </p>
    </div>
    <div class="paragraph">
      <p>
        TODO: another paragraph here
      </p>
    </div>
  </div>
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
