title=Hawkular Metrics 0.23.0 - Release
author=Stefan Negrea
date=2017-01-04
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.23.0 of Hawkular Metrics. This release is anchored by performance and stability improvements.

Here is a list of major changes:

* **Performance**
    * Prevent BusyPoolException under heavy load due no available connection and queue reaching max size of 256 ([HWKMETRICS-542](https://issues.jboss.org/browse/HWKMETRICS-542))
    * Gatling load tests have a new option (`loops`) to specify the number of requests per client ([HWKMETRICS-559](https://issues.jboss.org/browse/HWKMETRICS-559))
* **Deployment**
    * Resolved an issue with resource-env-ref in component war ([HWKMETRICS-541](https://issues.jboss.org/browse/HWKMETRICS-541))
    * Updated packaging to support deployments on WildFly 10.1.0 ([HWKMETRICS-558](https://issues.jboss.org/browse/HWKMETRICS-558))
* **REST API**
    * Updated CORS validation to be applied prior to processing the request; this solves an issue where some content is still returned even though a bad request status is returned ([HWKMETRICS-554](https://issues.jboss.org/browse/HWKMETRICS-554))
* **Internal Monitoring**
    * Hostname is now part of the metric id when creating and storing internal metrics ([HWKMETRICS-555](https://issues.jboss.org/browse/HWKMETRICS-555))
* **Hawkular Alerting - Updates**
    * Added support for newer condition types to the email plugin ([HWKALERTS-208](https://issues.jboss.org/browse/HWKALERTS-208))
    * Allow ExternalCondition to be fired on Event submission; external conditions can now be matched via Event and Data submissions ([HWKALERTS-207](https://issues.jboss.org/browse/HWKALERTS-207))
    * Added new NelsonCondition for native Nelson Rule detection; a brand new condition type to perform automatic Nelson Rule detection of misbehaving metrics. ([HWKALERTS-209](https://issues.jboss.org/browse/HWKALERTS-209))

**Hawkular Alerting - Included**

* Version [1.5.0](https://issues.jboss.org/projects/HWKALERTS/versions/12332918)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples), [Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.23.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12332805


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
