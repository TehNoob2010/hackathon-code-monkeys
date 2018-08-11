# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..20 do
  User.create(
    { name: 'Student_' + "#{i}", email: 's000000' + "#{i}" \
      + '@student.rmit.edu.au', s_number: 's000000' + "#{i}", gender: 'x' }
  )
end
