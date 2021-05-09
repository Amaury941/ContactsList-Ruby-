Rails.application.routes.draw do

	namespace :contatos do
		get '', to: 'contatos#read_all_contatos'

		#CRUD#
		post 'create_contato', to: 'contatos#create_contato' 
		get 'read_contato/:contato_id', to: 'contatos#read_contato'
		patch 'update_contato/:contato_id', to: 'contatos#update_contato'
		delete 'delete_contato/:contato_id', to: 'contatos#delete_contato'

		get 'find_contato_by_name/:contato_name', to: 'contatos#find_contato_by_name'
	end
end