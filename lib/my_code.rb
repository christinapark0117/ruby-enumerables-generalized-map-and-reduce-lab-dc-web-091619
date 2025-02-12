def map(source_array)
  index = 0 
  new_array = []
  while index < source_array.length do
    new_array.push(yield(source_array[index]))
    index += 1
  end
  new_array
end

def reduce(array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0
  else
    sum = array[0]
    i = 1
  end
  
  while i < array.length
   sum = yield(sum, array[i])
   i += 1
  end
  sum
end