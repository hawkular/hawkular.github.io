title=Hawkular Metrics 0.18.0 - Release
author=Stefan Negrea
date=2016-08-01
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.18.0 of Hawkular Metrics. This release is anchored by performance enhancements and a new internal job scheduler.

Here is a list of major changes:

1. **InfluxDB API - REMOVED**
    - The InfluxDB API has been removed from the code base.
    - This was an addition to make project integrations easier. As the REST interface matured, the role of the InfluxDB compatibility interface was reduced only serve as the Grafana interface. With the release of the native Grafana plugin, this was no longer needed.
    - For more details: [HWKMETRICS-431](https://issues.jboss.org/browse/HWKMETRICS-431)
1. **Fetching Stats Data - Multiple Metrics - Experimental**
    - Prior to this release, it was possible to only fetch stats for a single type metric. This release added `POST /metrics/stats/query` endpoint that allows querying for mixed stats for multiple metrics.
    - The endpoint accepts a list of metrics ids and allows filtering by providing start time, end time, sort order and limit, as well as the typical stats options such as bucket duration, number of buckets, or percentiles.
    - For more details: [HWKMETRICS-424](https://issues.jboss.org/browse/HWKMETRICS-424)
1. **Performance Enhancements**
    - All the JAX-RS handlers are now singletons. This reduces the GC pressure and was relatively simple change since the code was completely stateless. This lead to a significant performance increase. For more details: [HWKMETRICS-437](https://issues.jboss.org/browse/HWKMETRICS-437)
1. **Job Scheduler - New Implementation - Experimental**
    - The new internal job scheduler is by far the biggest contribution in this release.
    - This is the foundation for a number of features that will make their way into upcoming releases; a few examples are metric aggregates, adjustable data retention, or complex data purges.
    - The implementation keeps the Hawkular Metrics server stateless so scaling will be just as easy going forward, with zero additional configuration.
    - The job scheduler will be used only for internal tasks.
    - For more details: [HWKMETRICS-360](https://issues.jboss.org/browse/HWKMETRICS-360),  [HWKMETRICS-375](https://issues.jboss.org/browse/HWKMETRICS-375)


### Hawkular Metrics Clients
* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java



### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.18.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/browse/HWKMETRICS/fixforversion/12330870


A big "Thank  you" goes to John Sanda, Thomas Segismont, Mike  Thompson, Matt Wringe, Michael Burman, and Heiko Rupp for their project contributions.
