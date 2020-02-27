class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :name
      t.string :email
      t.integer :edad
      t.string :sexo
      t.integer :question1
      t.integer :question2
      t.integer :question3
      t.integer :question4

      t.timestamps
    end
  end
end

