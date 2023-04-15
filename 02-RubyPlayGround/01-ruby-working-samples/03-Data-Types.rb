
=begin
This class is intended to demonstate different datatypes and how do we manage different data types
=end
class DataTypesDemonstration

    def initialize()
        puts("Initializaing the components for the Data Type Demonstration !!! ")
    end

    def hash_retrive_values(input_hash)
        puts("Iterating the Hash Value :: ")
        input_hash.each do |key,value|
            puts("The value mapped for the key :: #{key} is #{value}")
        end
    end

    def array_retrive_values(input_array)
        puts("Iterating the Arrays :: ")
        input_array.each do |indv_element|
            puts("The value from the array :: #{indv_element}")
        end
    end

end

data_type_instance = DataTypesDemonstration.new()

# Creating a Colors hash and Iterating using a function
colors_hash = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
data_type_instance.hash_retrive_values(colors_hash)

# Creating a has with key as symbols which takes less memory than strins
colors_hash = { :red => 0xf00, :green => 0x0f0, :blue => 0x00f }
data_type_instance.hash_retrive_values(colors_hash)

# creating a colors array and Iterating in a function
colors_array = [0xf00,0x0f0,0x00f]
data_type_instance.array_retrive_values(colors_array)
