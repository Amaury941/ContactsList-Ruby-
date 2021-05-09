class Contatos::ContatosController < ApplicationController

	def create_contato
		contato = Contato.build_contato(
			name: params[:name],
			number: params[:number],
			email: params[:email],
			description: params[:description]
		)

		contato.save!
	
	render(
		json:{
			data: contato 
		}, 
		status: :ok
		)
	end

	def read_all_contatos
		contatos = Contato.order('created_at DESC')
		render(
			json:{
				status: 'SUCCESS', message: 'contatos carregados', data: contatos
			},
			status: :ok
		)
	end


	def read_contato
		contato = Contato.find_by(id: params[:contato_id])
		render(
			json:{
				status: 'SUCCESS', message: 'contato carregado', data: contato
			},
			status: :ok
		)
	end

	def update_contato
		contato = Contato.find_by(id: params[:contato_id])
		contato.update(
			name: params[:name] || contato.name,
			number: params[:number] || contato.number,
			email: params[:email] || contato.email,
			description: params[:description] || contato.description
		)

	render(
		json:{
			data: contato
		}, 
		status: :ok
		)
	end

	def delete_contato
		Contato.find_by(id: params[:contato_id]).destroy
	end



	def find_contato_by_name
		name = params[:name]

		contato = Contato.find_by(name: params[:contato_name])

		render(json:{data: contato}, status: :ok)
	end
end