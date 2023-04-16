=begin
    This class is intended to demonstrate on how clocks can be executed by multiline and inline.
    we hav each to demonstrate on how to iterate and work using inline and multiline.
=end
class BlocksUsage

    def executeBlocksMultiline(potter_array)
        puts("Executing Statements Multiline :: ")
        potter_array.each do |indv_element|   
            puts("Element :: #{indv_element}") 
        end
    end

    def exusteBlocksInline(potter_array)
        puts("Executing Statements Inline :: ")
        potter_array.each { |indv_element| 
            puts("Element :: #{indv_element}") 
            puts("Multiple Statement - > Element :: #{indv_element}") 
        }
    end

end

potter_array = ["Harry Potter","Albus Dumbledore","Lord Voldemort","Severus Snape"]
blocks_instance = BlocksUsage.new()
blocks_instance.executeBlocksMultiline(potter_array)
blocks_instance.exusteBlocksInline(potter_array)