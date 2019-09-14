def map(source_array)
  index = 0 
  new_array = []
  while index < source_array.length do
    new_array.push(yield(source_array[index]))
    index += 1
  end
  return new_array
end

def reduce()