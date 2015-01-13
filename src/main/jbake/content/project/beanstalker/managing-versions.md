title=Managing Versions
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

### Rolling Back a Version

You can also revert an environment to the previous version:

    $ mvn beanstalk:rollback-version
    [INFO] Scanning for projects...
    [INFO]
    [INFO] ------------------------------------------------------------------------
    [INFO] Building test-war 0.2.5-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO]
    [INFO] --- beanstalk-maven-plugin:0.2.5-SNAPSHOT:rollback-version (default-cli)
    @ test-war ---
    [INFO] environmentName / environmentId not defined. Lets try to get one, shall we?
    [INFO] Assigning a environment named default-0
    [INFO] Changing versionLabel for Environment[name=default-0; environmentId=null] from version 20110827080130 to version 20110827075731
    [INFO] SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 3.543s
    [INFO] Finished at: Sat Aug 27 08:08:59 GMT-03:00 2011
    [INFO] Final Memory: 5M/15M
    [INFO] ------------------------------------------------------------------------

### Cleaning Up Previous Versions

As each deploy creates a new version, sometimes it is interesting to cleanup previous versions. Beanstalker does that, via clean-previous-versions.

There are two options to pick: daysToKeep or versionsToKeep. Either way, first it simulates the execution.

    $ mvn beanstalk:clean-previous-versions -Dbeanstalk.versionsToKeep=1
    [INFO] Scanning for projects...
    [INFO]
    [INFO] ------------------------------------------------------------------------
    [INFO] Building test-war 0.2.5-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO]
    [INFO] --- beanstalk-maven-plugin:0.2.5-SNAPSHOT:clean-previous-versions (default-cli) @ test-war ---
    [WARNING] The POM for org.codehaus.jackson:jackson-core-asl:jar:1.7.0-SNAPSHOT-20101126.221009-1 is missing, no dependency information available
    log4j:WARN No appenders could be found for logger (org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager).
    log4j:WARN Please initialize the log4j system properly.
    [INFO] VersionLabel 20110827080130 is bound to environment default-0 - Skipping
    it
    [INFO] Must delete version: 20110827075312
    [INFO] Deleted 0 versions.
    [INFO] SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 3.204s
    [INFO] Finished at: Sat Aug 27 08:12:41 GMT-03:00 2011
    [INFO] Final Memory: 5M/15M
    [INFO] ------------------------------------------------------------------------

In order to actually delete the version, supply dryRun as false:

    $ mvn beanstalk:clean-previous-versions -Dbeanstalk.versionsToKeep=1 -Dbeanstalk.dryRun=false
    [INFO] Scanning for projects...
    [INFO]
    [INFO] ------------------------------------------------------------------------
    [INFO] Building test-war 0.2.5-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO]
    [INFO] --- beanstalk-maven-plugin:0.2.5-SNAPSHOT:clean-previous-versions (default-cli) @ test-war ---
    [WARNING] The POM for org.codehaus.jackson:jackson-core-asl:jar:1.7.0-SNAPSHOT-20101126.221009-1 is missing, no dependency information available
    log4j:WARN No appenders could be found for logger (org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager).
    log4j:WARN Please initialize the log4j system properly.
    [INFO] VersionLabel 20110827080130 is bound to environment default-0 - Skipping
    it
    [INFO] Must delete version: 20110827075312
    [INFO] Deleted 1 versions.
    [INFO] SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 4.249s
    [INFO] Finished at: Sat Aug 27 08:13:31 GMT-03:00 2011
    [INFO] Final Memory: 5M/15M
    [INFO] ------------------------------------------------------------------------

### Up Next

See [how to manage environments](managing-environments.html)

[ back to top ](index.html)
