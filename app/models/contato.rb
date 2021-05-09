class Contato < ApplicationRecord
	validates :name, presence: true
	validates :number, presence: true

	def self.build_contato(name:, number:, email:, description:)
		Contato.new(name: name, number: number, email: email, description: description)
	end
end