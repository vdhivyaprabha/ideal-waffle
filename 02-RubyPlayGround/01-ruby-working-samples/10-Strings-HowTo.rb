class HowToUseStrings

    def initialize()
        puts("Initializing Strings Component")
    end

    def getStringLength(inputString)
        return inputString.length
    end

    def variableInterpolation(inputText1,inputtext2)
        puts("The first input will be #{inputText1} and the second input text will be #{inputtext2}")
    end

    def getVariousWaysToConcatStrings(inputText1,inputText2,inputText3)
        # using the + Sysmbol to concatenate three input strings.
        concat_strings = "#{inputText1}" + "#{inputText2}" + "#{inputText3}"
        puts("The Value of concat Strings by Method 1 :: #{concat_strings}")
        # using just spaces Sysmbol to concatenate three input strings.
        concat_strings = "#{inputText1}" "#{inputText2}" "#{inputText3}"
        puts("The Value of concat Strings by Method 2 :: #{concat_strings}")
        # using just << operator to concatenate three input strings.
        concat_strings = "#{inputText1}" <<"#{inputText2}" << "#{inputText3}"
        puts("The Value of concat Strings by Method 3 :: #{concat_strings}")
        # using chain of concats to concatenate three input strings.
        concat_strings = "#{inputText1}".concat("#{inputText2}").concat("#{inputText3}") 
        puts("The Value of concat Strings by Method 4 :: #{concat_strings}")
    end

    def accessStringByParts(input_element1)
        puts("Accessing first character in the inputstring :: #{input_element1[0]}")
        puts("Accessing Range of character in the inputstring :: #{input_element1[0..2]}")
        string_length = getStringLength(input_element1)
        puts("The Length of the input string is :: #{string_length}")
        puts("Retrive String Characters Using the String Length :: #{input_element1[0..string_length]}")
        puts("Retrive the String Characters using negative Indexing -3 :: #{input_element1[-3]}")
    end

end

strings_usage = HowToUseStrings.new()
input_string1 = "Newt Scamander"
strings_usage.accessStringByParts(input_string1)

input_string1="Harry Potter"
input_string2="Hermione Granger"
input_string3="Ron Weasley"
strings_usage.getVariousWaysToConcatStrings(input_string1,input_string2,input_string3)