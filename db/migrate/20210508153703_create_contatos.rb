class CreateContatos < ActiveRecord::Migration[6.1]
  def change
    create_table :contatos do |t|
    	t.string :name
    	t.string :number
    	t.string :email
    	t.string :description
    	
      t.timestamps
    end
  end
end
