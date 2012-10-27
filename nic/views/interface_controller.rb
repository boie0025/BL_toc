class InterfaceController
  
  def self.ask_a_yes_or_no_question(question)
    while true #The return will break the loop, so we just keep whiling until something is returned.
      puts question
      puts 'Y or N'
      response = gets.chomp.downcase
      if response == ?y 
        return true
      elsif response == ?n 
        return false
      end
    end
  end
  
  def self.get_chapter_name(number)
    puts "What would you like to call Chapter #{number}?" #See comments below for exp 
    puts 'Or press enter to exit.'
    return gets.chomp
  end
  
  def self.confirm_chapter(chapter_object)    
    # Using double quotes allows the #{} construct, which interpolates the inner code.  Here I call
    # name() on the chapter_object object, and its output replaces #{...}
    # I return the true/false given by ask_a_yes_or_no_question.  The last call with output
    # in a function is the return value of that function.  so a return in front of this call
    # is implicit.  I didn't do this on the last method, but I could remove the "return" on 
    # get_chapter_name so the last line is:
    # gets.chomp
    
    self.ask_a_yes_or_no_question("Does Chapter #{chapter_object.name} look right?")
  end
  
  def self.display_toc(toc)
    puts "Table of Contents:"
    toc.each do |chapter|
      puts "Chapter ##{chapter.number}, Name: #{chapter.name}"
    end
  end
  
end