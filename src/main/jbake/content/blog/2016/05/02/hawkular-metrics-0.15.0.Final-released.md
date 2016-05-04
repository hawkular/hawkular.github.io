title=Hawkular Metrics 0.15.0 - Release
author=Stefan Negrea
date=2016-05-02
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.15.0 of Hawkular Metrics. This is one of the largest ever Hawkular Metrics releases with a lot of new features and changes.


Here is a list of major changes:

1. **Cassandra 3.5**
    - Cassandra 3.5 is now the supported version of Cassandra
    - Cassandra 2.2.x support is deprecated
1. **Schema Management Tools**
    - First release with tooling for schema change management
    - Only upgrades are supported; incremental schema changes are installed when Hawkular Metrics starts
    - Going forward new versions of Hawkular Metrics can be installed without the need to start with a fresh database or manually update existing database even if the schema has been modified in the new version
    - For more details: [HWKMETRICS-361](https://issues.jboss.org/browse/HWKMETRICS-361), [Cassalog](https://github.com/jsanda/cassalog)
1. **`*/stats` & `*/raw` Replace `*/data`**
    - `*/data` has been **deprecated* and functionality split into two single purpose endpoints, this is applicable for all metric types (gauge, counter, availability, and string)
    - `*/stats` endpoints return bucketed, statistical or query-time aggregated data
    - `*/raw` endpoints accept and return raw data for a metric
    - `*/data` is being deprecated, will not receive any updates going forward, and will be removed in future releases. There is no clear timeline for the removal since a lot of clients use it; it will be around at least for another two releases.
    - Please update your code to use the new endpoints and follow the release notes for more details regarding removal.
    - For more details: [HWKMETRICS-24](https://issues.jboss.org/browse/HWKMETRICS-24), [HWKMETRICS-57](https://issues.jboss.org/browse/HWKMETRICS-57)
1. **Data Point Tags**
    - An optional set of tags can be supplied with each data point when inserting data. Unlike metric definition tags, data point tags cannot be modified. [HWKMETRICS-368](https://issues.jboss.org/browse/HWKMETRICS-368), [HWKMETRICS-54](https://issues.jboss.org/browse/HWKMETRICS-54)
    - Tag based bucketing for data points is supported for counters and gauges [HWKMETRICS-377](https://issues.jboss.org/browse/HWKMETRICS-377), [HWKMETRICS-373](https://issues.jboss.org/browse/HWKMETRICS-373)
    - New endpoints for filtering and grouping data by tags:
      - `GET /hawkular/metrics/gauges/{id}/stats/tags/{tags}`
      - `GET /hawkular/metrics/counters/{id}/stats/tags/{tags}`
1. **Tags**
    - Deleting tags only requires the tag keys and not the values, this simplifies the process for tag deletion. For backwards compatibility, the API will still accept name value pairs but will not take the value into account [HWKMETRICS-385](https://issues.jboss.org/browse/HWKMETRICS-385)
    - A new endpoint was added to query for the available values contained in a tag [HWKMETRICS-197](https://issues.jboss.org/browse/HWKMETRICS-197)
      - Endpoint: `GET hawkular/metrics/gauge/tags/{tags}`
      - Example: `GET hawkular/metrics/gauge/tags/hostname:*01*` returns `hostname: ["web01prod", "web01qa", "backend01prod", "backend01qa" ]`
1. **String Metric Type (Experimental)**
    - Hawkular Metrics now provides a string metric type. This release introduces new endpoints for reading and writing string data points [HWKMETRICS-384](https://issues.jboss.org/browse/HWKMETRICS-384)
    - There is a 2 KB size limit for each data point. That limit may be configurable in future releases.
    - New endpoints under `/strings` are experimental, so changes which break backwards compatibility could be introduced in future releases. The experimental tag allows time for feedback to better determine what the API should be.
1. **Asynchronous authentication for Openshift Metrics**
    - Important performance improvement: the authentication code now uses a non blocking HTTP Client (Undertow Client) to validate authentication tokens calling Kubernetes' master
    - Performance improvements details: https://github.com/hawkular/hawkular-metrics/pull/481#issue-148320027, https://github.com/hawkular/hawkular-metrics/pull/481#issuecomment-209876952
    - For more details: [HWKMETRICS-330](https://issues.jboss.org/browse/HWKMETRICS-330)
1. **API Updates**
    - Stats are excluded from empty bucket data points rather than returning the string NaN and zero for the samples property [HWKMETRICS-396](https://issues.jboss.org/browse/HWKMETRICS-396)
    - Endpoints that use the order param also accept lower case values [HWKMETRICS-389](https://issues.jboss.org/browse/HWKMETRICS-389)
    - Sum is included in bucket output for gauges and counters [HWKMETRICS-370](https://issues.jboss.org/browse/HWKMETRICS-370)
    - The status page can now be loaded over HTTPS without errors [HWKMETRICS-388](https://issues.jboss.org/browse/HWKMETRICS-388)
    - Added overwrite param to tenant and metric creation. This will only overwrite the configuration (such as retention settings or tags) of the metric or tenant and not the actual data stored. Also overwrite the retention will only affect new data points added and not existing data already stored [HWKMETRICS-148](https://issues.jboss.org/browse/HWKMETRICS-148)


### Updated Documentation

The entire [Hawkular Metrics User Guide](http://www.hawkular.org/docs/components/metrics/index.html) has been rewritten and it is now accessible from the top menu of [Hawkular.org](https://hawkular.org). The new guide has extensive documentation about metric types, query and tagging capabilities along lots of examples. Thank you [@jsanda](https://github.com/jsanda) for this amazing update!


### Java Client (Experimental)

Thanks to an effort started by the [Hawkular QE](https://github.com/hawkular-qe) organization, Hawkular Metrics now has an official [Java client](https://github.com/hawkular/hawkular-client-java). The repository has been fully transferred to Hawkular community where will be maintained going forward. The client is now at an experimental alpha stage and we expect to polish the API and internals in the coming months.

A big thank you goes to [@jkandasa](https://github.com/jkandasa)  and [@vnugent](https://github.com/vnugent) for creating and the maintaining the project until now. [@jkandasa](https://github.com/jkandasa) will continue to serve as an active contributor and core member.


### Blog Posts & Articles

Here are some recently published Metrics related blog posts and articles from around the Hawkular community:

1. [Monitoring JVM applications with jmxtrans](http://www.hawkular.org/blog/2016/04/19/jmxtrans-to-hawkular-metrics.html) by [@tsegismont](https://github.com/tsegismont)
1. [Collecting Metrics from Prometheus Endpoints](http://www.hawkular.org/blog/2016/04/22/collecting-metrics-from-prometheus-endpoints.html) by [@jmazzitelli](https://github.com/jmazzitelli)
1. [Hawkular Data Mining 0.1.0.Final Released](http://www.hawkular.org/blog/2016/04/21/datamining-first-release.html) by [@pavolloffay](https://github.com/pavolloffay)


### Hawkular Metrics Clients

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.15.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/browse/HWKMETRICS/fixforversion/12329846

A big "Thank  you" goes to John Sanda, Thomas Segismont, Mike  Thompson, Matt Wringe, Michael Burman, and Heiko Rupp for their project contributions.
