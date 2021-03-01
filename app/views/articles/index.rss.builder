xml.rss version: '2.0' do
  xml.channel do
    xml.title @user.name
    xml.description @user.name
    xml.link articles_url(format: :rss, subdomain: @user.username)

    @articles.each do |article|
      xml.item do
        xml.title article.title
        xml.content article.body
      end
    end
    #<link rel="self" type="application/atom+xml" href="http://www.syfyportal.com/atomFeed.php"/>
    #<link rel="first" href="http://www.syfyportal.com/atomFeed.php"/>
    #<link rel="next" href="http://www.syfyportal.com/atomFeed.php?page=2"/
  end
end
