class CreateParticipantes < ActiveRecord::Migration
  def change
    create_table :participantes do |t|
      t.string :login
      t.string :senha
      t.string :foto
      t.string :nome
      t.string :cidade
      t.string :estado
      t.string :email
      t.text :descricao

      t.timestamps
    end
  end
end
