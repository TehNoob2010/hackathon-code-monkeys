# seed 20 users in the db, half as tutors
default_rating = 3.0

for i in 1..20 do
  User.create(
    {
      name: 'Student_' + "#{i}", email: 's000000' + "#{i}" \
      + '@student.rmit.edu.au', s_number: 's000000' + "#{i}", gender: 'x'
    }
  )

  Tutor.create(
    [
      {
        rating: default_rating, user_id: "#{i}", rating_count: 1
      }
    ]
  ) if i < 11

  Student.create(
    [
      {
        rating: default_rating, user_id: "#{i}", rating_count: 1
      }
    ]
  )
end
