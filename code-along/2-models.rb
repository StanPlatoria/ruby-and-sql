# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
new_company = Company.new
p new_company
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://apple.com"
p new_company
new_company.save
p new_company

new_company3 = Company.new
new_company3["name"] = "Anthropic"
new_company3["city"] = "San Francisco"
new_company3["state"] = "CA"
new_company3.save

new_company2 = Company.new
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2.save

new_company4 = Company.new
new_company4["name"] = "Platoria"
new_company4["city"] = "Munich"
new_company4["state"] = "Bavaria"
new_company4["url"] = "https://platoria.com"
p new_company4
new_company4.save
p new_company4

puts "Companies: #{Company.all.count}"

# 3. query companies table to find all row with California company

tech_companies = Company.where({"state" => "Bavaria"})
p tech_companies
puts "German Companies: #{tech_companies.count}"

# 4. query companies table to find single row for Apple

platoria = Company.find_by({"name" => "Platoria"})
puts platoria.inspect

# 5. read a row's column value

puts platoria["url"]

# 6. update a row's column value

amazon = Company.find_by({ "name" => "Amazon" })
amazon["url"] = "https://www.amazon.com/"
# OR
# amazon.url = "https://www.amazon.com/"
amazon.save

# 7. delete a row
