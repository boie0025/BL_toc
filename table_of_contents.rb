#variables used throughout this program will be up here
#unless I introduce them in the program for logical flow

num = 1       #this is the number of the first chapter
chapters = [] #this is the chapter array
pages = []    #this is the page array
eject = 0     #terminate program?
eject2 = 0    #terminate loop verifying chapter name

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
    puts 'Does Chapter ' + num.to_s + ':' + ' ' + chapter + ' look right?'
    puts 'Y or N'
    exit2 = gets.chomp.downcase
    num = num + 1
    while eject2 != 1
      if exit2 == 'y'
        eject2 = 1
      elsif exit2 == 'n'
        num = num - 1
        eject2 = 1
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
