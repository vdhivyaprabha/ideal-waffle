require 'rexml/document'

# Create a new XML document using REXML
doc = REXML::Document.new

# Add the root element
root = doc.add_element('harry_potter')

# Add the first book element
book1 = root.add_element('book')
book1.add_element('title').text = "Harry Potter and the Philosopher's Stone"
book1.add_element('author').text = "J.K. Rowling"
book1.add_element('published_year').text = "1997"
book1.add_element('isbn').text = "9780747532743"
book1.add_element('publisher').text = "Bloomsbury"

# Add the characters element for book 1
characters1 = book1.add_element('characters')
characters1.add_element('character') do |c|
  c.add_element('name').text = "Harry Potter"
  c.add_element('birth_year').text = "1980"
  c.add_element('house').text = "Gryffindor"
  wand1 = c.add_element('wand')
  wand1.add_element('wood').text = "Holly"
  wand1.add_element('core').text = "Phoenix Feather"
  wand1.add_element('length').text = "11 inches"
end
characters1.add_element('character') do |c|
  c.add_element('name').text = "Hermione Granger"
  c.add_element('birth_year').text = "1979"
  c.add_element('house').text = "Gryffindor"
  wand2 = c.add_element('wand')
  wand2.add_element('wood').text = "Vine"
  wand2.add_element('core').text = "Dragon Heartstring"
  wand2.add_element('length').text = "10¾ inches"
end
characters1.add_element('character') do |c|
  c.add_element('name').text = "Ron Weasley"
  c.add_element('birth_year').text = "1980"
  c.add_element('house').text = "Gryffindor"
  wand3 = c.add_element('wand')
  wand3.add_element('wood').text = "Willow"
  wand3.add_element('core').text = "Unicorn Hair"
  wand3.add_element('length').text = "14 inches"
end

# Add the second book element
book2 = root.add_element('book')
book2.add_element('title').text = "Harry Potter and the Chamber of Secrets"
book2.add_element('author').text = "J.K. Rowling"
book2.add_element('published_year').text = "1998"
book2.add_element('isbn').text = "9780747538486"
book2.add_element('publisher').text = "Bloomsbury"

# Add the characters element for book 2
characters2 = book2.add_element('characters')
characters2.add_element('character') do |c|
  c.add_element('name').text = "Harry Potter"
  c.add_element('birth_year').text = "1980"
  c.add_element('house').text = "Gryffindor"
  wand4 = c.add_element('wand')
  wand4.add_element('wood').text = "Holly"
  wand4.add_element('core').text = "Phoenix Feather"
  wand4.add_element('length').text = "11 inches"
end


