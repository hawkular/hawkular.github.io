<#include "header.ftl">
<#assign numberOfBlogPosts = 5 />

<#include "navigation.ftl">

<section class="main-banner">
    <div class="container">
        <h1>Hawkular Blog</h1>
    </div>
</section>

<div class="container">

<#assign partitions = posts?chunk(numberOfBlogPosts) />
<#list partitions?first as post>
	<#if (post.status == "published")>
        <a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
        <p>${post.date?string("dd MMMM yyyy")}</p>
        <p>${post.body}</p>
        <br />
        <hr /><br />
        <br />
	</#if>
</#list>

    

    <p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

</div>

<#include "footer.ftl">
