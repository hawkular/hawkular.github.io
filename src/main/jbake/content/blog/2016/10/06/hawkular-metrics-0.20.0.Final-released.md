title=Hawkular Metrics 0.20.0 - Release
author=Stefan Negrea
date=2016-10-06
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.20.0 of Hawkular Metrics.This is a major release anchored by the inclusion of [Hawkular Alerting](https://github.com/hawkular/hawkular-alerts) in the distribution, a brand new compression algorithm, and numerous API enhancements and fixes.

**Hawkular Metrics + Alerting**

Hawkular Metrics now includes Hawkular Alerting out of the box; it's no longer necessary to install and manage two separate components. Hawkular Metrics delivers a single EAR file containing components from both projects. Incoming metric data is efficiently filtered and evaluated, generating alerts and events for defined triggers. The combined EAR artifact is the primary binary distribution of Hawkular Metrics going forward. For more details: [HWKMETRICS-491](https://issues.jboss.org/browse/HWKMETRICS-491)

Hawkular Alerting Details

* Version [1.2.1](https://issues.jboss.org/browse/HWKALERTS/fixforversion/12331699/) is included in this release
* Project details and repository: [Hawkular Alerting - Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [Hawkular Alerting REST API Documentation](http://www.hawkular.org/docs/rest/rest-alerts.html), [Hawkular Alerting Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples),
[Hawkular Alerting Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

Deployment Notes

1. Deployment Naming
    - The new EAR should be deployed as 'hawkular-metrics.ear' in WildFly.  This naming is required to allow for proper dependencies to be established by the EAR components.
2. `standalone.xml` Configuration
    - The following snippet must be added to `standalone.xml` to support the Hawkular Alerting component. Add this additional cache-container entry after the existing cache-container entries:
```xml
<cache-container name="hawkular-alerts" module="org.jboss.as.clustering.infinispan">
    <local-cache name="partition"/>
    <local-cache name="triggers"/>
    <local-cache name="data"/>
    <local-cache name="publish"/>
    <local-cache name="schema"/>
</cache-container>
```

Usage Notes

To use Hawkular Alerting with Hawkular Metrics there is a naming convention when defining trigger conditions.  For a metric with name 'X', the alerting DataId to reference it will be '<prefix>_X', where the <prefix> depends on the metric's type. For example, let's consider a metric with name 'HeapUsed' and type 'gauge'. This example defines a trigger condition to test if the used heap exceeded 80%: `hm_g_HeapUsed > .8`. The 'hm_g_' prefix indicates that HeapUsed is a gauge.

Because Hawkular Metrics allows the same metric name for different types, the prefix is needed to make clear the target metric. The prefixes are:

  * hm_a: availability
  * hm_c: counter
  * hm_cr: counter rate
  * hm_g: gauge
  * hm_gr: gauge rate
  * hm_s: string


**Compression**

Hawkular Metrics will now compress all the data with a compression scheme based on Facebook's Gorilla paper. A job will be run every two hours that compresses data received during the 2 hour block since last compression (there's one hour time for out-of-order writes to be written to the Cassandra). These data points are then written to a new storage format that's designed after the Gorilla compression and also compressed with the LZ4 algorithm to give even better compression ratio. Benefits include a faster reading time of larger block of datapoints and very large disk space savings. For more details: [HWKMETRICS-464](https://issues.jboss.org/browse/HWKMETRICS-464)


**Other major changes**

* REST API - Query Improvements
    * Querying raw & rate data by tags is now also possible via POST `{metric_type}/query` endpoints for all types of metrics ([HWKMETRICS-466](https://issues.jboss.org/browse/HWKMETRICS-466))
    * Added new POST endpoints for stats `gauges/stats/query` and `counters/stats/query` ([HWKMETRICS-465](https://issues.jboss.org/browse/HWKMETRICS-465))
    * It is now possible to fetch metric definitions filtered by a list of ids not just tags ([HWKMETRICS-461](https://issues.jboss.org/browse/HWKMETRICS-461))

* Cassandra Driver Configuration
    * Driver configuration options are now exposed for connection and request timeouts
    * Connection timeout can be configured via `CASSANDRA_CONNECTION_TIMEOUT` environment variable, or `hawkular-metrics.cassandra.connection.timeout` system property; value is specified in milliseconds and defaults to 5 seconds.
    * Request timeout can be configured via `CASSANDRA_REQUEST_TIMEOUT` environment variable, or `hawkular-metrics.cassandra.request.timeout` system property; value is specified in milliseconds and defaults to 12 seconds.
    * For more details: ([HWKMETRICS-490](https://issues.jboss.org/browse/HWKMETRICS-490))

* Job Scheduler
    * Duplicate instances of jobs were wrongly scheduled on server restart because the job scheduler was not checking if the job was already scheduled ([HWKMETRICS-461](https://issues.jboss.org/browse/HWKMETRICS-461))
    * Triggers now have a delay to properly schedule jobs in the future ([HWKMETRICS-224](https://issues.jboss.org/browse/HWKMETRICS-224))
    * Resolved an issue where long running job can miss future executions because the current execution takes longer than the repeat interval ([HWKMETRICS-477](https://issues.jboss.org/browse/HWKMETRICS-477))
    * Prevent execution of a job multiple times for the same execution time ([HWKMETRICS-486](https://issues.jboss.org/browse/HWKMETRICS-486))
    * RepeatingTrigger now allows specifying trigger start time ([HWKMETRICS-476](https://issues.jboss.org/browse/HWKMETRICS-476))

* Admin Endpoints
    * Admin related endpoints are going to be protected via an admin token, to be sent for admin related REST endpoints via Hawkular-Admin-Token request header
    * The first endpoint to be protected by this mechanism is `/tenants` since its functionality is cross tenant
    * The admin token can be set via command line arguments or environment variable at container startup; by default it is not set which means no access to protected endpoints
    * This is the foundation for adding more admin related functionality in upcoming releases (such as Cassandra cluster metrics, system telemetry, or admin operations)
    * The details:
      * system property key: hawkular.metrics.admin-token
      * environment variable: ADMIN_TOKEN
      * default value: null (admin endpoints are not accessible until set)
      * header name: Hawkular-Admin-Token
      * stored on the system config using one way hashing
      * For more details: [HWKMETRICS-478](https://issues.jboss.org/browse/HWKMETRICS-478)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.20.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/browse/HWKMETRICS/fixforversion/12331360


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
