# Define a TodoItem class to represent a single todo item
class TodoItem
    attr_accessor :description, :completed
  
    def initialize(description)
      @description = description
      @completed = false
    end
  
    def toggle_completion
      @completed = !@completed
    end
  end
  
  # Define a TodoList class to represent a collection of TodoItems
  class TodoList
    def initialize
      @items = []
    end
  
    def add_item(description)
      @items << TodoItem.new(description)
    end
  
    def toggle_item_completion(index)
      @items[index].toggle_completion
    end
  
    def remove_item(index)
      @items.delete_at(index)
    end
  
    def display
      puts "Todo List:"
      puts "----------"
      @items.each_with_index do |item, index|
        status = item.completed ? "[x]" : "[ ]"
        puts "#{index+1}. #{status} #{item.description}"
      end
    end
  end
  
  # Initialize a new TodoList and display it
  todo_list = TodoList.new
  todo_list.display
  
  # Loop to allow the user to interact with the TodoList
  loop do
    puts "Enter a command (add/remove/toggle/display/exit):"
    command = gets.chomp.downcase
  
    case command
    when "add"
      puts "Enter a description:"
      description = gets.chomp
      todo_list.add_item(description)
    when "remove"
      puts "Enter an index to remove:"
      index = gets.chomp.to_i - 1
      todo_list.remove_item(index)
    when "toggle"
      puts "Enter an index to toggle:"
      index = gets.chomp.to_i - 1
      todo_list.toggle_item_completion(index)
    when "display"
      todo_list.display
    when "exit"
      break
    else
      puts "Unknown command"
    end
  end
  
  puts "Goodbye!"
  