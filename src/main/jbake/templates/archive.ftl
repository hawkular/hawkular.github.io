<#assign head_extras>
<link rel="alternate" href="feed.xml" title="Hawkular Blog - RSS" type="application/rss+xml">
</#assign>
<#include "header.ftl">
<#assign numberOfBlogPosts = 5 />

<#include "navigation.ftl">


<section class="main-banner blog-mainbanner">
    <div class="container">
        <h1>Hawkular Blog</h1>
    </div>
</section>


<div class="blog-container">
    <#assign partitions = posts?chunk(numberOfBlogPosts) />
    <#list partitions?first as post>
    	<#if (post.status == "published")>
            <a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
            <p>${post.date?string("dd MMMM yyyy")}<#if post.author??>, by ${post.author}</#if></p>
            <p>${post.body}</p>
            <br />
            <hr /><br />
            <br />
    	</#if>
    </#list>



<#if (posts?size > numberOfBlogPosts)>
    <div class="large-4 columns blog-post-listings">
        <h2>Older posts:</h2>
        <ul>
        <#list posts[numberOfBlogPosts..] as post>
          <li>${post.date?string("dd MMMM yyyy")} - <a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
        </#list>
        <br/><br/>
    </div>
</#if>

    <a href=feed.xml><i class="fa fa-rss"></i> RSS Feed</a>
</div>


<#include "footer.ftl">
