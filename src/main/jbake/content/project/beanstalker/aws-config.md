title=AWS Configuration
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

In order to use AWS Elastic Beanstalk, you need a set of AWS Credentials. They are a pair of Strings, named:

  * AWS Access Key Id: A 20-length all-uppercase and numbers string, like ```022QF06E7MXBSH9DHM02```
  * AWS Secret Key: a 40-length String with alpha, numbers, slash and plus, like ```kWcrlUX5JEDGM/LtmEENI/aVmYvHNif5zB+d9+ct```

### Setting Up Credentials

First, review the [Maven Docs on Password Encryption](http://maven.apache.org/guides/mini/guide-encryption.html) and create your ```settings-security.xml``` and ```settings.xml``` accordingly

Encrypt your AWS Secret Key. Here's the basic command (replace with your secret key):

    $ mvn -ep kWcrlUX5JEDGM/LtmEENI/aVmYvHNif5zB+d9+ct
    {2A16DoTRdiUHn7djDvmu4O1E1JrYg5avldQ3Khv8B4jk4MzLpzJeSrabGG8aBSSfa3b2PAvfLvVCwsl0MaRmmA==}

Next, create a server entry with your key and encrypted password:

    <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                          http://maven.apache.org/xsd/settings-1.0.0.xsd">
      <servers>
        <server>
        <id>aws.amazon.com</id>
          <username>022QF06E7MXBSH9DHM02</username>
          <password>{2A16DoTRdiUHn7djDvmu4O1E1JrYg5avldQ3Khv8B4jk4MzLpzJeSrabGG8aBSSfa3b2PAvfLvVCwsl0MaRmmA==}</password>
        </server>
      </servers>
    </settings>

### Having Multiple Servers Defined

If you have multiple servers defined, just add them with names other than ```aws.amazon.com``` and set the Maven Property ```beanstalker.serverId``` to the server name declared.

### Testing the Credentials

A Simple test to validate the IAM Credentials is to use the [show-security-credentials mojo](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/show-security-credentials-mojo.html). You'll need the ```iam:GetUser``` permission in order to perform this:

    $ mvn br.com.ingenieux:beanstalk-maven-plugin:1.1.1:show-security-credentials [-Dbeanstalker.serverId=aws.amazon.com]
    ...
    [INFO] --- beanstalk-maven-plugin:1.1.1:show-security-credentials (default-cli) @ ingenieux-docs ---
    [INFO] SUCCESS
    [INFO]  * user: {UserName: ingenieux, UserId: 235368163414, Arn: arn:aws:iam::235368163414:root, CreateDate: Wed Oct 15 15:51:05 BRT 2008, } [class: User]
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 14.022s
    [INFO] Finished at: Sun Sep 15 11:51:16 BRT 2013
    [INFO] Final Memory: 12M/104M
    [INFO] ------------------------------------------------------------------------
    $ 

### Up Next

How to configure [the pom and its settings](pom-config.html). Or, if you're starting from scratch, take a look [at the archetype](using-the-archetype.html)

[ back to top ](index.html)
