require 'rubygems'
require 'nokogiri'
require 'open-uri'
     
def init_nokogiri(url)
   page = Nokogiri::HTML(open(url)) 
   return page
end

def method_to_get_email

    #décla de var 
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/ambleville.html"))   

 page.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text
   
end


p method_to_get_email 

def method_to_get_link
   #décla de var 
   page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))     

   page.css('table.Style20 a').map { |link| link['href'] }

end 


def method_to_get (method_to_get_link)

   var = method_to_get_link.map { |word| word.gsub('./','http://annuaire-des-mairies.com') }

end


all_url= method_to_get (method_to_get_link) 

p all_url


def get_email_of_town (all_url, page)
   all_url.each do |x|
   init_nokogiri (all_url)
   method_to_get_link2 (page)
   end
end

p get_email_of_town


#    p "http://annuaire-des-mairies.com/#{x}"
# end

# /html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[2]/p/a[1]
# /html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[3]/p/a[9]
