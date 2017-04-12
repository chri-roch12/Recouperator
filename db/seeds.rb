# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

User.create!(
              name: "patient1",
              email: "pat1@mail.com",
              role: "patient",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "patient2",
              email: "pat2@mail.com",
              role: "patient",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "patient3",
              email: "pat3@mail.com",
              role: "patient",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "patient4",
              email: "pat4@mail.com",
              role: "patient",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "clinician1",
              email: "clin1@mail.com",
              role: "clinician",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "clinician2",
              email: "clin2@mail.com",
              role: "clinician",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "clinician3",
              email: "clin3@mail.com",
              role: "clinician",
              password: "123456",
              password_confirmation: "123456"
)
User.create!(
              name: "clinician4",
              email: "clin4@mail.com",
              role: "clinician",
              password: "123456",
              password_confirmation: "123456"
)
