# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'cgi'
 
 
Definition.destroy_all
Word.destroy_all
Example.destroy_all
 
terms = ["Brick", "Rat-licker", "Simp", "Smize", "Himbo", "Steezy", "Doomscrolling", "Hits Different"]
count = 0
words = []
while count < terms.length do
   url = URI.parse("http://api.urbandictionary.com/v0/define?term=#{terms[count]}")
 
   # http = Net::HTTP.new(url.host, url.port)
   # http.use_ssl = true
   # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
  
   response = Net::HTTP.get_response(url)
   # request["x-host"] = 'http://api.urbandictionary.com'
   # request["x-rapidapi-key"] = '9fb6c44c79mshef7ea9cb8882708p12be00jsnff9214cdacad'
  
   response.code
  
   words << JSON.parse(response.body)
 
 
  
   count += 1
end 
 
 
 
words.each do |word|
   word_choice = Word.create!(term: word["list"][0]["word"])
   word["list"].each do |w|
       definition = Definition.new(content: w["definition"], word_id: word_choice.id, likes: 0)
       definition.clear_chars
       definition.save!
       example = Example.new(content: w["example"], word_id: word_choice.id)
       example.clear_chars
       example.save!
   end
 
end
