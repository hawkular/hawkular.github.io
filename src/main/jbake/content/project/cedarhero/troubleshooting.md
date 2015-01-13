title=Troubleshooting ingenieux Beanstalker
date=2013-09-15
type=page
status=published
disqus=true
~~~~~~
[ back to top ](index.html)

### Look at those calls

It is often interesting to run with -X and -Dbeanstalker.verbose=true. tail / tee to a file, like this:

    $ mvn -Pdeploy -X -Dbeanstalker.verbose=true 2>&1 | tee log.txt

### Have you seen the list?

There's a mailing list at [http://groups.google.com/group/beanstalker-users](http://groups.google.com/group/beanstalker-users)

### If anything else fails

Try the [mailing list again](http://groups.google.com/group/beanstalker-users), or [file an issue](http://github.com/ingenieux/beanstalker/issues)

We also monitor both [stackoverflow](http://stackoverflow.com) (use maven + elastic-beanstalk) and the [AWS Forums](http://forums.aws.amazon.com/), on a best-effort basis thanks to [ifttt](http://ifttt.com)

[ back to top ](index.html)
