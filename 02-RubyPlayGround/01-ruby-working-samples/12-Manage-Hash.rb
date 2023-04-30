# Create an empty hash to store the details of the Hogwarts Houses
houses = {}

# Method to add a new Hogwarts House to the hash
def add_house(houses)
  puts "What is the name of the new Hogwarts House?"
  house_name = gets.chomp.capitalize
  
  puts "Who is the founder of #{house_name} House?"
  founder = gets.chomp
  
  puts "What are the house colors of #{house_name} House? (Separate colors with a comma)"
  colors = gets.chomp.split(",").map(&:strip)
  
  puts "What is the animal symbol of #{house_name} House?"
  animal = gets.chomp
  
  puts "Who is the ghost of #{house_name} House?"
  ghost = gets.chomp
  
  houses[house_name] = {
    "founder" => founder,
    "colors" => colors,
    "animal" => animal,
    "ghost" => ghost
  }
  
  puts "#{house_name} House has been added to the hash!"
end

# Method to remove an existing Hogwarts House from the hash
def remove_house(houses)
  puts "Which Hogwarts House do you want to remove?"
  house_name = gets.chomp.capitalize
  
  if houses.key?(house_name)
    houses.delete(house_name)
    puts "#{house_name} House has been removed from the hash!"
  else
    puts "#{house_name} House does not exist in the hash."
  end
end

# Main program loop
loop do
  puts "What do you want to do? (add/remove/print/exit)"
  action = gets.chomp.downcase
  
  case action
  when "add"
    add_house(houses)
  when "remove"
    remove_house(houses)
  when "print"
    if houses.empty?
      puts "The hash is currently empty."
    else
      houses.each do |house, details|
        puts "#{house} House:"
        puts "Founder: #{details["founder"]}"
        puts "Colors: #{details["colors"].join(", ")}"
        puts "Animal: #{details["animal"]}"
        puts "Ghost: #{details["ghost"]}"
        puts ""
      end
    end
  when "exit"
    break
  else
    puts "Invalid command."
  end
end