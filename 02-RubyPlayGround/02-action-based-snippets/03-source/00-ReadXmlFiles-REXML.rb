require 'rexml/document'

# Open the XML file and parse it with REXML
file = File.open("../00-inputs-data/harry_potter.xml")
doc = REXML::Document.new(file)

# Loop through each book element and extract information
doc.elements.each("harry_potter/book") do |book|
  title = book.elements["title"].text
  author = book.elements["author"].text
  published_year = book.elements["published_year"].text
  isbn = book.elements["isbn"].text
  publisher = book.elements["publisher"].text

  puts "Title: #{title}"
  puts "Author: #{author}"
  puts "Published Year: #{published_year}"
  puts "ISBN: #{isbn}"
  puts "Publisher: #{publisher}"

  # Loop through each character element and extract information
  book.elements.each("characters/character") do |character|
    name = character.elements["name"].text
    birth_year = character.elements["birth_year"].text
    house = character.elements["house"].text
    wand_wood = character.elements["wand/wood"].text
    wand_core = character.elements["wand/core"].text
    wand_length = character.elements["wand/length"].text

    puts "  Character Name: #{name}"
    puts "  Birth Year: #{birth_year}"
    puts "  House: #{house}"
    puts "  Wand: #{wand_wood} wood, #{wand_core} core, #{wand_length}"
  end
end

file.close
