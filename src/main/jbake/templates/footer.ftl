      <#if (content)?? && (content.disqus)??>
      <div id="disqus_thread"></div>
      </#if>

      <div class="footer">
        <p>&copy; ingenieux Labs 2013 | Mixed with <a href="http://twitter.github.com/bootstrap/">Bootstrap v2.3.1</a> | Baked with <a href="http://jbake.org">JBake ${version}</a></p>
      </div>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
      $(function() {
        hljs.tabReplace = '  '; //4 spaces
        hljs.initHighlighting();
      });
    </script>
    
    <#if (content)?? && (content.disqus)??>
      <!-- disqus stuff -->    
      <script type="text/javascript">
      /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
      var disqus_shortname = 'ingenieux-docs'; // required: replace example with your forum shortname
      
      /* * * DON'T EDIT BELOW THIS LINE * * */
      (function() {
          var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
          dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
          (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
      })();
      </script>
      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
      <!-- /disqus stuff -->
    </#if>
    
      <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      
      ga('create', 'UA-32618923-2', 'ingenieux.com.br');
      ga('send', 'pageview');
      
      </script>
  </body>
</html>