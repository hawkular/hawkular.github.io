<#include "header.ftl">
	
	<#include "navigation.ftl">

    <section class="main-banner blog-mainbanner">
        <div class="container">
            <h1><#escape x as x?xml>${content.title}</#escape></h1>
            <p>blog post</p>
        </div>
    </section>

    <div class="blog-container">
        <br/><br/>
    	<p>${content.body}</p>
    	<hr /><br /><br />
        <p><em>Published by ${content.author} on  ${content.date?string("dd MMMM yyyy")}</em></p>

    <div id="disqus_thread"></div>
        <script type="text/javascript">
        /* * * CONFIGURATION VARIABLES * * */
        var disqus_shortname = 'hawkular';

        /* * * DON'T EDIT BELOW THIS LINE * * */
        (function() {
            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
    </div>

<#include "footer.ftl">
