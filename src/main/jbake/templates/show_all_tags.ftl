<div>
<#assign tmp_list = [] />
<#list alltags as tag >
  <#assign tmp_list = tmp_list + [ tag ] />
</#list>  
<#assign the_tags = tmp_list?sort />
<#assign i = 0>
<#list the_tags as tag>
  <a href="/tags/${tag}.html">${tag}</a> 
    <#if (i < the_tags?size-1)>
        |
    </#if>
    <#assign i = i+1 >  
</#list>  
</div>

