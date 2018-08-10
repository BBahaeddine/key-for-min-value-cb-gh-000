# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry"
def key_for_min_value(name_hash)
  if name_hash.empty?
    nil
  else
    minVal = name_hash.values[0]
    # minVal = 0
    keyMinVal = name_hash.keys[0]
    # keyMinVal = ""
    binding.pry
    name_hash.each{|key, value|
      if value < minVal
        minVal = value
        keyMinVal = key
      end
    }
    return keyMinVal
  end
end

key_for_min_value()