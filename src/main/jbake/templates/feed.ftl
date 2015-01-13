<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>docs.ingenieux.com.br</title>
    <link>http://docs.ingenieux.com.br/</link>
    <atom:link href="http://docs.ingenieux.com.br/feed.xml" rel="self" type="application/rss+xml" />
    <description>ingenieux Labs Docs</description>
    <language>en</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list posts as post>
    <item>
      <title>${post.title}</title>
      <link>http://docs.ingenieux.com.br${post.uri}</link>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
      	<description>
	<#escape x as x?xml>	
	${post.body}
	</#escape>
	</description>
    </item>
    </#list>
  </channel> 
</rss>
