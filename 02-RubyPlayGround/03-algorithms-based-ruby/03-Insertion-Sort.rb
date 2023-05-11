# The insertion_sort function takes an array as input, and uses a nested loop to iterate over 
# each element in the array, comparing it to the previous elements and moving them to the right 
# if they are greater than the key. The key is then inserted into the correct position in the sorted subarray.

# array of unsorted Hogwarts houses
houses = ["Slytherin", "Gryffindor", "Hufflepuff", "Ravenclaw"]

# insertion sort function
def insertion_sort(arr)
  n = arr.length

  # iterate over each element in array starting from the second one
  (1...n).each do |i|
    key = arr[i]
    j = i - 1

    # move elements greater than key one position ahead
    while j >= 0 && arr[j] > key
      arr[j+1] = arr[j]
      j -= 1
    end

    # insert the key into its correct position
    arr[j+1] = key
  end

  return arr
end

# sort the array using insertion sort and print the result
puts insertion_sort(houses)
