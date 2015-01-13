title=Deploying using S3
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

S3-based deployment is more flexible than git, but requires more configuration

### Using S3-Based Deployments

Here's a basic pom.xml of a project supporting S3 deployments:

    <?xml version="1.0"?>
    <project xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd" xmlns="http://maven.apache.org/POM/4.0.0"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <modelVersion>4.0.0</modelVersion>
      <parent>
        <groupId>br.com.ingenieux.beanstalker</groupId>
        <artifactId>beanstalker-projects</artifactId>
        <version>0.0.1-SNAPSHOT</version>
      </parent>
      <groupId>br.com.ingenieux.beanstalker</groupId>
      <artifactId>beanstalker-basic</artifactId>
      <packaging>war</packaging>
    
      <dependencies>
          <dependency>
              <groupId>javax.servlet</groupId>
              <artifactId>servlet-api</artifactId>
              <version>2.5</version>
              <scope>provided</scope>
          </dependency>
      </dependencies>
    
      <profiles>
        <profile>
          <id>deploy</id>
          <properties>
            <maven.install.skip>true</maven.install.skip>
            <maven.deploy.skip>true</maven.deploy.skip>
            <beanstalk.applicationName>mywebapp</beanstalk.applicationName>
            <beanstalk.cnamePrefix>mywebapp</beanstalk.cnamePrefix>
            <maven.build.timestamp.format>yyyyMMddHHmmss</maven.build.timestamp.format>
            <beanstalk.s3Bucket>ingenieux-beanstalk-apps</beanstalk.s3Bucket>
            <beanstalk.s3Key>${project.artifactId}/${project.build.finalName}-${maven.build.timestamp}.war</beanstalk.s3Key>
            <beanstalk.multipartUpload>false</beanstalk.multipartUpload>
            <beanstalk.useLatestVersion>false</beanstalk.useLatestVersion>
          </properties>
          <build>
            <defaultGoal>deploy</defaultGoal>
            <finalName>mywebapp</finalName>
            <plugins>
                <plugin>
                    <groupId>br.com.ingenieux</groupId>
                    <artifactId>beanstalk-maven-plugin</artifactId>
                    <version>1.1.1</version>
                    <executions>
                      <execution>
                        <id>default-deploy</id>
                        <phase>deploy</phase>
                        <goals>
                          <goal>upload-source-bundle</goal>
                          <goal>create-application-version</goal>
                          <goal>update-environment</goal>
                        </goals>
                        <configuration>
                          <beanstalk.versionLabel>${maven.build.timestamp}</beanstalk.versionLabel>
                        </configuration>
                      </execution>
                    </executions>
                </plugin>
            </plugins>
          </build>
        </profile>
      </profiles>
    </project>

In order to deploy, use this:

    $ mvn -Pdeploy -Dbeanstalk.cnamePrefix=beanstalk-mywebapp
    
Here's what happens:

    [INFO] Scanning for projects...
    [INFO]                                                                         
    [INFO] ------------------------------------------------------------------------
    [INFO] Building beanstalker-basic 0.0.1-SNAPSHOT
    [INFO] ------------------------------------------------------------------------
    [INFO] 
    [INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ beanstalker-basic ---
    [INFO] Using 'UTF-8' encoding to copy filtered resources.
    [INFO] Copying 0 resource
    [INFO] 
    [INFO] --- maven-compiler-plugin:2.5.1:compile (default-compile) @ beanstalker-basic ---
    [INFO] No sources to compile
    [INFO] 
    [INFO] --- maven-resources-plugin:2.6:testResources (default-testResources) @ beanstalker-basic ---
    [INFO] Using 'UTF-8' encoding to copy filtered resources.
    [INFO] skip non existing resourceDirectory /home/aldrin/projetos/sources/beanstalker-projects/beanstalker-basic-s3/src/test/resources
    [INFO] 
    [INFO] --- maven-compiler-plugin:2.5.1:testCompile (default-testCompile) @ beanstalker-basic ---
    [INFO] No sources to compile
    [INFO] 
    [INFO] --- maven-surefire-plugin:2.12.4:test (default-test) @ beanstalker-basic ---
    [INFO] No tests to run.
    [INFO] 
    [INFO] --- maven-war-plugin:2.2:war (default-war) @ beanstalker-basic ---
    [INFO] Packaging webapp
    [INFO] Assembling webapp [beanstalker-basic] in [/home/aldrin/projetos/sources/beanstalker-projects/beanstalker-basic-s3/target/mywebapp]
    [INFO] Processing war project
    [INFO] Copying webapp resources [/home/aldrin/projetos/sources/beanstalker-projects/beanstalker-basic-s3/src/main/webapp]
    [INFO] Webapp assembled in [274 msecs]
    [INFO] Building war: /home/aldrin/projetos/sources/beanstalker-projects/beanstalker-basic-s3/target/mywebapp.war
    [INFO] WEB-INF/web.xml already added, skipping
    [INFO] 
    [INFO] --- maven-install-plugin:2.4:install (default-install) @ beanstalker-basic ---
    [INFO] Skipping artifact installation
    [INFO] 
    [INFO] --- maven-deploy-plugin:2.7:deploy (default-deploy) @ beanstalker-basic ---
    [INFO] Skipping artifact deployment
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:upload-source-bundle (default-deploy) @ beanstalker-basic ---
    [INFO] Target Path: s3://ingenieux-beanstalk-apps/beanstalker-basic/mywebapp-20130915141635.war
    [INFO] Uploading artifact file: /home/aldrin/projetos/sources/beanstalker-projects/beanstalker-basic-s3/target/mywebapp.war
    [INFO] Artifact Uploaded
    [INFO] SUCCESS
    [INFO]  * ETag: 5968f43565089ad2866c1e56ea195727 [class: String]
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:create-application-version (default-deploy) @ beanstalker-basic ---
    [INFO] SUCCESS
    [INFO]  * sourceBundle: {S3Bucket: ingenieux-beanstalk-apps, S3Key: beanstalker-basic/mywebapp-20130915141635.war, } [class: S3Location]
    [INFO]  * versionLabel: 20130915141635 [class: String]
    [INFO]  * description: Update from beanstalk-maven-plugin [class: String]
    [INFO]  * applicationName: mywebapp [class: String]
    [INFO]  * dateCreated: Sun Sep 15 14:16:41 BRT 2013 [class: Date]
    [INFO]  * dateUpdated: Sun Sep 15 14:16:41 BRT 2013 [class: Date]
    [INFO] 
    [INFO] --- beanstalk-maven-plugin:1.1.1:update-environment (default-deploy) @ beanstalker-basic ---
    [INFO] Looking up for beanstalk-mywebapp.elasticbeanstalk.com
    [INFO] Will wait until Sun Sep 15 14:19:05 BRT 2013 for environment e-c4zhpqjk9r to get into !Updating
    [INFO] ... as well as having domain beanstalk-mywebapp.elasticbeanstalk.com
    [INFO] Environment Detail:com.amazonaws.services.elasticbeanstalk.model.EnvironmentDescription@608ba297[environmentName=mywebapp,environmentId=e-c4zhpqjk9r,applicationName=mywebapp,versionLabel=git-3c532af59ab1bd353eb754b1b4daaf8331980cfe-1379262401575,solutionStackName=32bit Amazon Linux running Tomcat 7,templateName=<null>,description=beanstalker-basic Maven Webapp,endpointURL=awseb-e-c-AWSEBLoa-MU7JKWGXRU6W-652123616.us-east-1.elb.amazonaws.com,cNAME=beanstalk-mywebapp.elasticbeanstalk.com,dateCreated=Sun Sep 15 13:29:05 BRT 2013,dateUpdated=Sun Sep 15 14:15:18 BRT 2013,status=Ready,health=Green,resources=<null>]
    [INFO] SUCCESS
    [INFO]  * versionLabel: 20130915141635 [class: String]
    [INFO]  * status: Updating [class: String]
    [INFO]  * applicationName: mywebapp [class: String]
    [INFO]  * endpointURL: awseb-e-c-AWSEBLoa-MU7JKWGXRU6W-652123616.us-east-1.elb.amazonaws.com [class: String]
    [INFO]  * health: Grey [class: String]
    [INFO]  * dateUpdated: Sun Sep 15 14:16:46 BRT 2013 [class: Date]
    [INFO]  * environmentId: e-c4zhpqjk9r [class: String]
    [INFO]  * solutionStackName: 32bit Amazon Linux running Tomcat 7 [class: String]
    [INFO]  * CNAME: beanstalk-mywebapp.elasticbeanstalk.com [class: String]
    [INFO]  * description: beanstalker-basic Maven Webapp [class: String]
    [INFO]  * dateCreated: Sun Sep 15 13:29:05 BRT 2013 [class: Date]
    [INFO]  * environmentName: mywebapp [class: String]
    [INFO] ------------------------------------------------------------------------
    [INFO] BUILD SUCCESS
    [INFO] ------------------------------------------------------------------------
    [INFO] Total time: 31.244s
    [INFO] Finished at: Sun Sep 15 14:17:07 BRT 2013
    [INFO] Final Memory: 17M/164M
    [INFO] ------------------------------------------------------------------------

### About the Profile

It is quite important for the profile to pack the needed mojos and goals. It does so by defining the profile, the defaultGoal (deploy), and the mojos to be called from the plugin:

  * [upload-source-bundle](http://http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/upload-source-bundle-mojo.html) (which creates the remote S3 version with the versionLabel)
  * [create-application-version](http://http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/create-application-version-mojo.html) (which tells Elastic Beanstalk to create this version)
  * [update-environment](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/update-environment-mojo.html) (which tells elastic beanstalk that this recently-created version should be set)

### Analyzing the properties

    <properties>
      <maven.install.skip>true</maven.install.skip>
      <maven.deploy.skip>true</maven.deploy.skip>
      <beanstalk.applicationName>mywebapp</beanstalk.applicationName>
      <beanstalk.cnamePrefix>mywebapp</beanstalk.cnamePrefix>
      <maven.build.timestamp.format>yyyyMMddHHmmss</maven.build.timestamp.format>
      <beanstalk.s3Bucket>ingenieux-beanstalk-apps</beanstalk.s3Bucket>
      <beanstalk.s3Key>${project.artifactId}/${project.build.finalName}-${maven.build.timestamp}.war</beanstalk.s3Key>
      <beanstalk.multipartUpload>false</beanstalk.multipartUpload>
      <beanstalk.useLatestVersionLabel>false</beanstalk.useLatestVersionLabel>
    </properties>

The first two are to avoid deploying on your Maven Repository as well as installing locally.

Property ```maven.build.timestamp.format``` is a hack to get a unique version id on the versionLabel. Otherwise, you'd need to supply it manually and increment on each version (although its possible, if you're using Jenkins or [buildnumber](http://mojo.codehaus.org/buildnumber-maven-plugin/), to use that instead)

Properties ```beanstalk.s3Bucket``` and ```beanstalk.s3Key``` declare where upload-source-bundle will write your war file

Property ```beanstalk.cnamePrefix``` will figure out on which environment to deploy, and it will fail if the environment is not available. If you want selective behaviour (creating an environment if it doesn't exist, or updating an existing if it does), use the [put-environment mojo](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/put-environment-mojo.html) instead.

Currently, the 1.1.1 version mojos for update-environment and upload-source-bundle are broken when it comes to the defaults, so the last two versions are needed to fix this

### Up Next

See how to [Manage Versions](manage-versions.html)

[ back to top ](index.html)
