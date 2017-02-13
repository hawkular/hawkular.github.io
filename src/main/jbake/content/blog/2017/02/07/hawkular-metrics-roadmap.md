title=Hawkular Metrics - 2017 Roadmap
author=Stefan Negrea
date=2017-02-07
type=post
tags=blog, metrics, release
status=published
~~~~~~

**About**

Just like last year, Hawkular Metrics contributors have been working for the past few weeks on the roadmap for the upcoming year. The goal is to give clarity on the project direction, serve as a planning tool for releases, and show our strong commitment to open source.

For those not familiar with Hawkular Metrics, the project is a high performance and high availability storage engine for large volume metric data. Cassandra is the storage engine because of its flexible data model well suited for time-series data storage and linear scalability with no single point of failure. The distribution includes Hawkular Alerting, an alerts module responsible for defining conditions rules over data events and fire alerts that can be sent by several action plugins.

**Review - 2016**

First, let's review the progress against the roadmap set at the beginning of last year. Due to the competitive space for metrics, metrics storage, and alerting, the community had to constantly balance the plan execution while reacting to community requests. While the majority of goals set to accomplish were completed, there are some carried over to this year and some indefinitely postponed.

The project was updated to run on Cassandra 3.x in May ([release 0.15.0](https://github.com/hawkular/hawkular-metrics/releases/tag/0.15.0)). The native Grafana integration was released in July ([release 0.17.0](https://github.com/hawkular/hawkular-metrics/releases/tag/0.17.0)) and it is now an [independent project](https://github.com/hawkular/hawkular-grafana-datasource). And lastly, we improved the developer support by creating distributions that include Metrics, Alerting and Cassandra pre-deployed inside Wildlfly to make it extremely simple to download and get the project running.

The pre-computed aggregates were postponed to this year due to the major work done for compressing data at rest released in October ([release 0.20.0](https://github.com/hawkular/hawkular-metrics/releases/tag/0.20.0)). The histogram metrics were also carried-over to this year.

**Roadmap - 2017**


* **Administration & Management**
    * Add monitoring and management features for Cassandra and application server; the goal is to unify the configuration and management for Cassandra, Metrics and Alerting.
    * Provide diagnostics and error reports to administrators; automatic or on-demand,  scan the setup and find errors to help debug difficult problems
    * Allow automatic scaling of both Cassandra and application servers via the HPA in OpenShifts


* **Pre-computed [Aggregates](https://issues.jboss.org/browse/HWKMETRICS-580s) (carry-over from 2016)**
    * Needed to support long term data storage and retrieval for high volume metrics
    * Single metrics roll-ups are also the foundation for pre-computed multi-metric  aggregations, that goal is to work on this subsequent to single metric  roll-ups


* **Query Features**
    * Histogram metrics are fairly common in other time series databases. The plan is to add histogram metrics as a sub-metric to existing gauge metrics, analogous to what counter-rate metrics are counter metrics. It is common to do the calculations need for the histogram on the client side, but there are a lot of advantages to push the calculations to the server (carry-over from 2016)
    * Add query languages for both stats and tag based queries to enhance the query capabilities and simplify the API


* **Performance Improvements**
    * Improve the read  (query, stats, aggregates) an write (ingestion speed) performance of the system while reducing memory consumption, CPU consumption, and disk size (via compression)


* **Revamped Metrics Alerter**
    * The existing external alerter has limited query capability, the goal is to overhaul the query capability to allow more complex queries and time comparisons
    * Make the external alerter distributed


* **OpenShift Agent**
    * Develop the [agent](https://github.com/hawkular/hawkular-openshift-agent) as a replacement for Heapster to resolve long standing scalability issues with the current implementation
    * Add support for storing histograms


* **Documentation Improvements**
    * Make available API documentation for each release; this would resolve a long standing issue where the API documentation is not versioned, and only the current release has the documentation published on the Hawkular website
    * Publish performance reports related to disk size, memory consumption, CPU consumption, query throughput, and storage throughput


* **HPA Integration**
    * Provide an endpoint for Hawkular Metrics to be used by the HPA. This will allow any metric stored to be used for autoscaling components in OpenShift/Kubernetess


If you have any other suggestion or would like to contribute to the project, please contact us; feedback is more than welcomed.
