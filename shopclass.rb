#Katie Ortiz - Candy Shop Model - 12/01/2021

class Shop
    #Class Variables
     @@unsorted_candy= [] #Unsorted candy array
     @@candies = [] #Candy array
     @@shelves = [] #Shelves array
     #Variables for marking a candy type as shelved or unshelved
     @@a_shelved_or_unshelved = "", @@b_shelved_or_unshelved = "", @@f_shelved_or_unshelved = "", @@g_shelved_or_unshelved = ""
     @@h_shelved_or_unshelved = "", @@j_shelved_or_unshelved = "", @@k_shelved_or_unshelved = "", @@l_shelved_or_unshelved = ""
     @@m_shelved_or_unshelved = "", @@n_shelved_or_unshelved = "", @@p_shelved_or_unshelved = "", @@r_shelved_or_unshelved = ""   
     @@s_shelved_or_unshelved = "", @@t_shelved_or_unshelved = "", @@w_shelved_or_unshelved = ""
     Integer @@candy_inventory = 0 #Total count of sorted candy in the shop
     Integer @@unsorted_inventory = 0 #Total count of unsorted candy in the shop
     Integer @@total_shelves_with_candy = 0 #Total count of shelves that contain candy
     Integer @@total_shelves_sorted = 0 #Total count of shelves sorted
     Integer @@current_shelf_total = 0 #Total count of all shelves
     Integer @@shelves_left_to_stock = 0 #Total count of shelves that are empty
     #Variables for total count per candy type
     @@a_candy_type = 0
     @@b_candy_type = 0
     @@f_candy_type = 0
     @@g_candy_type = 0
     @@h_candy_type = 0
     @@j_candy_type = 0
     @@k_candy_type = 0
     @@l_candy_type = 0
     @@m_candy_type = 0
     @@n_candy_type = 0
     @@p__candy_type = 0
     @@r_candy_type = 0
     @@s_candy_type = 0 
     @@t_candy_type = 0
     @@w_candy_type = 0

    #Methods for Shop Class

    #Update methods
    #Method to update the total shelves count when shelves are removed 
    def self.update_removed_shelves_count amount_of_removed_shelves 
        @@current_shelf_total = @@current_shelf_total - amount_of_removed_shelves
        puts "This is the current shelf total after removing #{amount_of_removed_shelves} shelf/shelves: #{@@current_shelf_total} \r\n"
    end 
    #End for update_removed_shelves_count 

    #Method that returns if the candy type is "Shelved" or "Unshelved"
    def self.shelved_or_unshelved_check candy_type_shelved_not_shelved 
        case candy_type_shelved_not_shelved
        when "Almond Joy"
            return puts "Almond Joy: #{@@a_shelved_or_unshelved}"
        when "Butterfinger"
            return puts "Butterfinger: #{@@b_shelved_or_unshelved}"
        when "Fun Dip"
            return puts "Fun Dip: #{@@f_shelved_or_unshelved}"
        when "Gummy Bears"
            return puts "Gummy Bears: #{@@g_shelved_or_unshelved}"
        when "Heath Bar"
            return puts "Heath Bar: #{@@h_shelved_or_unshelved}"
        when "Jelly Beans"
            return puts "Jelly Beans: #{@@j_shelved_or_unshelved}"
        when "Kit Kat"
            return puts "Kit Kat: #{@@k_shelved_or_unshelved}"
        when "Lollipops"
            return puts "Lollipops: #{@@l_shelved_or_unshelved}"
        when "Milky Way"
            return puts "Milky Way: #{@@m_shelved_or_unshelved}"
        when "Nerds"
            return puts "Nerds: #{@@n_shelved_or_unshelved}"
        when "Pop Rocks"
            return puts "Pop Rocks: #{@@p_shelved_or_unshelved}"
        when "Redvines"
            return puts "Redvines: #{@@r_shelved_or_unshelved}"
        when "Skittles"
            return puts "Skittles: #{@@s_shelved_or_unshelved}"
        when "Twix"
            return puts "Twix: #{@@t_shelved_or_unshelved}"
        when "Whoppers"
            return puts "Whoppers: #{@@w_shelved_or_unshelved}"
        else 
        end 
        #end for case
    end 
    #End of shelved_or_unshelved_check

    #Method that returns how many per candy type
    def self.candy_quantity_check candy_type_quantity
        case candy_type_quantity
        when "Almond Joy"
            return puts "Almond Joy: #{@@a_candy_type}"
        when "Butterfinger"
            return puts "Butterfinger: #{@@b_candy_type}"
        when "Fun Dip"
            return puts "Fun Dip: #{@@f_candy_type}"
        when "Gummy Bears"
            return puts "Gummy Bears: #{@@g_candy_type}"
        when "Heath Bar"
            return puts "Heath Bar: #{@@h_candy_type}"
        when "Jelly Beans"
            return puts "Jelly Beans: #{@@j_candy_type}"
        when "Kit Kat"
            return puts "Kit Kat: #{@@k_candy_type}"
        when "Lollipops"
            return puts "Lollipops: #{@@l_candy_type}"
        when "Milky Way"
            return puts "Milky Way: #{@@m_candy_type}"
        when "Nerds"
            return puts "Nerds: #{@@n_candy_type}"
        when "Pop Rocks"
            return puts "Pop Rocks: #{@@p_candy_type}"
        when "Redvines"
            return puts "Redvines: #{@@r_candy_type}"
        when "Skittles"
            return puts "Skittles: #{@@s_candy_type}"
        when "Twix"
            return puts "Twix: #{@@t_candy_type}"
        when "Whoppers"
            return puts "Whoppers: #{@@w_candy_type}"
        else 
        end 
        #end for case
    end #End of candy_quantity_check
   
    #Method to mark a candy type as "Shelved"
    def self.shelved_update candy_type_shelved 
        case candy_type_shelved
        when "Almond Joy"
             @@a_shelved_or_unshelved = "Shelved"
        when "Butterfinger"
             @@b_shelved_or_unshelved = "Shelved"
        when "Fun Dip"
             @@f_shelved_or_unshelved = "Shelved"
        when "Gummy Bears"
             @@g_shelved_or_unshelved = "Shelved"
        when "Heath Bar"
             @@h_shelved_or_unshelved = "Shelved"
        when "Jelly Beans"
             @@j_shelved_or_unshelved = "Shelved"
        when "Kit Kat"
             @@k_shelved_or_unshelved = "Shelved"
        when "Lollipops"
             @@l_shelved_or_unshelved = "Shelved"
        when "Milky Way"
             @@m_shelved_or_unshelved = "Shelved"
        when "Nerds"
             @@n_shelved_or_unshelved = "Shelved"
        when "Pop Rocks"
             @@p_shelved_or_unshelved = "Shelved"
        when "Redvines"
             @@r_shelved_or_unshelved = "Shelved"
        when "Skittles"
             @@s_shelved_or_unshelved = "Shelved"
        when "Twix"
             @@t_shelved_or_unshelved = "Shelved"
        when "Whoppers"
             @@w_shelved_or_unshelved = "Shelved"
        else 
        end 
        #end for case
    end 
    #End for shelved_update

    #Method to mark a candy type as "Unshelved"
    def self.unshelved_update candy_type_unshelved 
        case candy_type_unshelved
        when "Almond Joy"
             @@a_shelved_or_unshelved = "Unshelved"
        when "Butterfinger"
             @@b_shelved_or_unshelved = "Unshelved"
        when "Fun Dip"
             @@f_shelved_or_unshelved = "Unshelved"
        when "Gummy Bears"
             @@g_shelved_or_unshelved = "Unshelved"
        when "Heath Bar"
             @@h_shelved_or_unshelved = "Unshelved"
        when "Jelly Beans"
             @@j_shelved_or_unshelved = "Unshelved"
        when "Kit Kat"
             @@k_shelved_or_unshelved = "Unshelved"
        when "Lollipops"
             @@l_shelved_or_unshelved = "Unshelved"
        when "Milky Way"
             @@m_shelved_or_unshelved = "Unshelved"
        when "Nerds"
             @@n_shelved_or_unshelved = "Unshelved"
        when "Pop Rocks"
             @@p_shelved_or_unshelved = "Unshelved"
        when "Redvines"
             @@r_shelved_or_unshelved = "Unshelved"
        when "Skittles"
             @@s_shelved_or_unshelved = "Unshelved"
        when "Twix"
             @@t_shelved_or_unshelved = "Unshelved"
        when "Whoppers"
             @@w_shelved_or_unshelved = "Unshelved"

        else 
        end 
        #end for case
    end
    #End for unshelved_update

    #Method to update the candy type quantity to 0 to initialize or clear
    def self.update_candy_type_quantity 
        @@a_candy_type = 0
        @@b_candy_type = 0
        @@f_candy_type = 0
        @@g_candy_type = 0
        @@h_candy_type = 0
        @@j_candy_type = 0
        @@k_candy_type = 0
        @@l_candy_type = 0
        @@m_candy_type = 0
        @@n_candy_type = 0
        @@p__candy_type = 0
        @@r_candy_type = 0
        @@s_candy_type = 0 
        @@t_candy_type = 0
        @@w_candy_type = 0
    end
    #End of update_candy_type_quantity

    #Method to update quantity of each candy type
    def self.check_candy_type_update_total candy_type_parameter 
        case candy_type_parameter
        when "Almond Joy"
            @@a_candy_type += 1
        when "Butterfinger"
            @@b_candy_type += 1
        when "Fun Dip"
            @@f_candy_type += 1
        when "Gummy Bears"
            @@g_candy_type += 1
        when "Heath Bar"
            @@h_candy_type += 1
        when "Jelly Beans"
            @@j_candy_type += 1
        when "Kit Kat"
            @@k_candy_type += 1
        when "Lollipops"
            @@l_candy_type += 1
        when "Milky Way"
            @@m_candy_type += 1
        when "Nerds"
            @@n_candy_type += 1
        when "Pop Rocks"
            @@p__candy_type += 1
        when "Redvines"
            @@r_candy_type += 1
        when "Skittles"
            @@s_candy_type += 1
        when "Twix"
            @@t_candy_type += 1
        when "Whoppers"
            @@w_candy_type += 1
        else 
        end
        #end for case
    end
    #End for check_candy_type_update_total

    #Method to subtract 1 from quantity of each candy type
    def self.check_candy_type_subtract_total candy_type_parameter 
        case candy_type_parameter
        when "Almond Joy"
            @@a_candy_type  = @@a_candy_type - 1 
        when "Butterfinger"
            @@b_candy_type = @@b_candy_type - 1
        when "Fun Dip"
            @@f_candy_type = @@f_candy_type - 1
        when "Gummy Bears"
            @@g_candy_type = @@g_candy_type - 1
        when "Heath Bar"
            @@h_candy_type = @@h_candy_type - 1
        when "Jelly Beans"
            @@j_candy_type = @@j_candy_type - 1
        when "Kit Kat"
            @@k_candy_type = @@k_candy_type - 1
        when "Lollipops"
            @@l_candy_type = @@l_candy_type - 1
        when "Milky Way"
            @@m_candy_type = @@m_candy_type - 1
        when "Nerds"
            @@n_candy_type = @@n_candy_type - 1
        when "Pop Rocks"
            @@p__candy_type = @@p__candy_type - 1
        when "Redvines"
            @@r_candy_type = @@r_candy_type - 1
        when "Skittles"
            @@s_candy_type = @@s_candy_type - 1
        when "Twix"
            @@t_candy_type = @@t_candy_type - 1
        when "Whoppers"
            @@w_candy_type = @@w_candy_type - 1
        else 

        end
        #end for case
    end
    #End for check_candy_type_update_total

    #Clearing methods
    
    #Method to clear sorted shelves count
    def self.clear_total_shelves_sorted 
        @@total_shelves_sorted = 0
    end 
    #End for clear_total_shelves_sorted

    #Method to add the different candy types. Make sure to add a quantity for each candy type
    def self.add_candy_types candy_type 
        @@unsorted_candy.push(candy_type)       
        return @@unsorted_candy
    end 
    #End for add_candy_types

    #Method to iterate through the candies array and keep track of how many candies in a count
    def self.candy_inventory_count 
        if @@shelves.include? 'Almond Joy'
            @@candy_inventory += 1           
        else 
        end       
        
        if @@shelves.include? 'Butterfinger'
            @@candy_inventory += 1
        else 
        end

        if @@shelves.include? 'Fun Dip'
            @@candy_inventory += 1

        else 
        end

        if @@shelves.include? 'Gummy Bears'
            @@candy_inventory += 1
        else 
        end
  
        if @@shelves.include? 'Heath Bar'
            @@candy_inventory += 1

        else 
        end

        if @@shelves.include? 'Jelly Beans'
            @@candy_inventory += 1
        else 
        end

        if @@shelves.include? 'Kit Kat'
            @@candy_inventory += 1
   
        else 
        end

        if @@shelves.include? 'Lollipops'
            @@candy_inventory += 1

        else 
        end

        if @@shelves.include? 'Milky Way'
            @@candy_inventory += 1
        else 
        end
        
        if @@shelves.include? 'Nerds'
            @@candy_inventory += 1
        else 
        end
        
        if @@shelves.include? 'Pop Rocks'
            @@candy_inventory += 1       
        else 
        end

        if @@shelves.include? 'Redvines'
            @@candy_inventory += 1      
        else 
        end

        if @@shelves.include? 'Skittles'
            @@candy_inventory += 1  
        else 
        end

        if @@shelves.include? 'Twix'
            @@candy_inventory += 1  
        else 
        end

        if @@shelves.include? 'Whoppers'
            @@candy_inventory += 1  
    
        else 
        end   

    end 
    #End for candy_inventory_count

    #Methods for initalizing 

   #Method for shelf initialization for new shop owners
   def self.initialize_shelves(user_shelf_count) 
    user_shelf_count = user_shelf_count.to_i
    new_shelf_content =  ""

    #Loop for initializing shelves
        loop do              
        @@shelves.push(new_shelf_content)  
        @@current_shelf_total += 1        
        @@current_shelf_total = @@current_shelf_total.to_i
        user_shelf_count = user_shelf_count - 1        
        break if user_shelf_count == 0
        end 
        #end of loop        

   end 
   #End for initialize_shelves

 
   #Method to initialize candy
   def self.initialize_candy 
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

    user_candy_type_selection = gets.chomp
    user_candy_type_selection = user_candy_type_selection.to_s
    user_candy_type_selection.capitalize
    
        case user_candy_type_selection
        when "1"
            candy_type_first_time_user= "Almond Joy"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user)           
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "2"
            candy_type_first_time_user = "Butterfinger"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)            
            unshelved_update(candy_type_first_time_user)
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "3"
            candy_type_first_time_user = "Fun Dip"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user) 
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "4"
            candy_type_first_time_user = "Gummy Bears"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user)      
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "5"
            candy_type_first_time_user = "Heath Bar"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user) 
            unshelved_update(candy_type_first_time_user) 
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "6"
            candy_type_first_time_user = "Jelly Beans"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)  
            unshelved_update(candy_type_first_time_user)
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "7"
            candy_type_first_time_user = "Kit Kat"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user) 
            unshelved_update(candy_type_first_time_user)     
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "8"
            candy_type_first_time_user = "Lollipops"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)   
            unshelved_update(candy_type_first_time_user) 
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "9"
            candy_type_first_time_user = "Milky Way"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user) 
            unshelved_update(candy_type_first_time_user)     
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "10"
            candy_type_first_time_user = "Nerds"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user)        
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "11"
            candy_type_first_time_user = "Pop Rocks"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user)     
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "12"
            candy_type_first_time_user = "Redvines"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)        
            unshelved_update(candy_type_first_time_user)      
            (candy_type_first_time_user)
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "13"
            candy_type_first_time_user = "Skittles"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user)        
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "14"
            candy_type_first_time_user = "Twix"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user) 
            unshelved_update(candy_type_first_time_user)     
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        when "15"
            candy_type_first_time_user = "Whoppers"
            puts "You have selected the candy type #{candy_type_first_time_user}"
            @@unsorted_candy.push(candy_type_first_time_user)
            unshelved_update(candy_type_first_time_user)    
            puts "#{candy_type_first_time_user} has been added to the inventory. The candy needs to be organized to the shelves\r\n"
        else 
            puts "You have not selected a valid option. Please try again\r\n" 
            initialize_candy
        end 
        #End of case 

        #Call to method which asks user if they want to add more candy
        add_more_candy_option      

   end 
   #End for initialize_candy

   #Method to sort the unsorted candy
   def self.unsorted_candy_organization user_shelf_selection       
    total_shelves_available = @@shelves.length #This assigns a variable to the amount of shelves that are initialized in shelves array

    puts "Please enter which candy from the unsorted inventory to put on this shelf\r\n"
    puts "Unsorted Candy Types"
    @@unsorted_candy.each_with_index {|x| puts "Candy Type: #{x}"}
    puts "\r\n"

    user_selection_candy_organization = gets.chomp
    user_selection_candy_organization = user_selection_candy_organization.to_s
    user_selection_candy_organization.capitalize
    saved_user_shelf_selection = user_shelf_selection
    user_shelf_selection = user_shelf_selection.to_s
    saved_user_shelf_selection = saved_user_shelf_selection.to_i

    if @@unsorted_candy.include? user_selection_candy_organization        
        @@candies.push(user_selection_candy_organization) #Adds the candy type to the candies array
        candy_type_count = @@unsorted_candy.count(user_selection_candy_organization) #Should count how many of this candy to properly update total 
        puts "Candy Type Count #{candy_type_count}"
       
        #This should take the user entered shelf number and put in the candy array
        j = saved_user_shelf_selection     
        
        @@shelves[j] = user_selection_candy_organization #Updates the specified shelf with the specified candy type
        total_shelves_available = total_shelves_available - 1 #This reduces the total shelves down by 1
 
        @@total_shelves_sorted += 1
        @@total_shelves_with_candy += 1
 
        shelved_update(user_selection_candy_organization) #Marks the candy type as "shelved"
 
        puts "\r\nTotal shelves sorted: #{@@total_shelves_sorted}"
        @@shelves_left_to_stock = @@shelves_left_to_stock - 1
      
        loop do
        check_candy_type_update_total(user_selection_candy_organization) #Updates the quantity of the candy    
        candy_type_count = candy_type_count - 1
        candy_inventory_count
         break if candy_type_count == 0 

        end 
        #end of loop     
     
        #Deletes all instances of the candy type specified in the unsorted array
        while @@unsorted_candy.include? user_selection_candy_organization
        unsorted_candy_to_remove = @@unsorted_candy.find_index(user_selection_candy_organization)
        @@unsorted_candy.delete_at(unsorted_candy_to_remove)
        end
        #end for while loop   
         
    else
        puts "Please select a valid option\r\n"
        unsorted_candy_organization(user_shelf_selection)  
        
    end 
    #end of if else 
    puts "\r\n"

    #Call to method which asks user if they want to keep sorting
    keep_sorting_candy_question

   end 
   #End for unsorted_candy_organization

   #Method to organize the candy to the shelves
   def self.organizing_candy_to_shelves 
    if @@shelves_left_to_stock != 0 #This catches if there are no shelves left to stock
       
        puts "Please select shelves from the following list to organize your candy\r\n"

    else return puts "There are no shelves left to stock. Returning to the main menu...\r\n"         
    end 
    #end of if else
     
    @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}
    puts "\r\n"

    user_shelf_selection = gets.chomp
    user_shelf_selection = user_shelf_selection.to_s

        puts "You have selected shelf number #{user_shelf_selection}. \r\n"
        unsorted_candy_organization(user_shelf_selection) #Passes the shelf selection to the unsorted candy organization method
    end 
    #End for organizing_candy_to_shelves


    #Method for first time user menu
    def self.first_time_user 
        Integer user_shelf_count = 0
        puts "Welcome new shop owner!"
        puts "Please create your shop below!\r\n"

        #Shelf creation
        puts "How many shelves would you like to add to your shop? (Please enter a number greater than 0)\r\n"
        user_shelf_count = gets.chomp
        user_shelf_count = user_shelf_count.to_s
   
        if user_shelf_count > "0"
            user_shelf_count = user_shelf_count.to_i
            @@shelves_left_to_stock = user_shelf_count
            initialize_shelves(user_shelf_count)

        else
            puts "Please try again and enter a valid number that is greater than 0\r\n"
            first_time_user
        end 
        #end of if else

        #Candy adding
        initialize_candy

        #Organizing candy to shelves
        organizing_candy_to_shelves

        #This clears the total shelves sorted count when the organization is done
        clear_total_shelves_sorted


    end 
    #End for first_time_user 

    #Question Methods

    #Method to add more candy to the shop
    def self.add_more_candy_option 
        puts "Would you like to add more candy? Press 1 for yes and 2 for no\r\n"
        user_selection = gets.chomp
        user_selection = user_selection.to_s
        
        
        case user_selection
        when "1"
            initialize_candy
        
        when "2"
            puts "Done adding candy\r\n"
            
        else 
            puts "Please enter a valid selection\r\n"
            add_more_candy_option
    
        end 
        #end for case

    end
    #End for add_more_candy_option

    def self.keep_sorting_candy_question #Method that asks user if they want to keep sorting candy
        @@candy_to_sort = @@unsorted_candy.length

        if @@candy_to_sort != 0 #This catches if there is no candy left to sort
            puts "Would you like to keep sorting? Enter 1 for yes and 2 for no\r\n"
            keep_sorting = gets.chomp
            keep_sorting = keep_sorting.to_s
            
            case keep_sorting
            when "1"
                organizing_candy_to_shelves

            when "2"
                puts "Done sorting unsorted candy\r\n"
            return
            else 
                puts "Please enter a valid selection\r\n"
                keep_sorting_candy_question
         end 
         #end to case 
          
    
        else return puts "There is no candy left to sort. Returning to the main menu...\r\n"
             
        end 
        #end of if else       

    end 
    #End to keep_sorting_candy_question

    #Method to ask user if they want to keep removing shelved candy
    def self.keep_removing_candy_question
        if @@unsorted_inventory != 0
            puts "Would you like to keep removing candy from shelves? Enter 1 for yes and 2 for no"
            keep_removing_candy = gets.chomp
            keep_removing_candy = keep_removing_candy.to_s
            
        case keep_removing_candy

        when "1"
            remove_candy_from_shelves

        when "2"
            menu_display

        end 
        #end for case
        else return puts "There is no more unsorted candy. Returning to the main menu...\r\n"

        end 
        #end for if else
    end 
    #End for keep_removing_candy_question

    #Display Methods
    #Method to display current shelves
    def self.display_shelves 
        puts "Here are the candy and the shelf numbers in stock currently:\r\n"
        @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}
        puts "Total shelves in the shop: #{@@current_shelf_total}"
    end 
    #End for display_shelves

    #Method to display current inventory, both sorted and unsorted
    def self.display_inventory 
        
        #Sorted inventory display and counter
        puts "\r\nHere is the available sorted inventory\r\n"        
        @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}
        puts "\r\nTotal Shelf Count: #{@@current_shelf_total}"

        puts "Total Sorted Candy: #{@@candy_inventory}"
        puts "Total Quantity per Candy Type on Shelves: "

        if @@shelves.include? 'Almond Joy'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Almond Joy")}
            candy_quantity_check(result_for_candy_quantity)
            
        else 
        end        
        
        if @@shelves.include? 'Butterfinger'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Butterfinger")}           
            candy_quantity_check(result_for_candy_quantity)
        else 
        end

        if @@shelves.include? 'Fun Dip'
             result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Fun Dip")}
             candy_quantity_check(result_for_candy_quantity)

        else 
        end

        if @@shelves.include? 'Gummy Bears'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Gummy Bears")}
             candy_quantity_check(result_for_candy_quantity)
        else 
        end
  
        if @@shelves.include? 'Heath Bar'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Heath Bar")}
             candy_quantity_check(result_for_candy_quantity)

        else 
        end

        if @@shelves.include? 'Jelly Beans'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Jelly Beans")}
            candy_quantity_check(result_for_candy_quantity)
        else 
        end

        if @@shelves.include? 'Kit Kat'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Kit Kat")}
            candy_quantity_check(result_for_candy_quantity)
   
        else 
        end

        if @@shelves.include? 'Lollipops'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Lollipops")}
            candy_quantity_check(result_for_candy_quantity)

        else 
        end

        if @@shelves.include? 'Milky Way'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Milky Way")}
            candy_quantity_check(result_for_candy_quantity)
        else 
        end
        
        if @@shelves.include? 'Nerds'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Nerds")}
            candy_quantity_check(result_for_candy_quantity)

        else 
        end
        
        if @@shelves.include? 'Pop Rocks'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Pop Rocks")}
            candy_quantity_check(result_for_candy_quantity)        
        else 
        end

        if @@shelves.include? 'Redvines'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Redvines")}
            candy_quantity_check(result_for_candy_quantity)        
        else 
        end

        if @@shelves.include? 'Skittles'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Skittles")}
            candy_quantity_check(result_for_candy_quantity)
        else 
        end

        if @@shelves.include? 'Twix'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Twix")}
            candy_quantity_check(result_for_candy_quantity)
        else 
        end

        if @@shelves.include? 'Whoppers'
            result_for_candy_quantity = @@shelves.find {|candy_type_quantity| candy_type_quantity.include?("Whoppers")}
            candy_quantity_check(result_for_candy_quantity)
    
        else 
        end      

        puts "\r\nShelving Status for Candy in Inventory:\r\n"
        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Almond Joy")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Butterfinger")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Fun Dip")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Gummy Bears")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Heath Bar")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Jelly Beans")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Kit Kat")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Lollipops")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Milky Way")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Nerds")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Pop Rocks")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Redvines")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Skittles")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Twix")}
        shelved_or_unshelved_check (sorted_result)

        sorted_result = @@candies.find {|sorted_candy_type_result| sorted_candy_type_result.include?("Whoppers")}
        shelved_or_unshelved_check (sorted_result)

        puts "\r\nTotal Shelves Sorted with Candy: #{@@total_shelves_with_candy}"

         #Unsorted inventory display and counter
         puts "\r\nHere is the available unsorted inventory\r\n"
         @@unsorted_candy.each{|x| puts x}
         for i in @@unsorted_candy do
            @@unsorted_inventory +=1
            end
            puts "\r\nUnsorted Inventory Count: #{@@unsorted_inventory}"
           
            puts "\r\nShelving Status for Unsorted Candy:\r\n"
            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Almond Joy")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Butterfinger")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Fun Dip")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Gummy Bears")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Heath Bar")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Jelly Beans")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Kit Kat")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Lollipops")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Milky Way")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Nerds")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Pop Rocks")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Redvines")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Skittles")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Twix")}
            shelved_or_unshelved_check (unsorted_result)

            unsorted_result = @@unsorted_candy.find {|candy_type_result| candy_type_result.include?("Whoppers")}
            shelved_or_unshelved_check (unsorted_result) 
       
    end 
    #End for display_inventory

    #Method to remove candy from sorted shelves and move them to unsorted
    def self.candy_removal_organization user_shelf_selection_for_candy_removal 
        
        user_shelf_selection_for_candy_removal = user_shelf_selection_for_candy_removal.to_i
      
        candy_removed_copy = @@shelves[user_shelf_selection_for_candy_removal]  #This should find the candy that the user wants to remove and save the candy type
        @@shelves.delete_at(user_shelf_selection_for_candy_removal) #This should delete the candy and shelf
        @@shelves.insert(user_shelf_selection_for_candy_removal, "") #This should keep the shelf but make it "empty"
        candy_to_move_to_unsorted = @@candies.find_index(candy_removed_copy) #This finds the index of the candy that matches what was removed from the shelf
        @@candies.delete_at(candy_to_move_to_unsorted) #This should remove the candy from the sorted candy array
        check_candy_type_subtract_total(candy_to_move_to_unsorted) #This updates the total of the candy type
        @@unsorted_candy.push(candy_removed_copy) #This moves the candy type into the unsorted array
    
    end
    #End for candy_removal_organization

    #Method to select shelf number to remove candy
    def self.remove_candy_from_shelves      
        puts "Please select shelves from the following list to remove the candy"
        @@shelves.each_with_index{|x, index| puts "Candy Type: #{x} in Shelf Number: #{index}"}
    
        user_shelf_selection_for_candy_removal = gets.chomp
        user_shelf_selection_for_candy_removal = user_shelf_selection_for_candy_removal.to_s  
        puts "You have selected shelf number #{user_shelf_selection_for_candy_removal}. "
        candy_removal_organization(user_shelf_selection_for_candy_removal)                       
        keep_removing_candy_question #This calls the method that asks the user if they want to keep removing candy     
    
    end 
    #End for remove_candy_from_shelves

end 
#End for Shop class


