require "grell"

class CrawlsUrlService < ApplicationService
  attr_reader :url

  def initialize(url)
    @url = url
  end

  def call
    crawler = Grell::Crawler.new
    crawler.start_crawling(url) do |page|
      # Grell will keep iterating this block which each unique page it finds
      puts "yes we crawled #{page.url}"
      puts "status: #{page.status}"
      # puts "headers: #{page.headers}"
      # puts "body: #{page.body}"
      puts "We crawled it at #{page.timestamp}"
      # puts "We found #{page.links.size} links"
      puts "page id and parent_id #{page.id}, #{page.parent_id}"
      crawler.manager.quit if page.status == 200
    end
  end
end
