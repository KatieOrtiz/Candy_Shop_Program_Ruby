#Katie Ortiz - Candy Shop Model - 12/01/2021

load 'shopclass.rb'

class Shelf < Shop

    #Class Variables
    Integer @@shelf_removal_count = 0

    #Methods for Shelf Class

    #Method to ask user question to add more shelves
    def self.question_to_add_more_shelves 
        puts "Would you like to add more shelves? Enter 1 for yes and 2 for no\r\n"
        user_add_shelf = gets.chomp
        user_add_shelf = user_add_shelf.to_s

        case user_add_shelf

        when "1"
        add_shelves

        when "2"
        return menu_start_or_end
        else
        puts "Please enter a valid input\r\n"
        question_to_add_more_shelves
        end 
        #end of case 

    end 
    #End of question_to_add_more_shelves
    
    #Method to ask user question to delete more shelves
    def self.question_to_delete_more_shelves 
        puts "Would you like to delete another shelf? Enter 1 for yes and 2 for no\r\n"
        user_delete_shelf = gets.chomp
        user_delete_shelf = user_delete_shelf.to_s

        case user_delete_shelf

        when "1"
        remove_shelves

        when "2"     
        @@shelf_removal_count = 0
        return menu_start_or_end
     
        else
        puts "Please enter a valid input\r\n"
        question_to_delete_more_shelves

        end 
        #end of case when
    end
    #End of question_to_delete_more_shelves

    #Methods for adding and removing shelves
    def self.add_shelves #Method to add shelves to the shop
        puts "How many shelves would you like to add to your shop?\r\n"
        add_shelf_user_input = gets.chomp
        add_shelf_user_input = add_shelf_user_input.to_s
        Shop.initialize_shelves(add_shelf_user_input) 
        puts "#{add_shelf_user_input} shelf/shelves have been added sucessfully \r\n"

        puts "TEST TO SEE IF STUFF SHIFTED IN SHELVES"
        @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}
        add_shelf_user_input = add_shelf_user_input.to_i

        question_to_add_more_shelves
        return

    end
    #End for add_shelves

    #Method to remove shelves from the shop
    def self.remove_shelves 
        @@shelf_removal_count = 0
        puts "Here is the list of shelves available to remove: \r\n"
        @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}

        puts "Which shelf would you like to delete?"
        user_delete_shelf_number = gets.chomp
        user_delete_shelf_number = user_delete_shelf_number.to_i

        @@shelf_removal_count += 1

        @@shelves.delete_at(user_delete_shelf_number) #This will delete the shelf at the specified number

        Shop.update_removed_shelves_count(@@shelf_removal_count) #Updates the shelf count
        question_to_delete_more_shelves

        return
    end 
    #End for remove_shelves

end 
#End of Shelf class
