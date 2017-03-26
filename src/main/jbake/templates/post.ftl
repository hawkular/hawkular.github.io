<#include "header.ftl">
	
	<#include "navigation.ftl">

    <section class="main-banner blog-mainbanner">
        <div class="container">
            <h1><#escape x as x?xml>${content.title}</#escape></h1>
            <p>A blog post by ${content.author}</p>
        <#include "tags_on_page.ftl">            
        </div>
    </section>

    <div class="blog-container">
        <br/><br/>
    	<p>${content.body}</p>
    	<hr /><br /><br />

        <p><em>Published by ${content.author} on  ${content.date?string("dd MMMM yyyy")}</em></p>

    <#include "disqus.ftl">

<#include "footer.ftl">
