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
#add then print them

puts "The students of Villains Academy"
puts "-----------------"
students.each do |student|
    puts student
end
# finally we print the total number of students
puts "Overall, we have #{students.count} great students"





