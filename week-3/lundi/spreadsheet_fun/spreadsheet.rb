require 'bundler'
Bundler.require

# Authenticate a session with your Service Account 
puts "test"
session = GoogleDrive::Session.from_service_account_key("client_secret.json")  

# Get the spreadsheet by its title 
puts "test2"
spreadsheet = session.spreadsheet_by_title("Weshalors")
# Get the first 
puts "test3"
worksheet = spreadsheet.worksheets.first
# Print out the first 6 columns of each row 
puts "test4"
worksheet.rows.each { |row| puts row.first(6).join(" | ")}

worksheet.insert_rows(2, [["Hello", "This", "was", "inserted", "via", "Ruby"]])
worksheet.save
