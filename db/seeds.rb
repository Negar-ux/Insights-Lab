# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
User.destroy_all
Interview.destroy_all



projects=Project.create! [
                  {name: 'Insights Lab' },
                  {name:'Physical Fitness in Older Adults'},
                ]

users=User.create! [
                     { email: 'basl@gmail.com',
                    password: 'SEP759'},
                     { email: 'test@gmail.com',
                       password: 'testtest'},
             ]

Interview.create! [
                    {title: 'Negar Deilami', date: '2021-03-30', description:'Engineering
                    design student at McMaster University', project_id: projects[0].id, user_id: users[0].id},

                    {title: 'Susan', date: '2021-02-16', description:'Susan has been retired for 3 years. She used to
                    work in sales and now she volunteers as Patient/Family advisor at St. Joseph Hospital ',
                     project_id: projects[1].id, user_id: users[1].id},

                    {title: 'Mike', date: '2021-03-30', description:'Retired business owner',
                    project_id: projects[1].id, user_id: users[1].id},

                    {title: 'Abdel', date: '2021-03-30', description:'Semi-retied construction worker',
                     project_id: projects[1].id, user_id: users[1].id},

                    {title: 'Tess', date: '2021-03-30', description:'highschool teacher',
                    project_id: projects[1].id, user_id: users[1].id},


                    {title: 'Nilou', date: '2021-03-30', description:'Dietitian',
                     project_id: projects[1].id, user_id: users[1].id},
                   ]

#Negar
Note.create!(insight: "Need an UX tool", user_id:User.first.id, interview_id: Interview.first.id)
Note.create!(insight: "My user research is disorganized", user_id:User.first.id, interview_id: Interview.first.id)

#Susan
Note.create!(insight: "she had a high expectation of herself in exercising but after doing it she noticed that ", user_id:User.second.id, interview_id: Interview.second.id)
Note.create!(insight: "Motivation is the biggest barrier to being fit", user_id:User.second.id, interview_id: Interview.second.id)


#Mike
Note.create!(insight: "Routine is what keeps him going", user_id:User.second.id, interview_id: Interview.third.id)
Note.create!(insight: "Motivation is the biggest barrier to being fit", user_id:User.second.id, interview_id: Interview.third.id)

#Abdel
Note.create!(insight: "“I never think of myself as old, it is all about how you think”. He believes that
how you think of your body has a strong influence on how active you are", user_id:User.second.id, interview_id: Interview.fourth.id)
Note.create!(insight: "Motivation is the biggest barrier to being fit", user_id:User.second.id, interview_id: Interview.fourth.id)


# Tess
 Note.create!(insight: "socializing with the same group for a while
seems more enjoyable than meeting with strangers frequently", user_id:User.second.id, interview_id: Interview.fifth.id)
 Note.create!(insight: "“The more you stay inactive, the harder it is to start and turn it into a routine”",
              user_id:User.second.id, interview_id: Interview.fifth.id)

