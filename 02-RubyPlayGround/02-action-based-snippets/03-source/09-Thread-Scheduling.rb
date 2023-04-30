# Create a thread for casting spells
spell_thread = Thread.new do
    puts "Thread starting"
    spell_list = ["Wingardium Leviosa", "Expelliarmus", "Lumos", "Expecto Patronum", "Alohomora"]
    spell_list.each do |spell|
      puts "Thread running: casting #{spell}"
      sleep(1) # Sleep for 1 second between spells
    end
    puts "Thread exiting"
  end
  
  # Create a thread for checking health
  health_thread = Thread.new do
    puts "Health check starting"
    5.times do |i|
      puts "Health check running: iteration #{i}"
      sleep(0.5) # Sleep for 0.5 seconds between iterations
    end
    puts "Health check exiting"
  end
  
  puts "Main thread running"
  
  # Wait for both threads to finish before exiting
  spell_thread.join
  health_thread.join
  
  puts "Main thread exiting"