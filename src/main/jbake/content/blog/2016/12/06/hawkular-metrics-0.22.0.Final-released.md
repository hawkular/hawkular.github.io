title=Hawkular Metrics 0.22.0 - Release
author=Stefan Negrea
date=2016-12-06
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.22.0 of Hawkular Metrics.This release is anchored by performance and compression enhancements.

Here is a list of major changes:

* **Compression**
    * Prevent OutOfMemoryError on Cassandra when compression job runs ([HWKMETRICS-520](https://issues.jboss.org/browse/HWKMETRICS-520))
    * Avoid compression job executing in a loop when execution falls behind  ([HWKMETRICS-536](https://issues.jboss.org/browse/HWKMETRICS-536))
    * Avoid future executions of compression job from not running if Cassandra is shutdown abruptly ([HWKMETRICS-518](https://issues.jboss.org/browse/HWKMETRICS-518))
    * Added a flag to disable the compression job; the data will be persisted and retrieved without compression ([HWKMETRICS-524](https://issues.jboss.org/browse/HWKMETRICS-524))
    * The block size for compression is now configurable ([HWKMETRICS-545](https://issues.jboss.org/browse/HWKMETRICS-545))
    * The compression job can now be triggered manually  ([HWKMETRICS-502](https://issues.jboss.org/browse/HWKMETRICS-502))
* **Server Clustering**
    * The external alerter is now cluster-aware and will not process the same request on multiple nodes ([HWKMETRICS-515](https://issues.jboss.org/browse/HWKMETRICS-515))
    * Schema updates are correctly applied when multiple servers are started at the same time ([HWKMETRICS-514](https://issues.jboss.org/browse/HWKMETRICS-514))
    * Added Cassandra connection information to the status page and created an admin version with detailed Cassandra cluster information ([HWKMETRICS-526](https://issues.jboss.org/browse/HWKMETRICS-526))
    * Internal system metrics are now persisted under `admin` tenant; this gives a good overview of the current system load ([HWKMETRICS-550](https://issues.jboss.org/browse/HWKMETRICS-550))
* **REST API**
    * Added endpoint to allow fetching of available tag names ([HWKMETRICS-532](https://issues.jboss.org/browse/HWKMETRICS-532))
    * Fixed an issue where the API would report an internal server error on invalid query ([HWKMETRICS-543](https://issues.jboss.org/browse/HWKMETRICS-543))
* **Hawkular Alerting - Updates**
    * End to end performance enhancements
    * Major improvements to [REST API documentation](http://www.hawkular.org/docs/rest/rest-alerts.html)
    * New cross-tenant endpoints for for fetching alerts
    * Email and webhook action plugins are now packaged in the main distribution ([HWKMETRICS-552](https://issues.jboss.org/browse/HWKMETRICS-552))


**Hawkular Alerting - included**

* Version [1.4.0](https://issues.jboss.org/projects/HWKALERTS/versions/12331986)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API Documentation](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples),
[Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.22.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12332012


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
