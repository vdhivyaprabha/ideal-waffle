# Create a thread for casting spells
spell_thread = Thread.new do
    puts "Thread starting"
    spell_list = ["Wingardium Leviosa", "Expelliarmus", "Lumos", "Expecto Patronum", "Alohomora"]
    spell_list.each do |spell|
      begin
        puts "Thread running: casting #{spell}"
        raise "Spell gone wrong!" if spell == "Lumos" # Raise an exception if Lumos is cast
        sleep(0.5) # Sleep for 0.5 seconds to simulate casting time
      rescue => e
        puts "Exception caught: #{e.message}"
      end
    end
    puts "Thread exiting"
  end
  
  puts "Main thread running"
  
  # Wait for the spell thread to finish before exiting
  spell_thread.join
  
  puts "Main thread exiting"
  