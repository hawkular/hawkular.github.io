title=Hawkular Metrics 0.17.0 - Release
author=Stefan Negrea
date=2016-07-06
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.17.0 of Hawkular Metrics. This release is anchored by performance enhancements and new Grafana Datasource Plugin.

Here is a list of major changes:

1. **Grafana Datasource Plugin - Experimental**
    - A new Grafana 3 datasource plugin is now available for Hawkular Metrics. This plugin integrates natively via the REST API.
    - For downloads and installation instructions please visit [Hawkular Datasource for Grafana](https://github.com/hawkular/hawkular-grafana-datasource)
    - The plugin is developed as an independent project and contributions are welcomed.
1. **InfluxDB API - DEPRECATED**
    - The InfluxDB API has been deprecated and will be removed in the upcoming release.
    - This was an addition to make project integrations easier. As the REST interface matured, the role of the InfluxDB compatibility interface was reduced only serve as the Grafana interface. With the release of the native Grafana plugin, this is no longer needed.
    - For more details: [HWKMETRICS-411](https://issues.jboss.org/browse/HWKMETRICS-411)
1. **Fetching Raw Data - Multiple Metrics - Experimental**
    - Prior to this release, it was possible to only fetch raw data points for a single metric. This release added `POST */query` endpoint that allows querying for raw data points for multiple metrics.
    - The endpoints are:
      - `POST /hawkular/metrics/gauges/raw/query`
      - `POST /hawkular/metrics/counters/raw/query`
      - `POST /hawkular/metrics/counters/rates/query`
      - `POST /hawkular/metrics/strings/raw/query`
      - `POST /hawkular/metrics/availability/raw/query`
      - `POST /hawkular/metrics/metrics/raw/query`
    - The endpoint accepts a list of metrics ids and allows filtering by providing start time, end time, sort order and limit.
    - For more details: [HWKMETRICS-393](https://issues.jboss.org/browse/HWKMETRICS-393)
1. **Performance Enhancements**
    - Two Cassandra driver settings (maxConnectionsPerHost and maxRequestsPerConnection) are now user configurable. Part of the update, the default values have been increased from the driver defaults. The new defaults had a significant performance boost for a simple test deployment. The settings are configurable to allow users to optimize driver behavior for larger Hawkular Metrics deployments. ([HWKMETRICS-430](https://issues.jboss.org/browse/HWKMETRICS-430))
    - On Linux deployments, the Cassandra driver uses  Netty native epoll ([HWKMETRICS-418](https://issues.jboss.org/browse/HWKMETRICS-418))
1. **Cassandra**
    - Fixed an issue with schema upgrades present in Hawkular Metrics 0.15.0 and 0.16.0. We recommend upgrading from previous versions directly to 0.17.0. For more details: [HWKMETRICS-425](https://issues.jboss.org/browse/HWKMETRICS-425)
    - Cassandra 3.7 is now the supported version of Cassandra. Support has been deprecated for Cassandra 3.5.


### Hawkular Metrics Clients
* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java



### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.17.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/browse/HWKMETRICS/fixforversion/12330692


A big "Thank  you" goes to John Sanda, Thomas Segismont, Mike  Thompson, Matt Wringe, Michael Burman, and Heiko Rupp for their project contributions.
