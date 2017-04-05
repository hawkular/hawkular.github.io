title=Hawkular Metrics 0.26.0 - Release
author=Stefan Negrea
date=2017-04-04
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.26.0 of Hawkular Metrics. This release is anchored by performance improvements and enhancements.

Here is a list of major changes:

* **REST API - Updates**
    * Added an endpoint to delete a single metric - `DELETE /{metric_type}/{metric_id}`. NOTE: deleting a metric using this endpoint will immediately delete all uncompressed data, tags, and index entries for a single metric; the compressed data will not be deleted but will expire using the preset data retention; [HWKMETRICS-612](https://issues.jboss.org/browse/HWKMETRICS-612)
    * Added a mixed stats batch query endpoint to request multiple stats queries at the same time, `POST /metrics/stats/batch/query`. For a sample query and reply please visit: [HWKMETRICS-618](https://issues.jboss.org/browse/HWKMETRICS-618)
    * Enabled GZIP content compression when the client accepts it; [HWKMETRICS-623](https://issues.jboss.org/browse/HWKMETRICS-623)
    * Min and max timestamp for metric definitions are now fetched only when explicitly requested. To enable min and max timestamps please use `timestamps=true` query parameter. [HWKMETRICS-625](https://issues.jboss.org/browse/HWKMETRICS-625)
* **Cassandra**
    * Cassandra 3.0.12 is now the supported version of Cassandra.
    * Support for previous versions of Cassandra 3.0.x is deprecated.
    * For more details please visit: [HWKMETRICS-622](https://issues.jboss.org/browse/HWKMETRICS-622)
* **External Metrics Alerter - Enhancements**
    * Added 'quietCount' option to the ConditionExpression to prevent alert repetition. If set then redundant firings for the same metric are suppressed until after N false evaluations. This applies to each metric individually. [HWKMETRICS-630](https://issues.jboss.org/browse/HWKMETRICS-630)
    * Added support for metrics group triggers, a way to define a single trigger and have it apply to an unknown and changing set of metrics. For documentation regarding this feature please visit [Metrics Group Triggers](http://www.hawkular.org/hawkular-metrics/docs/user-guide/#_metrics_group_triggers), and [HWKMETRICS-640](https://issues.jboss.org/browse/HWKMETRICS-640)
* **Internal Updates**
    * Resolved an issue where schema installation on multi Cassandra node cluster may fail; [HWKMETRICS-637](https://issues.jboss.org/browse/HWKMETRICS-637)
    * Added an internal job that deletes metrics definitions after all the associated data (compressed and uncompressed) expires. This will remove the tags and index entries for metrics that are no longer in use.  [HWKMETRICS-613](https://issues.jboss.org/browse/HWKMETRICS-613)


**Hawkular Alerting - Included**

* Version [1.6.0](https://issues.jboss.org/projects/HWKALERTS/versions/12333585)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples), [Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.26.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12333957


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
