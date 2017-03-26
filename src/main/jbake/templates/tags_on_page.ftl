<!-- show tags for this page -->
<#if (content.tags)??>
  <#assign i = 0>
   <p> 
    <#list content.tags as tag>
      <#if tag != "blog">
        <a href="/tags/${tag}.html">${tag}</a> 
        <#if (i < content.tags?size-1)>
          |
        </#if>
        <#assign i = i+1 >  
      </#if>
    </#list> 
  </p>
</#if>    
