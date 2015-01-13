title=Other Services
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

### EC2

The [dump-instances](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/dump-instances.html) mojo will dump the current EC2 instances and their IP Addresses:

    $ mvn -Pdeploy beanstalk:dump-instances
    [INFO] Scanning for projects...
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building beanstalker-basic 0.0.1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:dump-instances (default-cli) @ beanstalker-basic ---
    [INFO] Looking up for beanstalk-mywebapp.elasticbeanstalk.com
    [INFO]  * i-04616268: 54.211.38.189
    [INFO] SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 16.157s
    [INFO] Finished at: Sun Sep 15 14:50:17 BRT 2013
    [INFO] Final Memory: 12M/100M
    [INFO] ------------------------------------------------------------------------
    $ 

### Route 53

The [beanstalk:bind-domains](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/bind-domains-mojo.html) will bind the current Elastic Load Balancer as an alias. In the example below, Route 53 Zone Id Z3DJ4DL0DIEEJA (for modafocas.org) will be assigned as services.modafocas.org:
    
    $ mvn beanstalk:bind-domains -Dbeanstalk.domains=services.modafocas.org:Z3DJ4DL0DIEEJA
    
It is also possible to bind the root domain into it:

    $ mvn beanstalk:bind-domains -Dbeanstalk.domains=modafocas.org
    
### Up Next

See [common troubleshooting steps](troubleshooting.html)

[ back to top ](index.html)
