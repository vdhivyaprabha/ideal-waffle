
=begin
    This class is intended to demonstate the functionality of Iteration through different loops and statements.
    initially we would see by iterating a for loop using a number which is retrived through user input 
    then we would iterate an predefined array. This would be do for all possible statements and loops.
=end
class IterationOfContends

=begin
    This Method is intended to initialize the class level varaibles which creating the object , 
    the varaibles are passed as contructor and set as class level varaibles using this method.
=end
    def initialize(max_count)
        puts("Initializing components for the class IterationOfContends")
        @@max_count = max_count
        puts("The value of the max count is initialized to value #{max_count}")
    end

=begin
    Thi method is intended to demonstrate the functionality of the for loops ,
    Here we have taken atwo for loops to demonstate the functionality one takes a predefined array
    and other takes a range of values where the input values are got from the user input and then set as class
    varaibles.
=end
    def iterate_using_forloop(potter_array)
        # Iterate the user input and display where the index is while iterating
        for indv_element in 1..@@max_count do
            puts("The index is at the element #{indv_element}")
        end
        # Iterate prededined array and display where the index is while iterating
        for indv_element in potter_array do
            puts("The index is at the element #{indv_element}")
        end
    end

    
    def iterate_using_whiledowhile(potter_array)
        array_length = potter_array.length()
        index = 0
        while index < array_length
            element = potter_array.at(index)
            puts("The value at the index :: using index :: #{index} is #{potter_array[index]}")
            puts("The value at the index :: using Arrays.at :: #{index} is #{element}")
            index+=1
        end
    end
    

    def iterate_using_loop(potter_array)
        array_length = potter_array.length()
        index = 0
        loop do
            element = potter_array.at(index)
            puts("The value at the index :: #{index} is #{element}")
            index+=1
            if index >= array_length 
                break
            end
        end
    end

    def iteration_using_untill(potter_array)
        array_length = potter_array.length()
        index = 0
        until index >= array_length
            element = potter_array.at(index)
            puts("The value at the index :: using index :: #{index} is #{potter_array[index]}")
            puts("The value at the index :: using Arrays.at :: #{index} is #{element}")
            index+=1
        end
    end

    def break_next_onloops()
        # Iterate the user input and display where the index is while iterating
        breat_at_index = 6
        next_at_index = 3
        for indv_element in 1..@@max_count do
            if indv_element == next_at_index then
                next
            elsif indv_element == breat_at_index then
                break
            end
            puts("Index => #{indv_element}")
        end
    end


end

potter_array = ["The Black Family","The Bones family","The Crouch family","The Diggory family","The Gaunt family","The Longbottom family","The Malfoy family","The Potter family","The Weasley family","The Dursley family"]

# Get an input number from the user and iterate it untill the maximum number.
# restrict the maximum number to 10
puts("Enter the Maximum Number till which the iteration should continue :: ")
max_count = gets.chomp.to_i
if max_count > 10
    max_count = 10
end

# Demonstration of Object Creation and passing class level varaibles
iteration_instance = IterationOfContends.new(max_count)
# Demonstration of for loops and iteration using predefined arrays and ranges
iteration_instance.iterate_using_forloop(potter_array)
# Demonstration of the while statement and how s it used to iterate a predefined array and defining index for the same.
iteration_instance.iterate_using_whiledowhile(potter_array)
# Demonstration of the loop statement and how s it used to iterate a predefined array and defining index for the same.
iteration_instance.iterate_using_loop(potter_array)
# Demonstration of the untill statement and how s it used to iterate a predefined array and defining index for the same.
iteration_instance.iteration_using_untill(potter_array)
# Demonstration of Break and Next in loops statements : here we have taken the for loop to iterate
iteration_instance.break_next_onloops()
