# seed 20 users in the db, half as tutors
default_rating = 3.0

for i in 1..20 do
  User.create(
    [
      {
        name: 'Student_' + "#{i}", email: 's000000' + "#{i}" \
        + '@student.rmit.edu.au', s_number: 's000000' + "#{i}", gender: 'x', \
        skype_user: "skype " + "#{name}",
      }
    ]
  )

  Tutor.create(
    [
      {
        rating: default_rating, rating_count: 1, user_id: "#{i}", \
          linkedin_ID: "linkedin " + "#{i}"
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
      name: "history", score: 22, rating: 3.5, rating_count: 1, tutor_id: 1
    },
    {
      name: "history", score: 80, rating: 3.5, rating_count: 1, tutor_id: 3
    },
    {
      name: "history", score: 55, rating: 3.5, rating_count: 1, tutor_id: 2
    },
    {
      name: "math", score: 89, rating: 3.5, rating_count: 1, tutor_id: 5
    },
    {
      name: "math", score: 60, rating: 3.5, rating_count: 1, tutor_id: 3
    },
    {
      name: "math", score: 44, rating: 3.5, rating_count: 1, tutor_id: 4
    },
    {
      name: "physics", score: 88, rating: 3.5, rating_count: 1, tutor_id: 6
    },
    {
      name: "physics", score: 98, rating: 3.5, rating_count: 1, tutor_id: 8
    },
    {
      name: "physics", score: 68, rating: 3.5, rating_count: 1, tutor_id: 7
    }
  ]
)
