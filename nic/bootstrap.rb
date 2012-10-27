require './models/chapter.rb'
require './views/interface_controller.rb'

chapters = []

#Ask if we want to start
if InterfaceController.ask_a_yes_or_no_question('Would you like to make a Table of Contents?')
  
  while (chapter = InterfaceController.get_chapter_name(chapters.count + 1)) != '' 
    
    chapter_object = Chapter.new(chapter)
    if InterfaceController.confirm_chapter(chapter_object)
      chapters << chapter_object #Put our chapter object into our chapter array.
    end
    
  end # end get chapter name.  We land here when chapter name is empty
end