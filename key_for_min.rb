# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  key = ""
  value = ""
  name_hash.collect do |k, v|
    if key == ""
      key = k
      value = v
    elsif v < value
      key = k
      value = v
    end
  end
  
  if key == ""
    return nil
  end
  key
end