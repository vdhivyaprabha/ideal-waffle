class HowToUseStrings

    def initialize()
        puts("Initializing Strings Component")
    end

    def accessStringByParts(input_element1)
        puts("Accessing first character in the inputstring :: #{input_element1[0]}")
        puts("Accessing Range of character in the inputstring :: #{input_element1[0..2]}")
    end

end

strings_usage = HowToUseStrings.new()
input_string1 = "Newt Scamander"
strings_usage.accessStringByParts(input_string1)