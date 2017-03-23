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
    	        <p><strong>Tags:</strong> <#list content.tags as tag>
          <#if tag != "blog">
            <a href="/tags/${tag}.html">${tag}</a> 
          </#if>
        </#list></p>

        <p><em>Published by ${content.author} on  ${content.date?string("dd MMMM yyyy")}</em></p>

    <#include "disqus.ftl">

<#include "footer.ftl">
