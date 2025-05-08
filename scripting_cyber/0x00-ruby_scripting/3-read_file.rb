#!/usr/bin/env ruby
require 'json'  # Required to parse JSON files

def count_user_ids(path)
  # Read and parse the JSON file
  data = JSON.parse(File.read(path))
  
  # Create a hash with default value 0 to count userIds
  user_id_count = Hash.new(0)

  # Iterate through each object and count userIds
  data.each do |entry|
    user_id = entry["userId"]
    user_id_count[user_id] += 1
  end

  # Print results
  user_id_count.sort.to_h.each do |id, count|
    puts "#{id}: #{count}"
  end
end