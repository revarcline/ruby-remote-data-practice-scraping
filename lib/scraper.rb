require 'nokogiri'
require 'open-uri'

html = open('https://flatironschool.com/')
doc = Nokogiri::HTML(html)

puts doc.css('.headline-26OIBN').text

courses = doc.css('.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC')
courses.each do |course|
  puts course.text
end

p doc.css('.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC')[0].name
