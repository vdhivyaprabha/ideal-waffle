# array of unsorted Hogwarts houses
houses = ["Slytherin", "Gryffindor", "Hufflepuff", "Ravenclaw", "Beauxbatons", "Durmstrang", "Ilvermorny"]

# bubble sort function
def bubble_sort(arr)
  n = arr.length

  # iterate over each element in array
  (0...n).each do |i|

    # iterate over remaining unsorted elements
    (0...n-i-1).each do |j|

      # swap adjacent elements if they are in the wrong order
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end

  return arr
end

# sort the array using bubble sort and print the result
puts bubble_sort(houses)
