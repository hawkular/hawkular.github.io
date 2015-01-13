title=Deploying using git
date=2013-02-27
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

git could be used to create new AWS Elastic Beanstalk Versions, **EVEN IF YOUR PROJECT DOES NOT USE IT**.

It works as such:

  * you call beanstalk:fast-deploy
    * it will create a bare git repository under ```tmp-git-staging``` directory
    * it will sync and commit with the contents from ```target/<finalName>```
    * this repo will be pushed into AWS

This is the most practical way to deploy into AWS Elastic Beanstalk

### Using it

Once you've made the basic setup (say, the one from [this example](pom-config.html)), it as simple as:

    $ mvn package beanstalk:fast-deploy

For more details, read the [fast-deploy mojo docs](http://beanstalker.ingenieux.com.br/beanstalk-maven-plugin/fast-deploy-mojo.html)
    
### Up Next

See how to [Manage Versions](manage-versions.html)

[ back to top ](index.html)
