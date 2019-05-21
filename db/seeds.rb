# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |i| 
  User.create(first_name: "#{i + 1} first", last_name: "#{i + 1} last")
end 

3.times do |i| 
  Course.create(name: "course #{i + 1}")
end 

# One course and two users: one teacher and one student. 
# 

Enrollment.create(course_id: Course.first.id, user_id: User.first.id, role: "student")


Enrollment.create(course_id: Course.first.id, user_id: User.last.id, role: "teacher")
