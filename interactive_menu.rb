@students = [] # ==> Every method now has acess to this array

def save_students
    #open the file for writing
    file = File.open("students.csv", "w")
    #iterate over the array of students
    @students.each do |student|
        student_data = [student[:name], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    file.close
end

def load_students
   file = File.open("students.csv", "r")
    file.readlines.each do |line|
       name, cohort = line.chomp.split(',')
       @students << {name: name, cohort: cohort.to_sym}
    end
    file.close
    
end

def print_header
    titel = "The students of Villains Academy"
    under_titel = "-----------------"
    puts titel.center(100)
    puts under_titel.center(100)
end

def print_students_list
    
    @students.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]}, From: #{student[:country]}, Hobbie: #{student[:hobbie]} (#{student[:cohort]} cohort)".center(100) if student[:name].length < 12
   
    end
end

def print_footer
    if @students.count.to_i == 1
        puts "Overall, we have #{@students.count} great student".center(100)
   else
        puts "We have #{@students.count} great students".center(100)
    end
end

#nothing happens until we call the methods


def input_students
    # the prock will ask you to "Please enter the #{argument}"
    # call the prock
    puts "Please enter the names, country of birth and hobbies of each student"
    puts "Strat with there name."
    puts "To finish, just hit return a number of times"
    # create an empty array
    
    #get the first name
     name = gets.chomp
        puts "Please enter the students cohort"
        cohort = gets.rstrip
        puts "Add the students country of birth"
        birth = gets.chomp
        puts "Add the students hobbie"
        hobbie = gets.chomp
        
    
    #while the name is not empty, repeat this code
    while !name.empty?  do
        #add the students hash to the array
        if cohort.empty?
            cohort = "Unspecified".to_sym
        end
        @students << {name: name, cohort: cohort, country: birth, hobbie: hobbie}
        
        puts "Please enter the next students details starting with their name"
        name = gets.chomp
        puts "Please enter the students cohort"
        cohort = gets.chomp.to_sym
        puts "Add the students country of birth"
        birth = gets.chomp
        puts "Add the students hobbie"
        hobbie = gets.chomp
        puts "Now we have #{@students.count} students"
        #get another name from the user
        
    end
    # return the array of students
    @students
end

def option_edit(students)
    puts "Did you make a mistake? y/n"
    ans = gets.chomp
    if ans == "no" || ans == "No" || ans == "n" || ans == "N"
        puts "Great see you next time"
    elsif ans == "yes" || ans == "Yes" || ans == "y" || ans == "Y"
        puts "Enter the students name"
        result = gets.chomp
        puts result
        students.each do |student_info| 
            if student_info[:name] == result
                puts "What would you like to change about #{student_info[:name]}'s entry?"
                # pick name, cohort, hobbie or country of birth
                puts "Please type \"n\" to edit the name, \"c\" for cohort, \"b\" for country of birth or \"h\" for hobbie"
                direction = gets.chomp
                    if direction == "n" || direction == "N"
                        puts "Please type the name again"
                        edit = gets.chomp
                        student_info[:name] = edit
                        puts "Thank you the name has been changed to #{student_info[:name]}"
                        puts student_info[:name]
                    elsif direction == "c" || direction == "C"
                        puts "Please type the cohort again"
                        edit = gets.chomp
                        student_info[:cohort] = edit.to_sym
                        puts "Thank you the cohort has been changed to #{student_info[:cohort]}"
                        puts student_info[:cohort]
                    elsif direction == "b" || direction == "B"
                        puts "Please type #{student_info[:name]}'s the country of birth again"
                        edit = gets.chomp
                        student_info[:country] = edit.to_sym
                        puts "Thank you #{student_info[:name]}'s country of birth has been changed to #{student_info[:country]}"
            
                    elsif direction == "h" || direction == "H"
                        puts "Please type the students hobbie again"
                        edit = gets.chomp
                        student_info[:hobbie] = edit.to_sym
                        puts "Thank you #{student_info[:name]}'s hobbie has been changed to #{student_info[:hobbie]}"
                end
            else
                puts "Sorry we could not find that student in our system"
            end
            
    end
    end
end

def interactive_menu
    
    loop do
        print_menu
        process_selection
        
    end
end

def print_menu
     puts "1. Input the students"
     puts "2. Show the students"
     puts "3. Save the list to students.csv"
     puts "4. Load the list from students.cvs"
     puts "9. Exit"
end

def process_selection
        selection = gets.chomp
        case selection
        # 2. Read the input and save it to a variable
        # 3. Do what the user has asked
            when "1"
                input_students
            when  "2"
                show_students
            when "3"
                save_students
            when "4"
                load_students
        # 4. Repeat from step one
            when "9"
                exit
            else
                puts "I don't know what you meant, try again"
                
            end
end

def show_students
     print_header
     print_students_list
     print_footer
end

interactive_menu
=begin
students = input_students
print_header
if students.count >= 1
print(students)
end
print_footer(students)
option_edit(students)
=end