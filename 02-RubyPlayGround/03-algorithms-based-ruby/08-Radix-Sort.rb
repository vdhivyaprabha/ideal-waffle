# This program sorts an array of Harry Potter character names using Radix Sort. It first determines the maximum number of digits in 
# the array and pads each string with spaces so that they all have the same number of digits. It then sorts the array by each digit, 
# starting from the rightmost digit, using buckets to group the strings by their current digit. Finally, it removes the padding from 
# each string and returns the sorted array.

# An array of Harry Potter character names
characters = [
    "Hermione Granger",
    "Harry Potter",
    "Ron Weasley",
    "Neville Longbottom",
    "Draco Malfoy",
    "Ginny Weasley",
    "Luna Lovegood",
    "Cho Chang",
    "Cedric Diggory",
    "Sirius Black",
    "Albus Dumbledore",
    "Severus Snape",
    "Minerva McGonagall",
    "Rubeus Hagrid",
    "Remus Lupin"
  ]
  
  # Define a function to sort the array using Radix Sort
  def radix_sort(array)
    # Determine the maximum number of digits in the array
    max_digits = array.map(&:length).max
  
    # Add padding to each string so they all have the same number of digits
    padded_array = array.map { |string| string.rjust(max_digits) }
  
    # Sort the array by each digit, starting from the rightmost digit
    (max_digits - 1).downto(0) do |digit_index|
      buckets = {}
  
      padded_array.each do |string|
        digit = string[digit_index]
        if buckets[digit]
          buckets[digit] << string
        else
          buckets[digit] = [string]
        end
      end
  
      padded_array = buckets.values.flatten
    end
  
    # Remove the padding from each string
    padded_array.map(&:strip)
  end
  
  # Call the radix_sort function on the characters array and print the sorted result
  sorted_characters = radix_sort(characters)
  puts sorted_characters
  