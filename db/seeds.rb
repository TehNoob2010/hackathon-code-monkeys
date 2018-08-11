# seed 20 users in the db, half as tutors
default_rating = 3.0

User.create(
  [
    {
      name: 'Nathan',
      email: 's@student.rmit.edu.au',
      s_number: 's', gender: 'male',
      skype_user: "",
    },
    {
      name: 'Abir',
      email: 's3677701@student.rmit.edu.au',
      s_number: 's3677701', gender: 'male',
      skype_user: ""
    },
    {
      name: 'Stephan',
      email: 's@student.rmit.edu.au',
      s_number: 's', gender: 'male',
      skype_user: ""
    },
    {
      name: 'Rob',
      email: 's3433096@student.rmit.edu.au',
      s_number: 's3433096', gender: 'male',
      skype_user: ""
    },
    {
      name: 'TJ',
      email: 's3624473@student.rmit.edu.au',
      s_number: 's3624473', gender: 'male',
      skype_user: ""
    }
  ]
)

Tutor.create(
  [
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 1,
      linkedin_ID: ''
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 2,
      linkedin_ID: ''
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 3,
      linkedin_ID: ''
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 4,
      linkedin_ID: ''
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 5,
      linkedin_ID: ''
    }
  ]
)

Student.create(
  [
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 1
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 2
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 3
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 4
    },
    {
      rating: 5.0,
      rating_count: 100,
      user_id: 5
    }
  ]
)

Course.create(
  [
    {
      name: "history", score: 82, rating: 4.4, rating_count: 100, tutor_id: 1
    },
    {
      name: "physics", score: 80, rating: 3.5, rating_count: 1, tutor_id: 1
    },
    {
      name: "math", score: 77, rating: 3.5, rating_count: 1, tutor_id: 2
    },
    {
      name: "physics", score: 89, rating: 3.5, rating_count: 1, tutor_id: 2
    },
    {
      name: "math", score: 100, rating: 4.8, rating_count: 25, tutor_id: 3
    },
    {
      name: "math", score: 44, rating: 3.5, rating_count: 1, tutor_id: 3
    },
    {
      name: "physics", score: 99, rating: 3.5, rating_count: 1, tutor_id: 3
    },
    {
      name: "history", score: 55, rating: 3.5, rating_count: 1, tutor_id: 4
    },
    {
      name: "math", score: 62, rating: 3.5, rating_count: 1, tutor_id: 4
    },
    {
      name: "math", score: 98, rating: 3.5, rating_count: 1, tutor_id: 5
    },
    {
      name: "history", score: 68, rating: 3.5, rating_count: 1, tutor_id: 5
    }
  ]
)
