# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create([{student_id: 'a1711111', first_name: 'John', last_name: 'Deen', password: 'student', user_type: '0'}])
Student.create([{student_id: 'a1722222', first_name: 'Chris', last_name: 'Roland', password: 'student', user_type: '0'}])
Student.create([{student_id: 'a1733333', first_name: 'James', last_name: 'Kratos', password: 'student', user_type: '0'}])
Student.create([{student_id: 'a1744444', first_name: 'Daniel', last_name: 'Knight', password: 'student', user_type: '0'}])

Staff.create([{staff_id: 'a1710000', first_name: 'Hannah', last_name: 'Montana', user_type: '2'}])
Staff.create([{staff_id: 'a1712222', first_name: 'Angelina', last_name: 'Jolie', user_type: '1'}])
Staff.create([{staff_id: 'a1713333', first_name: 'Morgan', last_name: 'Cresswell', user_type: '1'}])
Staff.create([{staff_id: 'a1714444', first_name: 'Davina', last_name: 'Suarez', user_type: '1'}])

Classes.create([{class_name: 'Advanced Algorithms', class_code: 'COMP_SCI 3310', teacher_name: 'Ian Knight', description: 'something'}])
Classes.create([{class_name: 'Maths IA', class_code: 'MATH 2139', teacher_name: 'Tony Roberts', description: 'Maths and stuff'}])
Classes.create([{class_name: 'Maths IB', class_code: 'MATH 2637', teacher_name: 'Finnaur skrata', description: 'Some more Maths'}])
Classes.create([{class_name: 'Object Orientated Programming', class_code: 'COMP_SCI 3890', teacher_name: 'Cheryl Pope', description: 'Easy class'}])

ClassTimes.create([{class_code: 'COMP_SCI 3310', class_type: 'Workshop', start_time: '1:00', end_time: '2:00', day: 'Wednesday', location: 'WR01', class_size: '10'}])

