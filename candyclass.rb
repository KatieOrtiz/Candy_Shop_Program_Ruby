#Katie Ortiz - Candy Shop Model - 12/01/2021

load 'shelfclass.rb'

#Class for Candy
class Candy < Shelf

    #Class Variables
    String @@candy_type = ""   
    Integer @@shipment_number = 0
    Integer @@candy_delivery_form_ID = 1000 


    #Method for candy delivery form
    def self.candy_delivery_form 
        time = Time.new
        @@candy_delivery_form_ID +=1
        candy_type_candy_form = ""
        current_shipment_number = 0     
    
        puts "Form ID: #{@@candy_delivery_form_ID}"
        puts "Current date and time: "
        puts time.strftime("%Y-%m-%d %H:%M:%S")

        puts "Enter shipment number: "

        current_shipment_number = gets
        @@shipment_number = current_shipment_number 

        puts "Please select a candy type from the following list:"
        puts "1) Almond Joy"
        puts "2) Butterfinger"
        puts "3) Fun Dip"
        puts "4) Gummy Bears"
        puts "5) Heath Bar"
        puts "6) Jelly Beans"
        puts "7) Kit Kat"
        puts "8) Lollipops"
        puts "9) Milky Way"
        puts "10) Nerds"
        puts "11) Pop Rocks"
        puts "12) Redvines"
        puts "13) Skittles"
        puts "14) Twix"
        puts "15) Whoppers"
       
        user_candy_type_candy_form_selection = gets.chomp
        user_candy_type_candy_form_selection = user_candy_type_candy_form_selection.to_s
        user_candy_type_candy_form_selection.capitalize

        case user_candy_type_candy_form_selection
        when "1"
            candy_type_candy_form = "Almond Joy"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "2"
            candy_type_candy_form = "Butterfinger"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "3"
            candy_type_candy_form = "Fun Dip"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "4"
            candy_type_candy_form = "Gummy Bears"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "5"
            candy_type_candy_form = "Heath Bar"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "6"
            candy_type_candy_form = "Jelly Beans"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "7"
            candy_type_candy_form = "Kit Kat"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "8"
            candy_type_candy_form = "Lollipops"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "9"
            candy_type_candy_form = "Milky Way"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "10"
            candy_type_candy_form = "Nerds"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "11"
            candy_type_candy_form = "Pop Rocks"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "12"
            candy_type_candy_form = "Redvines"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "13"
            candy_type_candy_form = "Skittles"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "14"
            candy_type_candy_form = "Twix"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        when "15"
            candy_type_candy_form = "Whoppers"
            puts "You have selected the candy type #{candy_type_candy_form}"
            candy_form_candy_enter_unsorted(candy_type_candy_form)
        else 
            puts "You have not selected a valid option" 
            candy_delivery_form
        end 
        #end for case
        
        puts "Please select which shelf you would like to stock with the candy shipment:" 
        @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}
        user_candy_form_shelf_selection = gets.chomp
        user_candy_form_shelf_selection = user_candy_form_shelf_selection.to_i

        candy_form_adding_candy_to_shelves(user_candy_form_shelf_selection, candy_type_candy_form) 

        puts "\r\nThank you! Shipment #{@@shipment_number} with #{candy_type_candy_form} has been added to the shop\r\n"

    end 
    #End for candy_delivery_form

    #Method to push candy from candy form into the unsorted array
    def self.candy_form_candy_enter_unsorted candy_type_candy_form 
        @@unsorted_candy.push(candy_type_candy_form)    
    
    end 
    #End for candy_form_candy_enter_unsorted

    #Method to add candy from candy form to shelves
    def self.candy_form_adding_candy_to_shelves (user_candy_form_shelf_selection, candy_type_candy_form) 
        total_shelves_available = @@shelves.length     
        @@candies.push(candy_type_candy_form)  
        Shop.check_candy_type_update_total(candy_type_candy_form)
        Shop.candy_inventory_count
        unsorted_candy_to_remove = @@unsorted_candy.find_index(candy_type_candy_form)
        @@unsorted_candy.delete_at(unsorted_candy_to_remove)
    
        @@total_shelves_sorted += 1
        @@total_shelves_with_candy += 1
    
        #This should take the user entered shelf number and put in the candy array
        j = user_candy_form_shelf_selection
          
          
        @@shelves[j] = candy_type_candy_form
        total_shelves_available = total_shelves_available - 1 #This reduces the total shelves down by 1
        
        puts "Total shelves sorted: #{@@total_shelves_sorted}"
        @@shelves_left_to_stock = @@shelves_left_to_stock - 1   

    
        #Question to keep sorting
        keep_sorting_candy_question
    
    
    end 
    #End for candy_form_adding_candy_to_shelves

    #Method to organize and reorganize candy
    def self.candy_organization
        
        puts "Would you like to add unsorted candy to shelves or remove sorted candy from shelves to the unsorted inventory? Enter 1 for adding candy and 2 for removing candy\r\n"
        user_candy_organization_selection = gets.chomp
        user_candy_organization_selection = user_candy_organization_selection.to_s

        case user_candy_organization_selection
        when "1"
            if @@unsorted_inventory != 0
            Shop.organizing_candy_to_shelves
            else puts "There are no more candy to be sorted. Please add candy via the Candy Delivery Form. Returning back to the menu....\r\n"
                menu_display
            end      
        when "2"
            if @@total_shelves_with_candy != 0
            Shop.remove_candy_from_shelves
            else puts  "There are no shelves stocked with candy. Please add candy to shelves\r\n"
                candy_organization
            end 
        else  puts "Please enter a valid option\r\n"
            candy_organization

        end 
        #end of case

    end 
    #End for candy_organization 
end 
#End of Candy class

