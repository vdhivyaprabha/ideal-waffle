# array of unsorted Hogwarts houses
houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]

# selection sort function
def selection_sort(arr)
  n = arr.length

  # iterate over each element in array
  (0...n).each do |i|

    # find the minimum element in the remaining unsorted array
    min_idx = i
    (i+1...n).each do |j|
      min_idx = j if arr[j] < arr[min_idx]
    end

    # swap the minimum element with the current element
    arr[i], arr[min_idx] = arr[min_idx], arr[i]
  end

  return arr
end

# sort the array using selection sort and print the result
puts selection_sort(houses)
