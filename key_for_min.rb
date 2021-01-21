# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
# {:blake => 500, :ashley => 2, :adam => 1}
# get the values, find the smallest value, return that values key
# require 'pry'
# def key_for_min_value(name_hash)
#     name_hash.collect do |key, value|
#         value
#     end

# end

    
def key_for_min_value(name_hash)
    lastValue = 1000
    lastKey = nil
    name_hash.collect do |key, value|
        if value < lastValue
            lastValue = value
            lastKey = key
        else
            lastValue = lastValue
            lastKey = lastKey
        end
    end
    return lastKey
end