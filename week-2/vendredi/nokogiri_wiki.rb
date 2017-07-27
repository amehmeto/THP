require 'rubygems'
require 'nokogiri'
require 'rest_client'

page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))
puts page.css('title')
