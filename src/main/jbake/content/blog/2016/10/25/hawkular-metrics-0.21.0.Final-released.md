title=Hawkular Metrics 0.21.0 - Release
author=Stefan Negrea
date=2016-10-25
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.21.0 of Hawkular Metrics.This release is anchored by performance enhancements and general fixes.

Here is a list of major changes:

* Cassandra
    * **Cassandra 3.0.9 is now the supported version of Cassandra.**
    * Note: this is a rollback from previously supported version of 3.7 due to Cassandra community recommendations for stability and production deployment. Cassandra 3.7 or 3.9 are still compatible but development and testing now use 3.0.9 release.

* Compression
    * Fixed an issue that allowed duplicate instances of the compression job to get scheduled on server restart ([HWKMETRICS-492](https://issues.jboss.org/browse/HWKMETRICS-492))
    * Improved the fault tolerance of the compression job ([HWKMETRICS-494](https://issues.jboss.org/browse/HWKMETRICS-494))
    * Improved the performance of the merge process for reading compressed data ([HWKMETRICS-488](https://issues.jboss.org/browse/HWKMETRICS-488))
    * Fixed wrong ordering when fetching compressed and uncompressed data ([HWKMETRICS-506](https://issues.jboss.org/browse/HWKMETRICS-506))
    * Compression job provides back pressure ([HWKMETRICS-500](https://issues.jboss.org/browse/HWKMETRICS-500))
    * The job scheduler now handles failure scenarios ([HWKMETRICS-505](https://issues.jboss.org/browse/HWKMETRICS-505))

* Cassandra Schema
    * Fixed an issue where the server can fail to start due to Cassalog being in inconsistent state ([HWKMETRICS-495](https://issues.jboss.org/browse/HWKMETRICS-495))
    * `gc_grace_second` is set to zero for single node clusters ([HWKMETRICS-381](https://issues.jboss.org/browse/HWKMETRICS-381))

* API Updates
    * Inserting data points has server side retries to increase the fault tolerance for simple error scenarios ([HWKMETRICS-510](https://issues.jboss.org/browse/HWKMETRICS-510))
    * `fromEarliest` parameter is now supported in all query endpoints ([HWKMETRICS-445](https://issues.jboss.org/browse/HWKMETRICS-445))
    * Non-existant tag queries are now supported via `!tag:*` format; example: `!partition:*` ([HWKMETRICS-480](https://issues.jboss.org/browse/HWKMETRICS-480))

* Configuration
    * The configuration options did not have a consistent naming scheme. `hawkular-metrics`, `hawkular.metrics`, and `hawkular` prefixes were used along no prefixes at all.
    * In this release the naming schema has been standardized to  `hawkular.metrics.*` for metrics specific configuration and `hawkular.*` for general configuration.
    * Here is list of all configuration options currently available:  [ConfigurationKey](https://github.com/hawkular/hawkular-metrics/blob/release/0.21.0/api/metrics-api-util/src/main/java/org/hawkular/metrics/api/jaxrs/config/ConfigurationKey.java#L29)
    * For more details: [HWKMETRICS-508](https://issues.jboss.org/browse/HWKMETRICS-508)


**Hawkular Alerting - included**

* Version [1.3.0](https://issues.jboss.org/projects/HWKALERTS/versions/12331985)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API Documentation](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples),
[Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.21.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12331718


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
