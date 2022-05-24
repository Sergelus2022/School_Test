# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


['Redwood Institute', 'Timber Creek School', 'Forest Lake School of Fine Arts', 'Spring Gardens Technical School', 'East Shores School for Boys', 'Laguna Bay School for Boys', 'Freedom Academy', 'Willow Creek School for Girls', 'Eastview School for Girls', 'South Fork School'].each do |name|
  School.create(name: name)
end

100.times do
  Teacher.create(name: Faker::Name.name, school: School.find(School.pluck(:id).sample), school_year: rand(1975..2022))
end