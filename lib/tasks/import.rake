# encoding: utf-8    
 
require 'csv' 

desc "Import category data from language.csv file"
task :import => [:environment] do
  CSV.foreach("db/language.csv") do |row|
    Category.create({
    	:short_name => row[0],
      :name => row[1]
      })
   end
  puts "import end :) !"
end