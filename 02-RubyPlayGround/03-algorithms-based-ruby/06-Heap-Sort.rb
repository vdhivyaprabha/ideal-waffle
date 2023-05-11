# In this example, we're using a heap sort implementation to sort an array of Hogwarts houses. 
# The heap_sort function first heapifies the array, then extracts elements from the heap and 
# swaps them to sort the array. The heapify function is a helper function used to maintain 
# the heap property of the array. The resulting sorted array is printed to the console.

# array of unsorted Hogwarts houses
houses = ["Slytherin", "Gryffindor", "Hufflepuff", "Ravenclaw"]

# heap sort function
def heap_sort(houses)
  # heapify the array
  (houses.length / 2 - 1).downto(0) do |i|
    heapify(houses, houses.length, i)
  end

  # extract elements from the heap
  (houses.length - 1).downto(1) do |i|
    houses[0], houses[i] = houses[i], houses[0]
    heapify(houses, i, 0)
  end

  # return the sorted array
  return houses
end

# helper function to heapify the array
def heapify(houses, n, i)
  largest = i
  left = 2 * i + 1
  right = 2 * i + 2

  if left < n && houses[left] > houses[largest]
    largest = left
  end

  if right < n && houses[right] > houses[largest]
    largest = right
  end

  if largest != i
    houses[i], houses[largest] = houses[largest], houses[i]
    heapify(houses, n, largest)
  end
end

# sort the array using heap sort and print the result
sorted_houses = heap_sort(houses)
puts sorted_houses
