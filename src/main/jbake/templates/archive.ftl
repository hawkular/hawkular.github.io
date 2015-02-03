<#include "header.ftl">

<#include "navigation.ftl">

<section class="main-banner">
    <div class="container">
        <h1>Hawkular Blog</h1>
    </div>
</section>
<#list posts as post>
	<#if (post.status == "published")>
        <a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
        <p>${post.date?string("dd MMMM yyyy")}</p>
        <p>${post.body}</p>
	</#if>
</#list>

    <hr />

    <p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
