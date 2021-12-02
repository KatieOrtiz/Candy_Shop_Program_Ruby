#Katie Ortiz - Candy Shop Model - 12/01/2021

#Still in Progress:
#1) I wanted to format the code more to coding standards for Ruby.
#2) I wanted to add more comments to explain what the code was doing. Most comments have been added at the time of submission.
#3) I wanted to perform more extensive testing to find areas I needed to fix bugs in or put in error catching code

#Current Known Issues at the Time of Submission:
#1) No error catching for a user adding to a shelf with candy already stocked on the shelf

load 'shopclass.rb'
load 'shelfclass.rb'
load 'candyclass.rb'

#Method to display the menu for first time users
def menu_first_time_display 
      puts "Are you a new shop owner? Enter 1 for yes and 2 for no"
      user_selection_first_time = gets.chomp
      user_selection_first_time = user_selection_first_time.to_s
      case user_selection_first_time
            when "1"
            Shop.first_time_user
            when "2"
            puts "\r\nWelcome back!\r\n"
            else
                  puts "Please enter a valid input\r\n"
                  menu_first_time_display
      end 
      #End for case
end
#End for menu_first_time_display

#Method to display the menu
def menu_display 
      puts "\r\n***Candy Shop Menu***\r\n"
      puts "Please select an option from the following menu"
      puts "1) Total Inventory Available"
      puts "2) Shelved Candy and Total Shelves in Shop"
      puts "3) Candy Delivery Form" 
      puts "4) Add Shelves"
      puts "5) Remove Shelves"
      puts "6) Rearrange Candy"    

      option_selection = gets.chomp
      option_selection = option_selection.to_s

      case option_selection

       when "1"
            Shop.display_inventory
       when "2"
            Shop.display_shelves
       when "3"
            puts "***Candy Delivery Form***"
            puts "Please fill out the candy delivery form below to accept a shipment of candy"
            Candy.candy_delivery_form
       when "4"
            Shelf.add_shelves
       when "5"
            Shelf.remove_shelves      
       when "6"
            puts "\r\nCandy Organization"
            Candy.candy_organization
       else 
            puts "The input was not recognized. Please try again" 
            menu_display
      end 
      #end of case   


end 
#End for menu_display 

#Method that asks the user if they want to see the main menu again
def menu_start_or_end 
      puts "\r\nWould you like to display the menu again? Press 1 for Yes and 2 for No\r\n"
      user_selection_menu_iterator = gets.chomp
      user_selection_menu_iterator= user_selection_menu_iterator.to_s

      case user_selection_menu_iterator
       when "1"
            menu_display
      when "2"            
            abort("\r\nGoodbye!\r\n")
      else
            puts "The input was not recognized. Please try again\r\n"
            menu_start_or_end
      end 
      #end for case
end 
#End for menu_start_or_end 

puts "\r\nWelcome to the Candy Shop!\r\n"

#Call to methods for menu
menu_first_time_display
menu_display
menu_start_or_end
