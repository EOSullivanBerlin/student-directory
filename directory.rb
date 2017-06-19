student_count = 11
# first list of students

 students = [
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Wich of the West",
 "Therminator",
 "The Joker",
 "Joffery Bartheon",
 "Norman Bates"
]


def print_header
    puts "The students of Villains Academy"
    puts "-----------------"
end

def print_students
    students.each do |student|
        puts student
    end
end

def print_footer
puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)




