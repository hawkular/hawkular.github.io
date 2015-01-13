title=Managing Environments
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

### Creating an Environment

Use [create-enviroment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/dump-instances-mojo.html):

    $ mvn beanstalk:create-environment -Dbeanstalk.environmentName=<environmentName> -Dbeanstalk.cnamePrefix=<cnamePrefix> -Dbeanstalk.solutionStack="64bit Amazon Linux running Tomcat 7"

### Listing Environments

Use [describe-enviroments](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/describe-environments-mojo.html):

    $ mvn -Pdeploy beanstalk:describe-environments
    [INFO] Scanning for projects...
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building beanstalker-basic 0.0.1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:describe-environments (default-cli) @ beanstalker-basic ---
    [INFO] SUCCESS
    [INFO]  * environments: [{EnvironmentName: beanstalk-myotherwebapp, EnvironmentId: e-ws2p6jcva7,
    ApplicationName: mywebapp, VersionLabel: 20130915151102,
    SolutionStackName: 32bit Amazon Linux running Tomcat 7, Description: beanstalker-basic,
    EndpointURL: awseb-e-w-AWSEBLoa-11OXC0ZT0HV1B-369035512.us-east-1.elb.amazonaws.com,
    CNAME: beanstalk-myotherwebapp.elasticbeanstalk.com, DateCreated: Sun Sep 15 15:49:52 BRT 2013,
    DateUpdated: Sun Sep 15 15:50:37 BRT 2013, Status: Launching, Health: Grey, },
    {EnvironmentName: myotherwebapp, EnvironmentId: e-wjprsthqyx, ApplicationName: mywebapp,
    VersionLabel: 20130915151102, SolutionStackName: 32bit Amazon Linux running Tomcat 7,
    Description: beanstalker-basic,
    EndpointURL: awseb-e-w-AWSEBLoa-14H096FBU3YAZ-1574966742.us-east-1.elb.amazonaws.com,
    CNAME: myotherwebapp.elasticbeanstalk.com, DateCreated: Sun Sep 15 15:47:54 BRT 2013,
    DateUpdated: Sun Sep 15 15:51:43 BRT 2013, Status: Launching, Health: Grey, },
    {EnvironmentName: mywebapp, EnvironmentId: e-c4zhpqjk9r, ApplicationName: mywebapp,
    VersionLabel: 20130915151102, SolutionStackName: 32bit Amazon Linux running Tomcat 7,
    Description: beanstalker-basic Maven Webapp,
    EndpointURL: awseb-e-c-AWSEBLoa-MU7JKWGXRU6W-652123616.us-east-1.elb.amazonaws.com,
    CNAME: beanstalk-mywebapp.elasticbeanstalk.com,
    DateCreated: Sun Sep 15 13:29:05 BRT 2013, DateUpdated: Sun Sep 15 15:12:04 BRT 2013,
    Status: Ready, Health: Green, }] [class: List]
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 13.822s
    [INFO] Finished at: Sun Sep 15 15:52:47 BRT 2013
    [INFO] Final Memory: 10M/104M
    [INFO] ------------------------------------------------------------------------
    
### Terminate an Environment

Use [terminate-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/terminate-environment-mojo.html):

    $ mvn beanstalk:terminate-environment -Dbeanstalk.cnamePrefix=mywebapp

### Tagging and Cloning an Environment

The [tag-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/tag-environment-mojo.html) will create a Conf

    $ mvn -Pdeploy -Dbeanstalk.cnamePrefix=beanstalk-mywebapp beanstalk:tag-environment
    [INFO] Scanning for projects...
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building beanstalker-basic 0.0.1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:tag-environment (default-cli) @ beanstalker-basic ---
    [INFO] Looking up for beanstalk-mywebapp.elasticbeanstalk.com
    [INFO] Created config template beanstalk-mywebapp-20130915-02 for environment e-c4zhpqjk9r
    [INFO] SUCCESS
    [INFO]  * solutionStackName: 32bit Amazon Linux running Tomcat 7 [class: String]
    [INFO]  * optionSettings: [] [class: List]
    [INFO]  * applicationName: mywebapp [class: String]
    [INFO]  * dateCreated: Sun Sep 15 15:34:41 BRT 2013 [class: Date]
    [INFO]  * templateName: beanstalk-mywebapp-20130915-02 [class: String]
    [INFO]  * dateUpdated: Sun Sep 15 15:34:41 BRT 2013 [class: Date]
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 13.644s
    [INFO] Finished at: Sun Sep 15 15:35:01 BRT 2013
    [INFO] Final Memory: 12M/100M
    [INFO] ------------------------------------------------------------------------
    aldrin@ao725-aldrin:~/projetos/sources/beanstalker-projects/beanstalker-basic-s3$
    
The name of the generated templateName, by default, is ```[environmentName]-YYYYMMDD-NN```, where NN increases from 1 to 99 if there's another one available.

You could launch an environment using this template name. In this case it accepts wildcards. If present, if will get all matching wildcards, sort, and pick the first in **REVERSE ASCII-BETICAL ORDER**:

    $ mvn -Pdeploy \
        beanstalk:create-environment
        -Dbeanstalk.environmentName=beanstalk-myotherwebapp
        -Dbeanstalk.cnamePrefix=beanstalk-myotherwebapp
        -Dbeanstalk.templateName=beanstalk-mywebapp-20130915-*
        -Dbeanstalk.versionLabel=20130915151102
    [INFO] Scanning for projects...
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building beanstalker-basic 0.0.1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:create-environment (default-cli) @ beanstalker-basic ---
    [INFO] Template Name beanstalk-mywebapp-20130915-* contains wildcards. A Lookup is needed
    [INFO] Selecting: beanstalk-mywebapp-20130915-02
    [INFO] SUCCESS
    [INFO]  * versionLabel: 20130915151102 [class: String]
    [INFO]  * status: Launching [class: String]
    [INFO]  * applicationName: mywebapp [class: String]
    [INFO]  * health: Grey [class: String]
    [INFO]  * dateUpdated: Sun Sep 15 15:49:52 BRT 2013 [class: Date]
    [INFO]  * environmentId: e-ws2p6jcva7 [class: String]
    [INFO]  * solutionStackName: 32bit Amazon Linux running Tomcat 7 [class: String]
    [INFO]  * CNAME: beanstalk-myotherwebapp.elasticbeanstalk.com [class: String]
    [INFO]  * description: beanstalker-basic [class: String]
    [INFO]  * dateCreated: Sun Sep 15 15:49:52 BRT 2013 [class: Date]
    [INFO]  * environmentName: beanstalk-myotherwebapp [class: String]
    [INFO]  * templateName: beanstalk-mywebapp-20130915-02 [class: String]
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 20.439s
    [INFO] Finished at: Sun Sep 15 15:50:11 BRT 2013
    [INFO] Final Memory: 10M/104M
    [INFO] ------------------------------------------------------------------------

### Importing Environment Config

The [dump-environment-settings](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/dump-environment-settings-mojo.html) will dump in a format suitable for inclusion as Project Properties:

    $ mvn -Pdeploy beanstalk:dump-environment-settings -Dbeanstalk.cnamePrefix=beanstalk-mywebapp
    [INFO] Scanning for projects...
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building beanstalker-basic 0.0.1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:dump-environment-settings (default-cli) @ beanstalker-basic ---
    [INFO] Looking up for beanstalk-mywebapp.elasticbeanstalk.com
    [INFO] Adding property beanstalk.env.aws.elb.loadbalancer.LoadBalancerHTTPPort
    [INFO] Adding property beanstalk.env.aws.autoscaling.launchconfiguration.ImageId
    [INFO] Ignoring property beanstalk.securityGroups(value=awseb-e-c4zhpqjk9r-stack-AWSEBSecurityGroup-1QCDI7FMCGSHS) due to containing references to the environment id
    [INFO] Adding property beanstalk.env.aws.autoscaling.launchconfiguration.EC2KeyName
    [INFO] Adding property beanstalk.env.aws.elasticbeanstalk.control.LaunchType
    #elastic beanstalk environment properties for mywebapp
    #Sun Sep 15 15:57:43 BRT 2013
    beanstalk.keyName=aldrin@leal.eng.br
    beanstalk.env.aws.elasticbeanstalk.control.LaunchType=Migration
    beanstalk.env.aws.elb.loadbalancer.LoadBalancerHTTPPort=80
    beanstalk.imageId=ami-1a249873
    [INFO] SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 15.286s
    [INFO] Finished at: Sun Sep 15 15:57:43 BRT 2013
    [INFO] Final Memory: 12M/100M
    [INFO] ------------------------------------------------------------------------
    aldrin@ao725-aldrin:~/projetos/sources/beanstalker-projects/beanstalker-basic-s3$ 

By default, it only outputs variables not present in the profile (or different). Use -Dbeanstalk.changedOnly=false to dump everything:

It will also dump in a format suitable for Elastic Beanstalk Configuration Files (once fixed):

    $ mvn -Pdeploy beanstalk:dump-environment-settings -Dbeanstalk.cnamePrefix=beanstalk-mywebapp -Dbeanstalk.outputFileFormat=yaml

### Up Next

How to [integrate with other AWS Services (EC2, Route 53)](other-services.html)

[ back to top ](index.html)
