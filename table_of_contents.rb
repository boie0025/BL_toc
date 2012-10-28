#variables used throughout this program will be up here
#unless I introduce them in the program for logical flow

num = 1       #this is the number of the first chapter
chapters = [] #this is the chapter array
pages = []    #this is the page array
eject = 0     #terminate program?

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
    chapter = gets.chomp
    if chapter == ''
      break
    end
    eject2 = 0
    while eject2 != 1
      puts 'Does Chapter ' + num.to_s + ':' + ' ' + chapter + ' look right?'
      puts 'Y or N'
      exit2 = gets.chomp.downcase
      if exit2 == 'y'
        num = num + 1
        eject2 = eject2 + 1
      elsif exit2 == 'n'
        eject2 = eject2 + 1
      elsif exit2 != 'y' && exit2 != 'n'
        puts 'Please enter Y or N'
        exit2 = gets.chomp.downcase
      end
    end
    if chapter == ''
      eject = eject + 1
    end
  end
end
