title=Hawkular Metrics 0.25.0 - Release
author=Stefan Negrea
date=2017-03-07
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.25.0 of Hawkular Metrics. This release is anchored by general stability improvements and enhanced query capabilities for the external metrics alerter.

Here is a list of major changes:

* **External Metrics Alerter - Enhancements**
    * Both syntax and query capabilities have been revamped to allow defining conditions using flexible expressions with embedded stats queries
    * The ExternalCondition expression is now JSON and has support for the new tag query language
    * The full documentation about this feature can be found in the [Alerting section]( http://www.hawkular.org/hawkular-metrics/docs/user-guide/#_alerting) of the [user guide](http://www.hawkular.org/hawkular-metrics/docs/user-guide/)
    * For more details please see: [HWKMETRICS-566](https://issues.jboss.org/browse/HWKMETRICS-566) and [Pull Request 727](https://github.com/hawkular/hawkular-metrics/pull/727)
* **Dropwizard-Metrics - Merged**
    * The [Dropwizard-Metrics reporter](https://github.com/hawkular/hawkular-dropwizard-reporter) has been merged into the Metrics repository in [clients/dropwizard](https://github.com/hawkular/hawkular-metrics/tree/44677cc5d6267e738ea51bdd9a37be062ca1b8c2/clients/dropwizard) module
    * The [old repository](https://github.com/hawkular/hawkular-dropwizard-reporter) is decommissioned, all new development will happen in the Metrics project
    * This was done to simplify the compatibility matrix between the reporter and Hawkular Metrics REST API; going forward they will have identical versions. Furthermore, the compatibility is now tested via continuous integration tests.
    * Please use the new maven artifact [hawkular-dropwizard-reporter](http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/hawkular-dropwizard-reporter/0.25.0.Final/)
    * For more details please see: [HWKMETRICS-585](https://issues.jboss.org/browse/HWKMETRICS-585)
* **Tag Query Language - Enhancements**
    * The tag query language now supports the dot character in the tag name. The list of allowed characters is `a-zA-Z_0-9.`
    * The query language allows regex matching for tag values but not tag names
    * This allows translating JSON-like tag structures into Hawkular Metrics tags and query using the new tag query language
    * For example, a tag structure like `[tag.subtag1: value1, tag.subtag2.subsubtag1: value2]` is now queriable via the tag query language with queries like `tag.subtag1 = value1` or `tag.subtag2.subsubtag1`
    * For more details please see: [HWKMETRICS-611](https://issues.jboss.org/browse/HWKMETRICS-611)
* **REST API - Request Logging**
    * It is now possible to enable detailed logging for all REST API requests
    * Two properties have been added to enable this features: `hawkular.metrics.request.logging.level` to enable logging for all read requests and `hawkular.metrics.request.logging.level.writes` to enable logging for write requests
    * By default this feature is disabled, to enable just set the log level via each property
    * For more details please see: [HWKMETRICS-589](https://issues.jboss.org/browse/HWKMETRICS-589)
    * Here is a sample log:

```
INFO  [org.hawkular.metrics.api.jaxrs.util.RequestLoggingFilter] (default task-49)
REST API request:
--------------------------------------
path: /metrics
segments: [metrics]
method: GET
query parameters: {type=[availability]}
Tenant: T9a116f18-28cf-41b3-8ff8-c9752ac60e26232
```

* **Other Updates**
    * Automatically fix schema issues that occur when the server is restarted during initial schema installation ([HWKMETRICS-594](https://issues.jboss.org/browse/HWKMETRICS-594))
    * Metric data points inserts have been optimized to use token ranges for Cassandra writes ([HWKMETRICS-599](https://issues.jboss.org/browse/HWKMETRICS-599))


**Hawkular Alerting - Included**

* Version [1.5.3](https://issues.jboss.org/projects/HWKALERTS/versions/12333651)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples), [Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.25.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12333676


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
