require 'yaml'
require 'rubygems'
require 'fastercsv'

# This is a script to import the country codes from the IATA (I think) provided .xls file rontaining all their SAP country codes
# Please see the .xls file from yardstick Ticket #1678

# ============================
# ==== Instructions ==========
# ============================

# To run the import:

# Please take the original .xls file and export to CSV with Unicode format
# Place this file in lib/tasks/data/en-state-codes.csv
# ruby import_region_codes.rb

# It will create an au.yml, us.yml, ca.yml file...one for each country in the OUTPUT_DIR, which must exist (it wont create directories)

STATE_CODES_CSV = './data/en-state-codes.csv'
OUTPUT_DIR = './data/state-code-output/'

puts "\nStarting Import State Codes \n==========================================\n"

data = Hash.new

# Parse the files
FasterCSV.open(STATE_CODES_CSV, "rb") do |output|
   row = output.shift

   loop do
      begin
         break unless row = output.shift
         # Begin parsing a row here

         row[0].strip!.downcase!
         row[1].strip!
         row[2].strip!

         unless row[2] == 'Not Available'
            data[row[0]] = Array.new unless data.has_key?(row[0])  # This creates a hash for each country initialized with an empty array

            data[row[0]] << [row[2].to_s, row[1].to_s] # Add a new array [Description, Region] to the Array.  This is an array of arrays as per the yaml spec
         end

         # End parsing a row here
      rescue FasterCSV::MalformedCSVError => e
         puts "Unable to parse: #{row}"
      end
   end
end

# Output each to its own file

data.each_key do |key|
   File.open("#{OUTPUT_DIR}#{key}.yml", "w") { |f| f.write(data[key].to_yaml) }
   puts "\"data/states/#{key}.yml\","
end

puts 'Finished Importing States Codes'
