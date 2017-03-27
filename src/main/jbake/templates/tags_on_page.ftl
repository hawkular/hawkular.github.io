<!-- show tags for this page -->
<#if (content.tags)??>
  <#assign tmp_list = [] />
  <#list content.tags as tag>
    <#if tag != "blog">
      <#assign tmp_list = tmp_list + [ tag ] />
    </#if>  
  </#list>
  <#assign tmp_list = tmp_list?sort>
  <#assign i = 0>
   <p> 
    <#list tmp_list as tag>
      <a href="/tags/${tag}.html">${tag}</a> 
      <#if (i < tmp_list?size-1)>
          |
      </#if>
      <#assign i = i+1 >  
    </#list> 
  </p>
</#if>    
