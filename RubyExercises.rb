# Note: we're looking for Ruby commands for the below questions, not the actual answers, unless it's a question. 

# Hint: you can type "irb" in your terminal to get a Ruby console to test things out. For multi-line code, use an editor that can run Ruby code, or copy/paste into irb.

# Hint 2: you can refer to the Ruby doc for Array and Hash here: 

# http://www.ruby-doc.org/core-1.9.3/Array.html
# http://www.ruby-doc.org/core-1.9.3/Hash.html


# 1. Use the "each" method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
    print num
  end
  puts
# 2. Same as above, but only print out values greater than 5.
  nums_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  nums_array.each do |n|
    if n > 5
      print n
    end
  end
  puts
# 3. Now, using the same array from #2, use the "select" method to extract all odd numbers into a new array.
  odd_array = nums_array.select {|n|n.odd?}
  puts odd_array.to_s
# 4. Append "11" to the end of the array. Prepend "0" to the beginning.
  odd_array.push(11)
  puts odd_array.to_s
  odd_array.unshift(0)
  puts odd_array.to_s
# 5. Get rid of "11". And append a "3".
  odd_array.pop
  odd_array.push(3)
  puts odd_array.to_s
# 6. Get rid of duplicates without specifically removing any one value. 
  odd_array = odd_array.uniq
  puts odd_array.to_s
# 7. What's the major difference between an Array and a Hash?
  # => An Array stores its values in sequentially numbered slots while
  # => a Hash pairs its values to arbitrary objects or keys.
# 8. Create a Hash using both Ruby 1.8 and 1.9 syntax.
  hash_8 = {:bomb => "defused"}
  hash_9 = {bomb: "defused"}
  puts hash_8
  puts hash_9
# Suppose you have a h = {a:1, b:2, c:3, d:4}
  h = {a:1, b:2, c:3, d:4}
# 9. Get the value of key "b".
  puts h[:b]
# 10. Add to this hash the key:value pair {e:5}
  h.merge!({e:5})
  puts h
# 13. Remove all key:value pairs whose value is less than 3.5
  h.delete_if{|key, val| val.to_f < 3.5}
  puts h
# 14. Can hash values be arrays? Can you have an array of hashes? (give examples)
  # A hash's values can be arrays
  puts "=> hash with arrays"
  hash_a = {a:[1,2,3], b:[4,5,6]}
  puts hash_a[:b][1]
  # An array's values can be hashes
  puts "=> array with hashes"
  array_h = [{a:1, b:2, c:3}, {d:4, e:5, f:6}]
  puts array_h[0][:b]
# 15. Look at several Rails/Ruby online API sources and say which one your like best and why.
  # => I compared ruby-doc.org and api-dock.com/ruby. I certainly prefer ruby-doc (so far), 
  # => it has a straight forward interface and the readily readable comments at the bottom
  # => of each section allows for a sort of FAQ which can be subjected to the browsers
  # => find function (CTRL-F) on the same page as the documentation.

