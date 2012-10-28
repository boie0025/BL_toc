#variables used throughout this program will be up here
#unless I introduce them in the program for logical flow

num = 1       #this is the number of the first chapter
chapters = [] #this is the chapter array
pages = []    #this is the page array
eject = 0     #terminate program?
chapter_loop = 0 #stops the program from going to the pages section if the user says 'n' to chapter.

puts 'Would you like to make a Table of Contents?'
puts 'Y or N'
exit = gets.chomp.downcase

while eject != 1
  if exit == 'n'
    eject = eject + 1
  elsif exit != 'y' && exit != 'n'
    puts 'Please enter Y or N.'
    exit = gets.chomp.downcase
  elsif eject != 1
    puts 'What would you like to call Chapter ' + num.to_s + '?'
    puts 'Or press enter to exit.'
    chapter = gets.chomp.capitalize
    if chapter == ''
      break
    end
    
    chapter_loop = 0 #trying to get chapter from going to page after a 'n' verification
    while chapter_loop != 1

        eject2 = 0
        while eject2 != 1
          puts 'Does Chapter ' + num.to_s + ':' + ' ' + chapter + ' look right?'
          puts 'Y or N'
          exit2 = gets.chomp.downcase
          if exit2 == 'y'
            chapter = 'Chapter ' + num.to_s + ':' + ' ' + chapter
            chapters.push chapter
            num = num + 1
            #chapter_loop = 1
            eject2 = eject2 + 1
          elsif exit2 == 'n'
            puts 'What would you like to call Chapter ' + num.to_s + '?'
            chapter = gets.chomp.capitalize
          elsif exit2 != 'y' && exit2 != 'n'
            puts 'Please enter Y or N'
          end
          
      chapter_loop = 0
      if exit2 == 'y'
        chapter_loop = 1
      end  
    end
        
       
        puts 'What page does ' + chapter + ' begin on?'
        page = gets.chomp
        page = 'page ' + page
        eject3 = 0
        while eject3 !=1
          puts 'Does ' + chapter + ' ' + page + ' look right?'
          puts 'Y or N'
          exit3 = gets.chomp.downcase
          if exit3 == 'y'
            pages.push page
            eject3 = 1
          elsif exit3 == 'n'
            puts 'What page does ' + chapter + ' begin on?'
            page = gets.chomp
            page = 'page ' + page
          elsif exit3 != 'y' && exit3 != 'n'
            puts 'Please enter Y or N'
        end
      end
    end
    if chapter == ''
      eject = eject + 1
    end
  end
end

if chapters != []
  
  puts 'Here it is!'
  puts
  puts 'Table of Contents'.center(50)
  puts "\n" * 2
  chapters.zip(pages) do |c, p|
    puts "#{c.ljust(30)} #{p.rjust(20)}"
  end
  puts

end

