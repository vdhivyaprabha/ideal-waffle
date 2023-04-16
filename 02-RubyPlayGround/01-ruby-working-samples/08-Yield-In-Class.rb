
=begin
    This method is intended to demonstrate how yield can be used in the class structure.
    Here yield is used to set the values of the object/
=end
class YieldinClass

    attr_accessor :inputNumber1,:inputNumber2

    def initialize
        yield(self)
    end

    def console_print_elements
        puts("The value of inputNumber1 is #{inputNumber1}")
        puts("The value of inputNumber2 is #{inputNumber2}")
    end

end

eval_instance = YieldinClass.new do |indv_eval_instance|   
    indv_eval_instance.inputNumber1 = 10 
    indv_eval_instance.inputNumber2 = 5
end   
eval_instance.console_print_elements()