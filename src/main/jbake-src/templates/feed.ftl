<?xml version="1.0" encoding="UTF-8" ?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Hawkular Blog</title>
    <link>${config.site_host}</link>
    <atom:link href="${config.site_host}/${config.feed_file}" rel="self" type="application/rss+xml" />
    <description>Blog posts about Hawkular - the open source monitoring and management platform</description>
    <language>en-us</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list published_posts as post>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>${config.site_host}/${post.uri}</link>
      <#if post.author??>
      <author>noreply@hawkular.org (${post.author})</author>
      </#if>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
      	<description>
	<#escape x as x?xml>
	${post.body?replace("src=\"","src=\"${config.site_host}/")}
	</#escape>
	</description>
    </item>
    </#list>

  </channel>
</rss>
