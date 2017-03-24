<#include "header.ftl">

	<#include "navigation.ftl">
<div class="blog-container">	
	<div class="page-header">
		<h1>Tag: ${tag}</h1>
	</div>


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

<!-- now blog posts -->
<#assign posts = [] />
<#list tagged_documents as post>
  <#if post.type == 'post'>
    <#assign posts = posts + [ post ] />
  </#if>
</#list>  

<#if posts?has_content >
	<h2>Blog posts</h2> 
    <#list posts as post>
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
    </#list>
  </ul>
</#if>

<p>
<h2>Tags</h2>
<#include "show_all_tags.ftl">

<#include "footer.ftl">
