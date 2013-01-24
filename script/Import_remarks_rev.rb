#ruby ./Import_remarks_rev.rb NfdcRemarks.csv
require_relative '../config/environment'
  lines = File.open(ARGV.first).readlines
  header = lines.shift.strip
  keys = header.split(',').map 
  data = lines.map.with_index do |line, index|
   p index
    values = line.strip.split(',')
    attributes = Hash[keys.zip values]
     # Module.const_get(args[:model]).create(attributes)
  end
  data.each do |row|
  facility = Faafacility.where(:SiteNumber => row['SiteNumber']).first
  attributes = row.slice("RemarkElementName", "Remarks")
  facility.remarks.create!(attributes)
    
end
p Remark.count


