require 'rubygems'
require 'csv'
require 'geocoder/us'
require 'json'

db = Geocoder::US::Database.new("/opt/geocoder.db")

out = db.geocode(ARGV[0])

# write to json file for processing with R
File.open(ARGV[1],"w") do |f|
    f.write(out.to_json)
end 



