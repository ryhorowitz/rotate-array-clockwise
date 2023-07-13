def rotate_array(arr, k)
  if arr == [] || k == arr.length
    return arr
  
  elsif k < arr.length
  popped = arr.pop k
  arr = popped + arr

  else
    while k > 0
    popped = arr.pop
    arr.unshift popped
    k -= 1 

    end
  end
  arr
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [4, 1, 2, 3]"
  print "=> "
  print rotate_array([1, 2, 3, 4], 1)

  puts

  puts "Expecting: [2, 3, 1]"
  print "=> "
  print rotate_array([1, 2, 3], 2)

  puts

  puts "Expecting: [1, 2, 3]"
  print "=> "
  print rotate_array([1, 2, 3], 3)
  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# if k equals array length return array
# 
# And a written explanation of your solution
# remove k indexes from the end of the array
# add the removed values to the front of the array
#  return the modified array
