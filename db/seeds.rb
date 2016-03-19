# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'
file = open('db/seeds/instructor.json')
parser = file.read
parsed = JSON.parse(parser)
parsed.each do |instructor|
  first = instructor["first"]
  middle = instructor["middle"]
  last = instructor["last"]
  email = instructor["email"]
  Instructor.create(first: first, middle: middle, last: last, email:email)
end

file = open('db/seeds/subject.json')
parser = file.read
parsed = JSON.parse(parser)
parsed.each do |subject|
  name = subject["name"]
  Subject.create(name: name)
end

file = open('db/seeds/course.json')
parser = file.read
parsed = JSON.parse(parser)
parsed.each do |course|
  name = course["name"]
  code = course["code"]
  Course.create(name: name, code: code)
end
