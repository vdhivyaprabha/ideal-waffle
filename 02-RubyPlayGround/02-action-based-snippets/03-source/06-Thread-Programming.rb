# Create a thread for Hermione casting spells
hermione_thread = Thread.new do
    spell_list = ["Wingardium Leviosa", "Expelliarmus", "Lumos", "Expecto Patronum", "Alohomora"]
    spell_list.each do |spell|
      puts "Hermione casts #{spell}"
      sleep(0.5) # Sleep for 0.5 seconds to simulate casting time
    end
  end
  
  # Create a thread for Harry casting spells
  harry_thread = Thread.new do
    spell_list = ["Stupefy", "Protego", "Accio", "Expecto Patronum", "Expelliarmus"]
    spell_list.each do |spell|
      puts "Harry casts #{spell}"
      sleep(0.5) # Sleep for 0.5 seconds to simulate casting time
    end
  end
  
  # Create a thread for Ron casting spells
  ron_thread = Thread.new do
    spell_list = ["Wingardium Leviosa", "Expelliarmus", "Alohomora", "Rictusempra", "Slugulus Eructo"]
    spell_list.each do |spell|
      puts "Ron casts #{spell}"
      sleep(0.5) # Sleep for 0.5 seconds to simulate casting time
    end
  end
  
  # Wait for all threads to finish before exiting
  hermione_thread.join
  harry_thread.join
  ron_thread.join
  