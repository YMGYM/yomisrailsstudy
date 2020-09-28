require 'open-uri'
require 'nokogiri'

doc  = Nokogiri::HTML(open('https://page.kakao.com/main?categoryUid=10&subCategoryUid=1001'))

doc.css('div.text-ellipsis .css-11602e0').each do |d|
    puts d.inner_text
end