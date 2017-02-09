title=Hawkular Metrics 0.24.0 - Release
author=Stefan Negrea
date=2017-02-08
type=post
tags=blog, metrics, release
status=published
~~~~~~

I am happy to announce release 0.24.0 of Hawkular Metrics. This release is anchored by a new tag query language and general stability improvements.

Here is a list of major changes:

* **Tag Query Language**
    * A query language was added to support complex constructs for tag based queries for metrics
    * The old tag query syntax is deprecated but can still be used; the new syntax takes precedence
    * The new syntax supports:
        * logical operators: `AND`,`OR`
        * equality operators: `=`, `!=`
        * value in array operators: `IN`, `NOT IN`
        * existential conditions:
            * tag without any operator is equivalent to `= '*'`
            * tag preceded by the NOT operator matches only instances without the tag defined
        * all the values in between single quotes are treated as regex expressions
        * simple text values do not need single quotes
        * spaces before and after equality operators are not necessary
    * For more details please see: [Pull Request 725](https://github.com/hawkular/hawkular-metrics/pull/725), [HWKMETRICS-523](https://issues.jboss.org/browse/HWKMETRICS-523)
    * Sample queries:

```
a1 = 'bcd' OR a2 != 'efg'
a1='bcd' OR a2!='efg'
a1 = efg AND ( a2 = 'hijk' OR a2 = 'xyz' )
a1 = 'efg' AND ( a2 IN ['hijk', 'xyz'] )
a1 = 'efg' AND a2 NOT IN ['hijk']
a1 = 'd' OR ( a1 != 'ab' AND ( c1 = '*' ) )
a1 OR a2
NOT a1 AND a2
a1 = 'a' AND NOT b2
a1 = a AND NOT b2
```

* **Performance**
    * Updated compaction strategies for data tables from size tiered compaction (STCS) to  time window compaction (TWCS) ([HWKMETRICS-556](https://issues.jboss.org/browse/HWKMETRICS-556))
    * Jobs now execute on RxJava's I/O scheduler thread pool
([HWKMETRICS-579](https://issues.jboss.org/browse/HWKMETRICS-579))
* **Administration**
    * The admin tenant is now configurable via `ADMIN_TENANT` environment variable ([HWKMETRICS-572](https://issues.jboss.org/browse/HWKMETRICS-572))
    * Internal metric collection is disabled by default ([HWKMETRICS-578](https://issues.jboss.org/browse/HWKMETRICS-578))
    * Resolved a null pointer exception in DropWizardReporter due to admin tenant changes ([HWKMETRICS-577](https://issues.jboss.org/browse/HWKMETRICS-577))
* **Job Scheduler**
    * Resolved an issue where the compression job would stop running after a few days  ([HWKMETRICS-564](https://issues.jboss.org/browse/HWKMETRICS-564))
    * Updated the job scheduler to renew job locks during job execution ([HWKMETRICS-570](https://issues.jboss.org/browse/HWKMETRICS-570))
    * Updated the job scheduler to reacquire job lock after server restarts  ([HWKMETRICS-583](https://issues.jboss.org/browse/HWKMETRICS-583))
* **Hawkular Alerting - Major Updates**
    * Resolved several issues where schema upgrades were not applied after the initial schema install ([HWKALERTS-220](https://issues.jboss.org/browse/HWKALERTS-220), [HWKALERTS-222](https://issues.jboss.org/browse/HWKALERTS-222))


**Hawkular Alerting - Included**

* Version [1.5.1](https://issues.jboss.org/projects/HWKALERTS/versions/12333065)
* Project details and repository: [Github](https://github.com/hawkular/hawkular-alerts)
* Documentation: [REST API](http://www.hawkular.org/docs/rest/rest-alerts.html), [Examples](https://github.com/hawkular/hawkular-alerts/tree/master/examples), [Developer Guide](http://www.hawkular.org/community/docs/developer-guide/alerts.html)

**Hawkular Metrics Clients**

* Python: https://github.com/hawkular/hawkular-client-python
* Go: https://github.com/hawkular/hawkular-client-go
* Ruby: https://github.com/hawkular/hawkular-client-ruby
* Java: https://github.com/hawkular/hawkular-client-java


### Release Links

* Github Release: https://github.com/hawkular/hawkular-metrics/releases/tag/0.24.0
* JBoss Nexus Maven artifacts: http://origin-repository.jboss.org/nexus/content/repositories/public/org/hawkular/metrics/
* Jira release tracker: https://issues.jboss.org/projects/HWKMETRICS/versions/12332966


A big "Thank  you" goes to John Sanda, Matt Wringe, Michael Burman, Joel Takvorian, Jay Shaughnessy, Lucas Ponce, and Heiko Rupp for their project contributions.
