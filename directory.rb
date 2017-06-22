
def print_header
    titel = "The students of Villains Academy"
    under_titel = "-----------------"
    puts titel.center(100)
    puts under_titel.center(100)
end

def print(students)
    
    students.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]}, From: #{student[:country]}, Hobbie: #{student[:hobbie]} (#{student[:cohort]} cohort)".center(100) if student[:name].length < 12
   
    end
end

def print_footer(students)
    if students.count.to_i == 1
        puts "Overall, we have #{students.count} great student".center(100)
   else
        puts "We have #{students.count} great students".center(100)
    end
end

#nothing happens until we call the methods


def input_students
    students = []

  
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
        students << {name: name, cohort: cohort, country: birth, hobbie: hobbie}
        
        puts "Please enter the next students details starting with their name"
        name = gets.chomp
        puts "Please enter the students cohort"
        cohort = gets.chomp.to_sym
        puts "Add the students country of birth"
        birth = gets.chomp
        puts "Add the students hobbie"
        hobbie = gets.chomp
        puts "Now we have #{students.count} students"
        #get another name from the user
        
    end
    # return the array of students
    students
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


students = input_students
print_header
print(students)
print_footer(students)
option_edit(students)
