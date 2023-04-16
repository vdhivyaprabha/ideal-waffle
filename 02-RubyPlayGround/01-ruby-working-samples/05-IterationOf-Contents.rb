
class IterationOfContends

    def initialize(max_count)
        puts("Initializing components for the class IterationOfContends")
        @@max_count = max_count
        puts("The value of the max count is initialized to value #{max_count}")
    end

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

end

# Get an input number from the user and iterate it untill the maximum number.
# restrict the maximum number to 10
potter_array = ["The Black Family","The Bones family","The Crouch family","The Diggory family","The Gaunt family","The Longbottom family","The Malfoy family","The Potter family","The Weasley family","The Dursley family"]
puts("Enter the Maximum Number till which the iteration should continue :: ")
max_count = gets.chomp.to_i
if max_count > 10
    max_count = 10
end
iteration_instance = IterationOfContends.new(max_count)
iteration_instance.iterate_using_forloop(potter_array)
