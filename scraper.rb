#!/usr/bin/env ruby
# Saving data:
# unique_keys = [ 'id' ]
# data = { 'id'=>12, 'name'=>'violet', 'age'=> 7 }
# ScraperWiki.save_sqlite(unique_keys, data)
require 'scraperwiki'
require 'mechanize'

for i in 0..1500
 agent = Mechanize.new
 page = agent.get('https://www.surveymonkey.com/s.aspx?sm=zjAblj%2byq7LOd2auA8YfZw%3d%3d')

 search_results = page.form_with(:name => 'surveyForm') do |form|
  ##form.radiobutton_with(:value => '8601846494').check
  form.radiobutton_with(:value => '8636393146').check
 end
 first_page = agent.submit(search_results)
 ##puts "Voted #{i}"
 ##pp first_page
end
puts 'Done'
