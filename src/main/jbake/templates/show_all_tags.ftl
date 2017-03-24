<div>
<#assign tmp_list = [] />
<#list alltags as tag >
  <#assign tmp_list = tmp_list + [ tag ] />
</#list>  
<#assign the_tags = tmp_list?sort />
<#list the_tags as tag>
|  <a href="/tags/${tag}.html">${tag}</a> 
</#list>  
 |
</div>

