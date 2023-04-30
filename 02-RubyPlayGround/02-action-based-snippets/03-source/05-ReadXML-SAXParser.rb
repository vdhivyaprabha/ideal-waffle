require 'rexml/parsers/sax2parser'
require 'rexml/streamlistener'

class HarryPotterListener
  
  include REXML::StreamListener

  def initialize
    @current_element = nil
    @current_character = nil
  end

  def tag_start(name, attributes)
    case name
    when 'book'
      puts "Book:"
    when 'title'
      @current_element = :title
    when 'author'
      @current_element = :author
    when 'published_year'
      @current_element = :published_year
    when 'isbn'
      @current_element = :isbn
    when 'publisher'
      @current_element = :publisher
    when 'characters'
      puts "\tCharacters:"
    when 'character'
      @current_character = {}
    when 'name'
      @current_element = :name
    when 'birth_year'
      @current_element = :birth_year
    when 'house'
      @current_element = :house
    when 'wand'
      puts "\t\tWand:"
    when 'wood'
      @current_element = :wood
    when 'core'
      @current_element = :core
    when 'length'
      @current_element = :length
    end
  end

  def text(text)
    case @current_element
    when :title
      puts "\tTitle: #{text}"
    when :author
      puts "\tAuthor: #{text}"
    when :published_year
      puts "\tPublished Year: #{text}"
    when :isbn
      puts "\tISBN: #{text}"
    when :publisher
      puts "\tPublisher: #{text}"
    when :name
      puts "\tName: #{text}"
      @current_character[:name] = text
    when :birth_year
      puts "\tBirth Year: #{text}"
      @current_character[:birth_year] = text
    when :house
      puts "\tHouse: #{text}"
      @current_character[:house] = text
    when :wood
      puts "\t\tWood: #{text}"
      @current_character[:wand] ||= {}
      @current_character[:wand][:wood] = text
    when :core
      puts "\t\tCore: #{text}"
      @current_character[:wand] ||= {}
      @current_character[:wand][:core] = text
    when :length
      puts "\t\tLength: #{text}"
      @current_character[:wand] ||= {}
      @current_character[:wand][:length] = text
    end
  end

  def tag_end(name)
    case name
    when 'book'
      puts "----------------------------------------"
    when 'character'
      puts "\t\tName: #{@current_character[:name]}"
      puts "\t\tBirth Year: #{@current_character[:birth_year]}"
      puts "\t\tHouse: #{@current_character[:house]}"
      if @current_character[:wand]
        puts "\t\tWand:"
        puts "\t\t\tWood: #{@current_character[:wand][:wood]}"
        puts "\t\t\tCore: #{@current_character[:wand][:core]}"
        puts "\t\t\tLength: #{@current_character[:wand][:length]}"
      end
    end
  end
end

parser = REXML::Parsers::SAX2Parser.new(File.new('../00-inputs-data/harry_potter.xml'))
parser.listen(HarryPotterListener.new)
parser.parse
