# array of unsorted Hogwarts houses
houses = ["Slytherin", "Gryffindor", "Hufflepuff", "Ravenclaw"]

# merge sort function
def merge_sort(houses)
  n = houses.length

  # base case
  return houses if n <= 1

  # divide array into two halves
  mid = n/2
  left = merge_sort(houses[0...mid])
  right = merge_sort(houses[mid...n])

  # merge the two sorted halves
  result = []
  i, j = 0, 0
  while i < left.length && j < right.length
    if left[i] < right[j]
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
  end
  while i < left.length
    result << left[i]
    i += 1
  end
  while j < right.length
    result << right[j]
    j += 1
    j += 1
  end

  return result
end

# sort the array using merge sort and print the result
sorted_houses = merge_sort(houses)
puts sorted_houses