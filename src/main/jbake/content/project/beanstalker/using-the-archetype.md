title=Using the Archetype
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

beanstalker contains a very complete Maven Archetype for a Webapp with the following specs:

  * JAX-RS using [Jersey](http://jersey.java.net/)
  * [Guice](http://code.google.com/p/google-guice/) as a Dependency Injector
  * [rest-assured](http://code.google.com/p/rest-assured/) for Tests
  
And, of course, AWS Elastic Beanstalk

### Using the Archetype

It couldn't be simpler:

    $ mvn archetype:generate -Dfilter=elasticbeanstalk

See the generated README.md for details.

### Up Next

See how to [Manage Versions](manage-versions.html)

[ back to top ](index.html)
