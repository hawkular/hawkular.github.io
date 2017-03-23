<#include "header.ftl">

	<#include "navigation.ftl">
	
	<div class="page-header">
		<h1>Tag: ${tag}</h1>
	</div>
<div class="blog-container">

<#assign posts = [] />
<#list tagged_documents as post>
  <#if post.type != 'post'>
    <#assign posts = posts + [ post ] />
  </#if>
</#list>  

<#if posts?has_content >
  <h2>Documents</h2>

  <#list posts as post>
    <li> <a href="/${post.uri}">${post.title}</a></li>
  </#list>
</#if>   



	<h2>Blog posts</h2> 
    <#list tagged_documents as post>
    <#if post.type == 'post'>
    <#if (last_month)??>
        <#if post.date?string("MMMM yyyy") != last_month>
            </ul>
            <h4>${post.date?string("MMMM yyyy")}</h4>
            <ul>
        </#if>
    <#else>
        <h4>${post.date?string("MMMM yyyy")}</h4>
        <ul>
    </#if>
    
    <li>${post.date?string("dd")} - <a href="/${post.uri}">${post.title}</a></li>
    <#assign last_month = post.date?string("MMMM yyyy")>
    </#if>
    </#list>
  </ul>

<p>
<h2>Tags</h2>
<#list alltags as tag>
  <a href="/tags/${tag}.html">${tag}</a> 
</#list>  

</div>

<#include "footer.ftl">
