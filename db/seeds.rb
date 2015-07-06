# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Project.create(:name =>"GQ", :description => "Fashion")
Project.create(:name =>"National Geographic", :description => "Awesome travel magazine")
Project.create(:name =>"Surfer", :description => "Best magazine")
Project.create(:name =>"Rock and Ice", :description => "Rock climbing magazine")
Project.create(:name =>"Rodales", :description => "Scuba magazine")
Project.create(:name =>"Economist", :description => "Best econimics magazine")
