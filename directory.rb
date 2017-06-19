student_count = 11
# first list of students

 students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name: "Darth Vader", cohort: :november},
 {name: "Nurse Ratched", cohort: :november},
 {name: "Michael Corleone", cohort: :november},
 {name: "Alex DeLarge", cohort: :november},
 {name: "The Wicked Wich of the West", cohort: :november},
 {name: "Therminator", cohort: :november}, 
 {name: "The Joker", cohort: :november},
 {name: "Joffery Bartheon", cohort: :november},
 {name: "Norman Bates", cohort: :november}
]


def print_header
    puts "The students of Villains Academy"
    puts "-----------------"
end

def print(students)
    students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
print_header
print(students)
print_footer(students)




