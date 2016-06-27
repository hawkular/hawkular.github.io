title=Hawkular Metrics 0.16.0 - Release
author=Stefan Negrea
date=2016-06-01
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.16.0 of Hawkular Metrics. This release is anchored by overall enhancements in the API and updates to String metric type.


 Here is a list of major changes:

1. **String Metric Type - Enhancements**
    - `/strings` endpoint was enhanced with querying capabilities similar to other metric types, including tag related features ([HWKMETRICS-402](https://issues.jboss.org/browse/HWKMETRICS-402))
    - The endpoints under `/strings` are still experimental, so changes which break backwards compatibility could be introduced in future releases. The experimental tag allows time for feedback to better determine what the API should be.
1. **`*/stats` & `*/raw` Replace `*/data`** - **second deprecation warning!**
    - `*/data` has been **deprecated** and functionality split into two single purpose endpoints, this is applicable for all metric types (gauge, counter, availability, and string)
    - `*/stats` endpoints return bucketed, statistical or query-time aggregated data
    - `*/raw` endpoints accept and return raw data for a metric
    - Please update your code to use the new endpoints and follow the release notes for more details regarding removal.
    - For more details: [HWKMETRICS-24](https://issues.jboss.org/browse/HWKMETRICS-24), [HWKMETRICS-57](https://issues.jboss.org/browse/HWKMETRICS-57)
1. **REST API Updates**
    - Empty buckets are now reported with default values and no samples ([HWKMETRICS-345](https://issues.jboss.org/browse/HWKMETRICS-345))
    - Rate of change stats can be retrieved for Gauge metrics. This feature was exclusive for Counter metrics but was expanded to Gauge metrics. The rates are computed at query time based on stored data ([HWKMETRICS-365](https://issues.jboss.org/browse/HWKMETRICS-365))
    - Min and max timestamps of stored datapoints are now returned when querying for metric definitions ([HWKMETRICS-383](https://issues.jboss.org/browse/HWKMETRICS-383))
    - The endpoint for fetching rates now supports standard query parameters and sort behavior ([HWKMETRICS-390](https://issues.jboss.org/browse/HWKMETRICS-390))
1. **Hawkular Metrics - Hawkular Services distribution**
    - Hawkular Metrics distribution build for inclusion in Hawkular Services is now independent of Hawkular Accounts.
    - Only for this distribution, the authentication is done at container level and tenant id header becomes required.
    - For more details: [HWKMETRICS-399](https://issues.jboss.org/browse/HWKMETRICS-399), [HWKMETRICS-401](https://issues.jboss.org/browse/HWKMETRICS-401)



### Hawkular Metrics Clients
* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java



### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.16.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/browse/HWKMETRICS/fixforversion/12330316


A big "Thank  you" goes to John Sanda, Thomas Segismont, Mike  Thompson, Matt Wringe, Michael Burman, and Heiko Rupp for their project contributions.
