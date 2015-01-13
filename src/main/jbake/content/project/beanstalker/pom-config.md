title=Basic POM Configuration
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

### Identify the Version

The version used when writing the docs was 1.1.1, but make sure its the latest version by looking on [search.maven.org](http://search.maven.org/#search%7Cga%7C1%7Cg%3A%22br.com.ingenieux%22%20AND%20a%3A%22beanstalk-maven-plugin%22)

### Add the Plugin

Start by Adding the Plugin in your pom.xml:

    <plugin>
        <groupId>br.com.ingenieux</groupId>
        <artifactId>beanstalk-maven-plugin</artifactId>
        <version>[plugin version]</version>
    </plugin>

### Declare the properties

While the beanstalk plugin's mojos allow embedding its config into the ```<configuration/>``` section, we recommend you use it by properties and profiles, since it allows more flexibility and finer control (like overriding from the Command Line):

    <properties>
        <beanstalk.applicationName>aws.amazon.com</beanstalk.applicationName>
        <beanstalker.region>sa-east-1</beanstalker.region>
    </properties>
    
Note the difference. If you're using all beanstalker plugins, the ```beanstalker.``` prefix is common. The prefix changes according to the plugin, where:

  * ```beanstalk``` is for the Beanstalk Maven Plugin
  * ```cloudfront``` is for the Cloudfront Maven Plugin
  * ```simpledb``` is for the SimpleDB Maven Plugin
  * ```mapreduce``` is for the MapReduce Maven Plugin

Here are the ```beanstalker``` properties:

  * ```beanstalker.serverId``` the Server Id to Use (see [AWS Configuration](aws-config.html))
  * ```beanstalker.verbose```: Set to true for Verbose Logging (AWS SDK + Internal Messages)
  * ```beanstalker.region```: Set to the region to use e.g. ```us-wast-1```. Defaults to us-east-1, and applies to beanstalk and cloudfront

The Basic Beanstalk Properties are:

  * ```beanstalk.applicationName```: The Elastic Beanstalk Application Name
  * ```beanstalk.cnamePrefix```: The CNAME Prefix to Lookup for an Environment
  * ```beanstalk.environmentName```: Used by create-environment and replace-environment
  
A basic pom might look as such:

    <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
             xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
        <modelVersion>4.0.0</modelVersion>
        <groupId>br.com.ingenieux</groupId>
        <artifactId>mywebapp</artifactId>
        <packaging>war</packaging>
        <version>0.0.1-SNAPSHOT</version>
        
        <properties>
          <beanstalk.applicationName>meuwebapp</beanstalk.applicationName>
          <beanstalk.cnamePrefix>mywebapp</beanstalk.cnamePrefix>
          <beanstalk.useStagingDirectory>true</beanstalk.useStagingDirectory>
        </properties>

        <dependencies>
            <dependency>
                <groupId>com.amazonaws</groupId>
                <artifactId>aws-java-sdk</artifactId>
                <version>1.5.5</version>
            </dependency>
            <dependency>
                <groupId>javax.servlet</groupId>
                <artifactId>servlet-api</artifactId>
                <version>2.5</version>
                <scope>provided</scope>
            </dependency>
        </dependencies>
        <build>
            <finalName>mywebapp</finalName>
            <plugins>
                <plugin>
                    <groupId>br.com.ingenieux</groupId>
                    <artifactId>beanstalk-maven-plugin</artifactId>
                    <version>1.1.1</version>
                </plugin>
            </plugins>
        </build>
    </project>

For a full reference, see the [beanstalk plugin property reference](ref-beanstalk-properties.html)
  
### Enclose Deployment Steps via Build Profiles

We strongly advise you to package beanstalk-deployment functionality into a build profile. For a full example, see the [Deploying using S3](deploying-using-s3.html) article.

### Up Next

How to [deploy using git](deploying-using-s3.html) (**preferred even if you don't use git as your SCM**) and/or [using s3](deploying-using-s3.html)

[ back to top ](index.html)
