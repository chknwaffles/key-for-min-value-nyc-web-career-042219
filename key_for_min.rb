# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  result = ""
  smallest = name_hash[0]
  next_smallest = 0
  name_hash.collect do |k, v|
    next_smallest = v
    if smallest < next_smallest
      smallest = v
      result = k
    else
      smallest = next_smallest
      result = k
    end
  end
  result
end