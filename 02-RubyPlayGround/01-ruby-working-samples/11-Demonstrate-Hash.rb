# Create a hash to store the details of the Hogwarts Houses
houses = {
    "Gryffindor" => {
      "founder" => "Godric Gryffindor",
      "colors" => ["red", "gold"],
      "animal" => "lion",
      "ghost" => "Nearly Headless Nick"
    },
    "Slytherin" => {
      "founder" => "Salazar Slytherin",
      "colors" => ["green", "silver"],
      "animal" => "serpent",
      "ghost" => "The Bloody Baron"
    },
    "Hufflepuff" => {
      "founder" => "Helga Hufflepuff",
      "colors" => ["yellow", "black"],
      "animal" => "badger",
      "ghost" => "The Fat Friar"
    },
    "Ravenclaw" => {
      "founder" => "Rowena Ravenclaw",
      "colors" => ["blue", "bronze"],
      "animal" => "eagle",
      "ghost" => "The Grey Lady"
    }
  }
  
  # Accessing and printing the details of each Hogwarts House
  houses.each do |house, details|
    puts "#{house} House:"
    puts "Founder: #{details["founder"]}"
    puts "Colors: #{details["colors"].join(", ")}"
    puts "Animal: #{details["animal"]}"
    puts "Ghost: #{details["ghost"]}"
    puts ""
  end
  