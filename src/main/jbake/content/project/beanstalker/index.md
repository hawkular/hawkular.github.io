title=ingenieux Beanstalker Docs Hub
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~

ingenieux Beanstalker is our set of [Apache Maven](http://maven.apache.org/) plugins for [Amazon Web Services](http://aws.amazon.com) (AWS), which lets you effectively use Maven to:

  * Manage [AWS Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/) Applications
  * Integrate your build with SimpleDB, S3 and CloudFront

### Getting Started

In order to effectively use beanstalker, you need to have a basic understanding of [Apache Maven](http://maven.apache.org/) and [AWS Elastic Beanstalk](http://aws.amazon.com/elasticbeanstalk/).

#### Basic Usage

Here are the basic beanstalker usage instructions:

  * [Configuring your AWS Credentials](aws-config.html)
  * [Configuring your pom](pom-config.html) or [Using the Archetype](using-the-archetype.html)
  * Deploying your Application, [using git](deploying-using-git.html) or [using s3](deploying-using-s3.html)
  * [Managing Versions](managing-versions.html)
  * [Managing Environments](managing-environments.html)
  * [Other Services Features (EC2 and Route53)](other-services.html)

#### Intermediary Level

Once you've gotten the essentials, you can:

  * Manage Environment Configuration
  * Using AWS Elastic Beanstalk Configuration Files

#### Advanced

  * Zero Downtime Deployments
  * Using CloudFront
  * Using SimpleDB

### Reference

Use these as reference URLs:

  * [Mojo Reference](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/plugin-info.html)
  * [Source Code Repository](http://bitbucket.org/aldrinleal/beanstalker)
    * [GitHub Mirror](http://github.com/ingenieux/beanstalker)
  * [Issue Tracking is Kept on Github](http://github.com/ingenieux/beanstalker/issues)
  * [Plugin Information (Maven Generated)](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/plugin-info.html)
  * [AWS Elastic Beanstalk Developer Guide](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/Welcome.html)

### Troubleshooting beanstalker

See the [troubleshooting page](troubleshooting.html) and [Frequently Asked Questions](faq.html)

### Support Beanstalker

beanstalker was created to solve my problems. If you find it useful, see [Donate to beanstalker](http://beanstalker.ingenieux.com.br/donate.html)

### Huge Thanks Goes To

Gratitude is best served warm. I'd like to say huge thanks to:

  * [Andrei Pozolotin](http://github.com/carrot-garden), for being the very first beanstalker user
  * [Alexander Bertram from BeDataDriven](http://www.bedatadriven.com/), for actually making me happy to know that beanstalker is used from a Humanitarial Perspective
  * [Yegor Bugayenko](http://github.com/yegor256) for Friendship, Numismatics, replace-environment, CloudFront, and [even some competition](http://www.jcabi.com/jcabi-beanstalk-maven-plugin/)
  * [Jon Marston](https://github.com/marstonstudio/) from [EnglishCentral](http://www.englishcentral.com/), for feedback and catching some heisenbugs 
  * [Keith Childers from Mentorgraphics](http://mentor.com/), for general ideas, chitchat and testing
  * [Ofir Nachmani](http://www.iamondemand.com) and the folks at [Newvem](http://newvem.com/), for letting me try many wild ideas with beanstalker :)
  
Besides that, beanstalker development is powered by OSS Licenses offered by:

  * Jetbrains, for [IntelliJ Idea](http://www.jetbrains.com/idea/)
  * [JRebel](http://bit.ly/18Wa3HK)

As for tools, we're huge fans of:

  * [Newvem](http://www.newvem.com/), for general advice and AWS Usage Monitoring
  * [Papertrail](https://papertrailapp.com/?thank=cffa7e), for Being Awesome on my Log Collecting
  * [CopperEgg](http://copperegg.com/copperegg-signup/pro/?utm_source=00QC000001A3DHFMA3), ditto, but for Server Metrics

