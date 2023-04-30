require 'nokogiri'

# Open the XML file and parse it with Nokogiri
file = File.open("../00-inputs-data/harry_potter.xml")
doc = Nokogiri::XML(file)

# Loop through each book element and extract information
doc.xpath("//book").each do |book|
  title = book.xpath("title").text
  author = book.xpath("author").text
  published_year = book.xpath("published_year").text
  isbn = book.xpath("isbn").text
  publisher = book.xpath("publisher").text

  puts "Title: #{title}"
  puts "Author: #{author}"
  puts "Published Year: #{published_year}"
  puts "ISBN: #{isbn}"
  puts "Publisher: #{publisher}"

  # Loop through each character element and extract information
  book.xpath("characters/character").each do |character|
    name = character.xpath("name").text
    birth_year = character.xpath("birth_year").text
    house = character.xpath("house").text
    wand_wood = character.xpath("wand/wood").text
    wand_core = character.xpath("wand/core").text
    wand_length = character.xpath("wand/length").text

    puts "  Character Name: #{name}"
    puts "  Birth Year: #{birth_year}"
    puts "  House: #{house}"
    puts "  Wand: #{wand_wood} wood, #{wand_core} core, #{wand_length}"
  end
end

file.close
