
def print_header
    puts "The students of Villains Academy"
    puts "-----------------"
end

def print(students)
    
    students.each_with_index do |student, index|
        puts "#{index + 1}. #{student[:name]}, From: #{student[:country]}, Hobbie: #{student[:hobbie]} (#{student[:cohort]} cohort)" if student[:name].length < 12
   
    end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods


def input_students
    students = []

  
    # the prock will ask you to "Please enter the #{argument}"
    # call the prock
    puts "Please enter the names, country of birth and hobbies of the student"
    puts "Strat with there name."
    puts "To finish, just hit return a number of times"
    # create an empty array
    
    #get the first name
     name = gets.chomp
    puts "Add the students country of birth"
        birth = gets.chomp
        puts "Add the students hobbie"
        hobbie = gets.chomp
    
    
    #while the name is not empty, repeat this code
    while !name.empty?  do
        #add the students hash to the array
        students << {name: name, cohort: :november, country: birth, hobbie: hobbie}
        puts "Please enter the next students details starting with their name"
        name = gets.chomp
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

students = input_students
print_header
print(students)
print_footer(students)

