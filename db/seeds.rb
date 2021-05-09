# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
	10.times do
		Contato.create({
			name: Faker::Name.name,
			number: Faker::PhoneNumber.cell_phone,
			email: Faker::Internet.email,
			description: Faker::Lorem.paragraph
		})
	end
end