class States

    # CLASS_LEVEL_VARAIBLES
    @@number_of_states=0
    
    # GLOBAL_VARIABLES
    $max_states = 28

    def initialize(name)
        @state_name = name
        @@number_of_states += 1
    end

    def display()
        # LOCAL VARIABLE NAME
        first_index = @state_name.chars.first
        puts("State Name is :: #@state_name")
        puts("First Index of state is :: #@first_index")
    end

    def total_states()
        puts("Total Number of States :: #@@number_of_states")
    end

end

# Creates Instance Objects for the class. In this step INSTANCE VARAIBLES ARE CREATED
tamilnadu_instance=States.new("TamilNadu")
# Call the methods from the instance created to display on the state
# and total number of states available.
tamilnadu_instance.display()
tamilnadu_instance.total_states()

kerala_instance=States.new("Kerala")
kerala_instance.display()
kerala_instance.total_states()

