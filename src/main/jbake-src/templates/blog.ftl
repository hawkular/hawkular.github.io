<#include "header.ftl">

<#include "navigation.ftl">

<div class="container">

<section class="main-banner">
    <div class="container">
        <h1>Blog Archive</h1>
    </div>
</section>

<!--<ul>-->
<#list published_posts as post>
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

    <li>${post.date?string("dd")} - <a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a></li>
	<#assign last_month = post.date?string("MMMM yyyy")>
</#list>
</ul>

</div>

<#include "footer.ftl">
