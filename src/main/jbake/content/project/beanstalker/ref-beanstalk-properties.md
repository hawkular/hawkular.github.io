title=Beanstalk Plugin Property Reference
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

### Properties Available to All Mojos

  * ```beanstalker.region```: AWS Region to Use e.g. ```sa-east-1``` (default: ```us-east-1```)
  * ```beanstalker.serverId```: Server Id e.g. ```myaccount``` (see [AWS Configuration](aws-config.html))

### Environment Related Properties

Here's a quick rundown on the most critical environment properties ([create-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/create-environment-mojo.html), [put-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/create-environment-mojo.html), [update-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/create-environment-mojo.html), and [replace-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/create-environment-mojo.html):

  * ```beanstalk.cnamePrefix```: cnamePrefix of the environment (sans the ```.elasticbeanstalk.com```)
  * ```beanstalk.environmentName```: Environment Name
  * ```beanstalk.solutionStack```: Solution Stack e.g. ```64bit Amazon Linux running Tomcat 7```

#### Configuration Option Settings:

Most of those exist given their common occurrence *OR* the existence of Spaces, making it difficult to map as an ordinary AWS Configuration Option Name. In general, they're mapped as 'beanstalk.env.aws.namespace.something.then.OptionName', but those below are aliased:

  * ```beanstalk.keyName```: EC2 Key Name to use (aws:autoscaling:launchconfiguration/EC2KeyName)
  * ```beanstalk.applicationHealthCheckURL```: Health Check URL e.g. ```/services/api/v1/health/check``` (aws:elasticbeanstalk:application/Application Health Check URL)
  * ```beanstalk.automaticallyTerminateUnhealthyInstances```: Automatically Terminate Unhealthy Instances (aws:elasticbeanstalk:monitoring/Automatically Terminate Unhealthy Instances)
  * ```beanstalk.iamInstanceProfile```: IAM Instance Profile Role Name (aws:autoscaling:launchconfiguration/IAMInstanceProfile)
  * ```beanstalk.instanceType```: EC2 Instance Type e.g. ```m1.small``` (aws:autoscaling:launchconfiguration/InstanceType)
  * ```beanstalk.environmentType```: Set to ```SingleInstance``` to use Single Instance instead of ELB (aws:elasticbeanstalk:environment/EnvironmentType)
  * ```beanstalk.imageId```: Image Id to Use e.g. ```ami-95baf4fc``` (aws:autoscaling:launchconfiguration/Image Id)
  * ```beanstalk.securityGroups```: Security Groups of the Auto Scaling Group e.g. ```default, page-service```" (aws:autoscaling:launchconfiguration/SecurityGroups)
  * ```beanstalk.stickinessPolicy```: Cookie Stickiness Policy (aws:elb:policies/Stickiness Policy)
  * ```beanstalk.stickinessCookieExpiration```: Cookie Expiration (aws:elb:policies/Stickiness Cookie Expiration)
  * ```beanstalk.availabilityZones```: Custom Availability Zones eg. ```us-east-1b, us-east-1d``` (aws:autoscaling:asg/Custom Availability Zones)
  * ```beanstalk.notificationProtocol```: Notification Protocol eg. ```e-mail``` (aws:elasticbeanstalk:sns:topics/Notification Protocol)

For more details, see (Option Values)[http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html] in the Development Guide

### System Properties

  * ```beanstalk.env.aws.elasticbeanstalk.application.environment.X```: System Property ```X```
  
See [Using Custom Environment Properties with AWS Elastic Beanstalk](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create_deploy_Java.managing.html) for more detail. It is also possible to set them from the cli using beanstalk:set-property mojo:

    $ mvn beanstalk:set-property -Dbeanstalk.envName=X -Dbeanstalk.envValue=Y

### Big TODO

Completely map Option Values, which means:

  * aws:autoscaling:asg:
    * Availability Zones
    * MinSize
    * MaxSize
  * MonitoringInterval
  * aws:autoscaling:launchconfiguration:
    * SSHSourceRestriction
    * BlockDeviceMappings
  * aws:elasticbeanstalk:sns:topics:
    * Notification Endpoint
    * Notification Topic ARN
    * Notification Topic Name
  * aws:elasticbeanstalk:container:tomcat:jvmoptions:
    * JVM Options
    * Xmx
    * XX:MaxPermSize
    * Xms
  * aws:elasticbeanstalk:container:tomcat:jvmoptions
  * aws:elasticbeanstalk:hostmanager:
    * LogPublicationControl

### Finding Settings for a Particular Mojo

  * See the [Plugin Doc Page](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/plugin-info.html) for more details
  * Or use ```mvn beanstalk:help -Ddetail [-Dgoal=<goal>]```

### References:

  * The [AbstractNeedsEnvironmentMojo](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/xref/br/com/ingenieux/mojo/beanstalk/AbstractNeedsEnvironmentMojo.html) contains the aliases between the property name and Elastic Beanstalk Configuration Option Settings
  * See also the (Option Values)[http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html] reference in the [AWS Elastic Beanstalk Developer Guide](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/)
  
### Up Next

  * See the [Frequently Asked Questions](faq.html)

[ back to top ](index.html)
