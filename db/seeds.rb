# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

3.times do
	type = Type.create(name: Faker::Lorem.word)
		4.times do
			q = Question.create(question: Faker::Lorem.sentence, type_id: type.id, position: Faker::Number.digit)
				1.times do
				a = Answer.create(answer: Faker::Lorem.sentence, question_id: q.id)
				end
		end
end

6.times do
	t = Tab.create(name: Faker::Lorem.word, position: Faker::Number.digit)
end


3.times do
	y = Year.create(year: Faker::Number.number(4))
end

5.times do
	c = Country.create(name: Faker::Lorem.word)
	3.times do
		p = Program.create(name: Faker::Lorem.word, country_id: c.id)
	end
end


puts "Seed finished"

puts "#{Country.count} countries created"
puts "#{Program.count} programs created"
puts "#{Tab.count} tabs created"
puts "#{Type.count} types created"
puts "#{Question.count} questions created"
puts "#{Answer.count} answers created"
puts "#{Year.count} years created"
