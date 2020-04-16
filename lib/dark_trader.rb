require 'rubygems'
require 'nokogiri'
require 'open-uri'
     
def method_to_do_array_of_name_of_cryptocurrencies

        #décla de var 
        page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

    array_cryptocurencie =page.xpath('/html/body/div[1]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[2]/div//a/text()').map(&:text) 
   
end

def method_to_do_array_value_cryptocurrencies 

        #décla de var 
        page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
        array_value_cryptocurrencies=[]

    array_mairie= page.xpath('/html/body/div[1]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]//a/text()').map(&:text) 
   
end

def method_to_make_hash_with_2_array (method_to_do_array_of_name_of_cryptocurrencies, method_to_do_array_value_cryptocurrencies)

Hash[method_to_do_array_of_name_of_cryptocurrencies.zip(method_to_do_array_value_cryptocurrencies)] 

end

p method_to_make_hash_with_2_array(method_to_do_array_of_name_of_cryptocurrencies,method_to_do_array_value_cryptocurrencies)

# # p method_to_make_hash_with_2_array

#  method_to_do_array_of_name_of_cryptocurrencies


# p method_to_do_array_of_name_of_cryptocurrencies