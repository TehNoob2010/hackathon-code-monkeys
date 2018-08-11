# seed 20 users in the db, half as tutors
default_rating = 3.0

for i in 1..20 do
  User.create(
    [
      {
        name: 'Student_' + "#{i}", email: 's000000' + "#{i}" \
        + '@student.rmit.edu.au', s_number: 's000000' + "#{i}", gender: 'x'
      }
    ]
  )

  Tutor.create(
    [
      {
        rating: default_rating, rating_count: 1, user_id: "#{i}"
      }
    ]
  ) if i < 11

  Student.create(
    [
      {
        rating: default_rating, rating_count: 1, user_id: "#{i}"
      }
    ]
  )
end

Course.create(
  [
    {
      id: 0, name: "history", score: 22, rating: 3.5, rating_count: 1, tutor_id: 1
    }
  ]
)
