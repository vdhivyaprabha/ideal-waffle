# The quick_sort function uses a pivot element to partition the array into smaller and 
# greater partitions, and then recursively sorts each partition. 
# The resulting sorted array is printed to the console.

# array of unsorted Hogwarts houses
houses = ["Slytherin", "Gryffindor", "Hufflepuff", "Ravenclaw"]

# quick sort function
def quick_sort(houses)
  # base case
  return houses if houses.length <= 1

  # choose a pivot element
  pivot = houses.sample

  # partition the array into elements smaller than and greater than the pivot
  smaller, greater = houses.partition { |house| house < pivot }

  # recursively sort the smaller and greater partitions
  return quick_sort(smaller) + quick_sort(greater)
end

# sort the array using quick sort and print the result
sorted_houses = quick_sort(houses)
puts sorted_houses
