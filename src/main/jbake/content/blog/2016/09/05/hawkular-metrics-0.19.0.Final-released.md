title=Hawkular Metrics 0.19.0 - Release
author=Stefan Negrea
date=2016-09-05
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.19.0 of Hawkular Metrics. This release is anchored by performance enhancements and a lot of REST API enhancements.

Here is a list of major changes:

1. **REST API - Query Improvements**
    - It is now possible to use relative timestamps when querying for data via `+` or `-` added to timestamp parameters. When used, the timestamp is relative to the local system timestamp ([HWKMETRICS-358](https://issues.jboss.org/browse/HWKMETRICS-358), [HWKMETRICS-457](https://issues.jboss.org/browse/HWKMETRICS-457))
    - Querying for data from earliest available data point has been expanded to raw data queries for gauges and counters ([HWKMETRICS-435](https://issues.jboss.org/browse/HWKMETRICS-435))
    - `DELETE tenants/{id}` has been added to allow the deletion of an entire tenant ([HWKMETRICS-446](https://issues.jboss.org/browse/HWKMETRICS-446))
    - AvailabilityType is serialized as simple string in bucket data points ([HWKMETRICS-436](https://issues.jboss.org/browse/HWKMETRICS-436))
1. **Performance Enhancements**
    - The write performance has been increased by 10% across the board after reorganizing the meta-data internal indexes. ([HWKMETRICS-422](https://issues.jboss.org/browse/HWKMETRICS-422))
    - GZIP replaced LZ4 as the compression algorithm for the data table.  This produces anywhere between 60% to 70% disk usage savings over LZ4. ([HWKMETRICS-454](https://issues.jboss.org/browse/HWKMETRICS-454))
1. **Job Scheduler - Improvements**
    - The newly introduced internal job scheduler received several improvements and fixes; the main focus was to enhance the scalability and fault tolerance.
    - The job scheduler will be used only for internal tasks.
    - For more details: [HWKMETRICS-221](https://issues.jboss.org/browse/HWKMETRICS-221),  [HWKMETRICS-451](https://issues.jboss.org/browse/HWKMETRICS-451), [HWKMETRICS-453](https://issues.jboss.org/browse/HWKMETRICS-453), [HWKMETRICS-94](https://issues.jboss.org/browse/HWKMETRICS-94)


### Hawkular Metrics Clients
* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java



### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.19.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/browse/HWKMETRICS/fixforversion/12331192


A big "Thank  you" goes to John Sanda, Thomas Segismont, Mike  Thompson, Matt Wringe, Michael Burman, Joel Takvorian, and Heiko Rupp for their project contributions.
