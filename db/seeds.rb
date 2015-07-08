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

pr = Project.create(:name => "Shake Shack", :description => "Burgers and shakes")
entr = Entry.new(hours: 1, minutes: 45, date: Time.now, comment: "Ate Shack Burgers")
entr.project = pr
entr.save


pr1 = Project.create(:name => "Moes")
entr = Entry.new(hours: 3, minutes: 33, date: Time.now, comment: "The best burritos ever")
entr.project = pr1
entr.save

pr2 = Project.create(:name => "Chipolte")
entr = Entry.new(hours: 1, minutes: 52, date: Time.now, comment: "The worst burritos ever")
entr.project = pr2
entr.save

pr3 = Project.create(:name => "Lime")
entr = Entry.new(hours: 2, minutes: 23, date: Time.now, comment: "Good Southwestern grill")
entr.project = pr3
entr.save

