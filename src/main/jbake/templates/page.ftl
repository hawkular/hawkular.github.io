<#include "header.ftl">

	<#include "navigation.ftl">

      <section class="main-banner">
        <div class="container">
          <h1><#escape x as x?xml>${content.title}</#escape></h1>
          <p><#if (content.description)??><#escape x as x?xml>${content.description}</#escape><#else></#if></p>
        </div>
      </section>

	<!--<p><em>${content.date?string("dd MMMM yyyy")}</em></p>-->

	<section>
      <div class="container">
        ${content.body}
      </div>
    </section>
    <#if (content.tags)?? >
<div class="container">
      <p><strong>Tags:</strong> 
        <#list content.tags as tag>
          <#if tag != "blog">
            <a href="/tags/${tag}.html">${tag}</a> 
          </#if>
        </#list>
        </p>
      </div>  
    </#if>    

<#include "footer.ftl">
