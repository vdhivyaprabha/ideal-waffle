# In this example, we're using a counting sort implementation to sort an array of Hogwarts houses 
# based on the length of the house names. The counting_sort function first creates a 
# counting array with a slot for each possible value, then counts the occurrences of 
# each value in the input array. It then calculates the running sum of the count array, creates a 
# new array to store the sorted values, and iterates over the input array in reverse order, 
# placing each value in the correct position in the sorted array based on its count. 
# The resulting sorted array is printed to the console.

# array of unsorted Hogwarts houses
houses = ["Slytherin", "Gryffindor", "Hufflepuff", "Ravenclaw"]

# counting sort function
def counting_sort(houses)
  # create a counting array with a slot for each possible value
  max_value = houses.max_by { |house| house.length }.length
  count = Array.new(max_value + 1, 0)

  # count the occurrences of each value in the input array
  houses.each do |house|
    count[house.length] += 1
  end

  # calculate the running sum of the count array
  (1..max_value).each do |i|
    count[i] += count[i - 1]
  end

  # create a new array to store the sorted values
  sorted_houses = Array.new(houses.length)

  # iterate over the input array in reverse order
  houses.reverse_each do |house|
    # find the index where the value should be placed in the sorted array
    index = count[house.length] - 1

    # place the value in the sorted array
    sorted_houses[index] = house

    # decrement the count of the value in the count array
    count[house.length] -= 1
  end

  # return the sorted array
  return sorted_houses
end

# sort the array using counting sort and print the result
sorted_houses = counting_sort(houses)
puts sorted_houses