require 'builder'

# Create a new XML document using Builder
xml = Builder::XmlMarkup.new(:indent => 2)
xml.instruct! :xml, :version => "1.0", :encoding => "UTF-8"

# Build the XML document
xml.harry_potter do
  xml.book do
    xml.title "Harry Potter and the Philosopher's Stone"
    xml.author "J.K. Rowling"
    xml.published_year 1997
    xml.isbn "9780747532743"
    xml.publisher "Bloomsbury"
    xml.characters do
      xml.character do
        xml.name "Harry Potter"
        xml.birth_year 1980
        xml.house "Gryffindor"
        xml.wand do
          xml.wood "Holly"
          xml.core "Phoenix Feather"
          xml.length "11 inches"
        end
      end
      xml.character do
        xml.name "Hermione Granger"
        xml.birth_year 1979
        xml.house "Gryffindor"
        xml.wand do
          xml.wood "Vine"
          xml.core "Dragon Heartstring"
          xml.length "10¾ inches"
        end
      end
      xml.character do
        xml.name "Ron Weasley"
        xml.birth_year 1980
        xml.house "Gryffindor"
        xml.wand do
          xml.wood "Willow"
          xml.core "Unicorn Hair"
          xml.length "14 inches"
        end
      end
    end
  end
  xml.book do
    xml.title "Harry Potter and the Chamber of Secrets"
    xml.author "J.K. Rowling"
    xml.published_year 1998
    xml.isbn "9780747538486"
    xml.publisher "Bloomsbury"
    xml.characters do
      xml.character do
        xml.name "Harry Potter"
        xml.birth_year 1980
        xml.house "Gryffindor"
        xml.wand do
          xml.wood "Holly"
          xml.core "Phoenix Feather"
          xml.length "11 inches"
        end
      end
      xml.character do
        xml.name "Hermione Granger"
        xml.birth_year 1979
        xml.house "Gryffindor"
        xml.wand do
          xml.wood "Vine"
          xml.core "Dragon Heartstring"
          xml.length "10¾ inches"
        end
      end
      xml.character do
        xml.name "Ron Weasley"
        xml.birth_year 1980
        xml.house "Gryffindor"
        xml.wand do
          xml.wood "Willow"
          xml.core "Unicorn Hair"
          xml.length "14 inches"
        end
      end
    end
  end
end

# Write the XML document to a file
File.open("../01-outputs-data/harry_potter.xml", "w") do |file|
  file.write(xml.target!)
end
