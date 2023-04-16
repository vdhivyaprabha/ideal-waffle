=begin
    This class is intended to demonstrate on how Yield can be used , the first method demonstartes 
    the yield without any parameters and the second method demonstrates how the same yield can bne used
    with parameters.
=end

def demonstateYield()
    inputNumber1 = 25
    inputNumber2 = 5
    puts("Addition on inputNumber1 and inputNumber2 :: #{inputNumber1+inputNumber2}")
    puts("Subtraction on inputNumber1 and inputNumber2 :: #{inputNumber1-inputNumber2}")
    yield()
    puts("Multiplication on inputNumber1 and inputNumber2 :: #{inputNumber1*inputNumber2}")
    puts("Division on inputNumber1 and inputNumber2 :: #{inputNumber1/inputNumber2}")
    yield()
end

demonstateYield {
    50.times do |x| 
        print("-") 
    end
    print("\n")
}

def demonstateYieldWithParameters
    yield(25,5)
    print("\n")
    yield(10,2)
    print("\n")
    yield(14,7)
end

demonstateYieldWithParameters { |inputNumber1,inputNumber2|
    puts("Addition on inputNumber1 and inputNumber2 :: #{inputNumber1+inputNumber2}")
    puts("Subtraction on inputNumber1 and inputNumber2 :: #{inputNumber1-inputNumber2}")
    puts("Multiplication on inputNumber1 and inputNumber2 :: #{inputNumber1*inputNumber2}")
    puts("Division on inputNumber1 and inputNumber2 :: #{inputNumber1/inputNumber2}")
}