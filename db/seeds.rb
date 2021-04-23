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
                  {name: 'SEP759-Ruby on Rails' },
                  {name: 'SEP700'},
                  {name:'SEP761'},
                  {name:'SEP760'},
                ]

users=User.create! [{
                      email: 'basl@gmail.com',
                    password: 'SEP759'}
             ]

interviews=Interview.create! [
                    {title: 'Negar Deilami', date: '2021-03-30', description:'Engineering
design student at McMaster University', project_id: projects[0].id, user_id: users[0].id}
                   ]


Note.create![
  {insight: 'For my user research,I always lose track of my interviewees', user_id: users[0].id,
   interview_id: interviews[0].id}
]
