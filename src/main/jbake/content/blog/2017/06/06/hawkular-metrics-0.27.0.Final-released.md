title=Hawkular Metrics 0.27.0 - Release
author=Stefan Negrea
date=2017-06-06
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.27.0 of Hawkular Metrics. This release is anchored by performance improvements and enhancements.

Here is a list of major changes:

* **REST API - Updates**
    * Resolved an issue where a failure to insert metric tags can result in inconsistent state for a metric's definition and tags index; [HWKMETRICS-660](https://issues.jboss.org/browse/HWKMETRICS-660)
    * The `/metrics` endpoint is now aliased by `/m` to avoid false positives due to privacy blockers restricting access to `/metrics/metrics`; [HWKMETRICS-621](https://issues.jboss.org/browse/HWKMETRICS-621)
    * Added `GET /${metric_type}/tags/{tags}/raw` endpoints for all metric types to allow easier querying for raw data; [HWKMETRICS-482](https://issues.jboss.org/browse/HWKMETRICS-482)
* **Tag Query Language**
    * A new set of operators was added for regex matching. The operators are `~` for a positive match and `!~` for a negative match.
    * The existing equality operators (`=` and `!=`) will be exclusively used for strict string matching.
    * This improves language expressiveness and also removes confusion about the actual meaning of the string operators.
    * A side effect of this change is a dramatic performance improvement of up to 30x for expressions that use the equality operator (`=`).
    * For more details please visit: [HWKMETRICS-676](https://issues.jboss.org/browse/HWKMETRICS-676) and [PR-828](https://github.com/hawkular/hawkular-metrics/pull/828)
* **Other Updates**
    * Added a flag (`METRICS_EXPIRATION_JOB_ENABLED` set to true by default) to allow admins to disable the job that removes expired metric definitions. [HWKMETRICS-643](https://issues.jboss.org/browse/HWKMETRICS-643)
    * Updated RXJava to version 1.2.8; [HWKMETRICS-652](https://issues.jboss.org/browse/HWKMETRICS-652)

**Hawkular Alerting - Included**

* Version [1.7.0](https://issues.jboss.org/projects/HWKALERTS/versions/12334290)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples), [Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.27.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12334300


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
